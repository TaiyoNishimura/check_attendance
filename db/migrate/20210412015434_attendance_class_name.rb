class AttendanceClassName < ActiveRecord::Migration[5.2]
  def change
    remove_column :attendances,:class_name,:string
    add_column :attendances,:subject_name,:string
  end
end
