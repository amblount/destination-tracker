class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.belongs_to :city, index: true
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
