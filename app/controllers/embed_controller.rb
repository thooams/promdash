class EmbedController < ApplicationController
  before_action :set_dashboard_via_slug, only: :show

  def show
    response.headers['Access-Control-Allow-Origin'] = '*'
    @servers = Server.all
    render layout: 'single_widget'
  end
end
