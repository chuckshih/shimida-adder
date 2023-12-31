require_relative "boot"
require "rails/all"

# 載入Gemfile中列出的所有gem，包括在:development、:test、:production環境下限制的gem。
Bundler.require(*Rails.groups)

module BookieWoofie
  class Application < Rails::Application
    # 初始化Rails應用程式的默認配置。
    config.load_defaults 7.1

    # 請在 `ignore` 列表中添加其他 `lib` 子目錄，這些目錄不包含 `.rb` 文件，
    # 或者不應該被重新載入或急載入。通常的例子包括 `templates`、`generators`、
    # 或者 `middleware`。
    config.autoload_paths << Rails.root.join("lib") # 添加這行以修正自動載入

    # 設置CSRF保護為關閉，僅限開發和測試環境下使用，生產環境應保持啟用。
    config.action_controller.default_protect_from_forgery = false

    # 在這裡進行應用程式、引擎和railties的配置。
    #
    # 這些設置可以在特定環境中使用config/environments中的文件進行覆蓋，
    # 這些文件稍後會被處理。
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
