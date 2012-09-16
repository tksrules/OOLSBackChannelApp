class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :parentpostid
      t.string :owner
      t.string :category
      t.integer :voteid
      t.text :content

      t.timestamps
    end
  end
end
