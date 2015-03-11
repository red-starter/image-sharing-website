class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :description
      t.string :name

      t.timestamps null: false
    end
  end
end
