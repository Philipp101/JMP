class CreateArts < ActiveRecord::Migration[6.0]
  def change
    create_table :arts do |t|
      t.string :title
      t.float :price
      t.boolean :sold
      t.text :description
      t.date :publication

      t.timestamps
    end
  end
end
