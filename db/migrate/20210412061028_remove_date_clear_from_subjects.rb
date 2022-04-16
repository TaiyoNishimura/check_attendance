class RemoveDateClearFromSubjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :subjects,:date,:date
    remove_column :subjects,:clear,:integer
  end
end
