class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.text :body

      t.timestamps null: false
    end
  end
end
