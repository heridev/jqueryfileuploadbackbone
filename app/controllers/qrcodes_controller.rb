class QrcodesController < ApplicationController
  respond_to :json

  def index
  end

  def create
    respond_with Qrcode.create(params[:qrcode])
  end
end
