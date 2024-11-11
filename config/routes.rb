Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # 映画一覧ページのルーティング
  get '/movies', to: 'movies#index'

  # ルートページも映画一覧を表示する
  root "movies#index"  # この行を追加
end
