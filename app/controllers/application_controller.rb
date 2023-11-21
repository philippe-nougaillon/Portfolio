class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_layout_variables

  def set_layout_variables
    @sitename = "Philnoug Consulting"
  end
end
