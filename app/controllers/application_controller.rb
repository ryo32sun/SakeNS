class ApplicationController < ActionController::Base
  before_action :authenticate_admin!, if: :admin_url 

  # 管理者以外のアクセス制限
  def admin_url
    request.fullpath.include?("/admin")
  end
  
  # ログイン前のアクセス制限
  def autheniticate_customer
    if current_customer == nil
      redirect_to("/customers/sign_in")
    end
  end
  
end
