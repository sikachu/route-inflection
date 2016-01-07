class CreateStaff < ActiveRecord::Migration
  def change
    create_table :staff do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
