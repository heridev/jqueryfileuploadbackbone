class AddAttachmentImageToQrcodes < ActiveRecord::Migration
  def self.up
    change_table :qrcodes do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :qrcodes, :image
  end
end
