class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.belongs_to :city, foreign_key: true
      t.string :email
      t.string :image_url

      t.timestamps
    end
  end
end
