class CreateManifestos < ActiveRecord::Migration
  def change
    create_table :manifestos do |t|
      t.text :content
      t.datetime :create_date
      t.integer :human_id

      t.timestamps null: false
    end
  end
end
