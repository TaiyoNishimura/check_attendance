class SubjectsDateClear < ActiveRecord::Migration[5.2]
  def change
    add_column :subjects,:date,:date
    add_column :subjects,:clear,:integer
  end
end
