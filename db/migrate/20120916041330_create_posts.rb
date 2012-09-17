class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.column :parent_id, :integer
      t.references :user
      t.references :category
      t.timestamps
    end
  end
end