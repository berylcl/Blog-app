class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :author, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.text :text
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
