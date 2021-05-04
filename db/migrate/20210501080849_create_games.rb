class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name,       null: false
      t.text :info,         null: false
      t.text :good,         null: false
      t.text :bad,          null: false
      t.integer :review_id, null: false
      t.references :user,   foreign_key: true
      t.timestamps
    end
  end
end
