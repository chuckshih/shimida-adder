class CasualController < ApplicationController
  # 控制器內容

  # 這個方法用於將訊息翻譯成韓文風格的文字
  #
  # @param message [String] 要翻譯的訊息
  # @return [void]
  def translate_korean
    # 從請求參數中獲取 message
    message = params[:message]
    # 在訊息後面加上 "斯米達~~" 以翻譯成韓文風格的文字
    @translated_message = "#{message}斯米達~~"

    # 如果訊息為空或僅包含空格，則設定默認翻譯結果
    if message.blank? || message.strip.empty?
      @translated_message = '請輸入一個有效的訊息'
    end
  end


  # 其他控制器方法...

end
