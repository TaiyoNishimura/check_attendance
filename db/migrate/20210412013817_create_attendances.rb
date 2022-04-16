class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.date :date
      t.string :class_name
      t.integer :attendance

      t.timestamps
    end
  end
end
