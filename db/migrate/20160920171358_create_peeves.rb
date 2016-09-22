class CreatePeeves < ActiveRecord::Migration
  def change
    create_table :peeves do |t|
      t.text :peeve_content
      t.datetime :create_date
      t.integer :human_id
    end
  end
end
