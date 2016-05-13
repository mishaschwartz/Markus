class CreatePeerReviews < ActiveRecord::Migration
  def change
    create_table :peer_reviews do |t|
      t.references :result, index: true, foreign_key: true, null: false
      t.integer :reviewer_id, null: false
      t.integer :reviewee_id, null: false
      t.timestamps null: false
    end
    add_index :peer_reviews, :reviewer_id
    add_index :peer_reviews, :reviewee_id
  end
end
