class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.user :belongs_to
      t.city :belongs_to
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
