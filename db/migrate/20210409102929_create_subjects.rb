class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :day_of_the_week
      t.integer :period

      t.timestamps
    end
  end
end
