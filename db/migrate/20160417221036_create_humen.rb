class CreateHumen < ActiveRecord::Migration
  def change
    create_table :humen do |t|
      t.string :name
      t.string :email
      t.integer :height

      t.timestamps null: false
    end
  end
end
