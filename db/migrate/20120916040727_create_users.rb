class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :unityid
      t.string :password
      t.string :role

      t.timestamps
    end
  end
end
