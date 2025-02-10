module MangaTracker
  class MangaUpdateJob < ApplicationJob
    queue_as :manga_tracker

    def perform(*args)
      chapters = []
      MangaTracker::Manga.all.each do |manga|
        request = Faraday.get(manga.feed_source)
        feed = Nokogiri::XML(request.body)
        feed.xpath("//item").first.tap do |item|
          title = item.at_xpath("title").text
          description = item.at_xpath("description").text
          chapter_title = "#{title} - #{description}"

          if MangaTracker::Chapter.find_by(title: chapter_title).blank?
            chapters << manga.chapters.create(title: "#{title} - #{description}")
          end
        end
      end

      http_client = Faraday.new(url: ENV.fetch("MANGA_TRACKER_DISCORD_WEBHOOK_URL")) do |faraday|
                      faraday.response :logger
                    end
      if chapters.present?
        http_client.post do |request|
          request.headers = { "Content-Type": "application/json" }
          request.body = {
            embeds: [
              {
                type: "rich",
                title: "New chapters",
                description: chapters.map(&:title).join("\n"),
                color: 1752220
              }
            ]
          }.to_json
        end
      end
    end
  end
end
