class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
      t.string :name1
      t.string :name2
      t.integer :frequency

      t.timestamps
    end
  end
end
