class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :title
      t.text :body
      t.references :user, null: false, foreign_key: false

      t.timestamps
    end
  end
end
