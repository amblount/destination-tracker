class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.belongs_to :city, index: true
      t.string :email
      t.string :image_url

      t.timestamps
    end
  end
end
