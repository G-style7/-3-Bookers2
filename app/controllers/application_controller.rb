class ApplicationController < ActionController::Base
 
 
 before_action :configure_permitted_parameters, if: :devise_controller?
 # devise利用の機能（ユーザ登録、ログイン認証など）が使われる前にconfigure_permitted_parametersメソッドが実行されます
 #deviseではデフォルトでUserがログインする際にはメールアドレスとパスワードのみをストロングパラメーターで取得するようになっているため、その他も追加できるよう設定するため

  def after_sign_in_path_for(resource)
   user_path(resource)
  end

  def after_sign_out_path_for(resource)
   root_path
  end

 protected

 def configure_permitted_parameters
  # devise_parameter_sanitizer.permitメソッドを使うことでユーザー登録(sign_up)の際に、ユーザー名(name)のデータ操作を許可しています
  devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
 end
end

