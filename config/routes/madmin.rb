# Below are the routes for madmin
namespace :madmin do
  namespace :manga_tracker do
    namespace :manga_tracker do
      resources :mangas
    end
  end
  root to: "dashboard#show"
end
