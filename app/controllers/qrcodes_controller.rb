class QrcodesController < ApplicationController
  respond_to :json
  PER_PAGE_RECORDS = 3

  def index
    qrcodes_paginated = Qrcode.order('id').page(params[:page]).per(PER_PAGE_RECORDS)

    respond_to do |format|
      format.json { render :json => {:models => qrcodes_paginated, :current_page => params[:page].to_i, :perPage => PER_PAGE_RECORDS, :total_pages => qrcodes_paginated.num_pages } }
    end
  end

  def create
    respond_with Qrcode.create(params[:qrcode])
  end

end
