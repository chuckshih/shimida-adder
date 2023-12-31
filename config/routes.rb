Rails.application.routes.draw do
  # 定義一個 GET 路由，用於回應到 "/up" 路徑，並指向 "rails/health#show" 控制器的 "show" 方法，
  # 同時命名為 "rails_health_check"。
  get "up" => "rails/health#show", as: :rails_health_check

  # 定義一個 GET 路由和一個 POST 路由，都指向 "casual" 控制器的 "translate_korean" 方法，
  # 用於回應到 "/casual/translate" 路徑。
  get 'casual/translate', to: 'casual#translate', as: :casual_translate  #GET路由用於顯示初始頁面
  post 'casual/translate', to: 'casual#translate_korean'  #POST路由用於處理提交的表單

  get 'casual/result', to: 'casual#result' # 顯示翻譯結果的動作

  # 你可以在這裡添加其他的路由規則...

  # 定義應用程式的根路徑 ("/") 的示例路由，使用 "root" 方法來指定要呈現的控制器和動作。
  # 在這個示例中，它設定為呈現 "posts" 控制器中的 "index" 方法。
  # 如果你有一個首頁，你可以使用這個方法來指定它。
  # root "posts#index"
end
