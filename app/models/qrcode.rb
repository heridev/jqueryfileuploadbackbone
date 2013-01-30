class Qrcode < ActiveRecord::Base
  attr_accessible :description, :image
  has_attached_file :image,
    :url => '/system/qrcodes/:filename' 
end
