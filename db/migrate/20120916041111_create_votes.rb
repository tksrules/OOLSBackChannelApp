class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :postid
      t.integer :userid
      t.datetime :votedate

      t.timestamps
    end
  end
end
