class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :authenticate_user!
  protect_from_forgery prepend: true

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
