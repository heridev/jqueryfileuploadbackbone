class CreateQrcodes < ActiveRecord::Migration
  def change
    create_table :qrcodes do |t|
      t.string :description

      t.timestamps
    end
  end
end
