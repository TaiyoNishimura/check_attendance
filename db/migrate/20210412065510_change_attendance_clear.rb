class ChangeAttendanceClear < ActiveRecord::Migration[5.2]
  def change
    remove_column :attendances,:attendance,:integer
    add_column :attendances,:clear,:integer
  end
end
