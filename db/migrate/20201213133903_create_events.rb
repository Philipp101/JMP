class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date_start
      t.datetime :date_end
      t.text :description

      t.timestamps
    end
  end
end
