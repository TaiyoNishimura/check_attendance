class Subject < ApplicationRecord
  def return_attendances
    return Attendance.where(subject_name: self.name)
  end

  def return_day_of_the_week
    if self.day_of_the_week == 1
      return "月"
    elsif self.day_of_the_week == 2
      return "火"
    elsif self.day_of_the_week == 3
      return "水"
    elsif self.day_of_the_week == 4
      return "木"
    elsif self.day_of_the_week == 5
      return "金"
    end
  end
end
