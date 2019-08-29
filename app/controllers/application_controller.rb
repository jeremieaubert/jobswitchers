class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_foundprivate

  def
  record_not_found
  redirect_to '/errors#index'
  end
end
