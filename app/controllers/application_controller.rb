class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_layout_variables

  def set_layout_variables
    @sitename = "Philnoug/&/Partners"
    @sitename_short = "P/&/P Portfolio"
    @themes = ["light", "dark", "cupcake", "bumblebee", "emerald", "corporate", "synthwave", "retro", "cyberpunk", "valentine", "halloween", "garden", "forest", "aqua", "lofi", "pastel", "fantasy", "wireframe", "black", "luxury", "dracula", "cmyk", "autumn", "business", "acid", "lemonade", "night", "coffee", "winter"]
  end
end
