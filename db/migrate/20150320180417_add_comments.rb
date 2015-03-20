class AddComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.string :name
      t.integer :post_id
      t.timestamps
    end
  end
end
