class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.date :date
      t.string :preview_image
      t.text :title
      t.text :body
      t.text :preview_text

      t.timestamps
    end
  end
end
