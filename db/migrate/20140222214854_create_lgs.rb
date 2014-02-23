class CreateLgs < ActiveRecord::Migration
  def change
    create_table :lgs do |t|
      t.string :services
      t.string :imei
      t.string :response_email
      t.string :text_alert
      t.references :user, index: true

      t.timestamps
    end
  end
end
