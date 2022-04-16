class AttendanceController < ApplicationController
  def index
    @subjects = Subject.all.order(:day_of_the_week,:period)
  end

  def set
    
  end

  def create
    require "date"
    @subject = Subject.new(
      name: params[:subject_name],
      day_of_the_week: params[:day_of_the_week].to_i,
      period: params[:period].to_i
      )
    @subject.save
      
    index = 0
    while index <= 14
      @attendance = Attendance.new(
        date: Date.parse(params[:first_date]).since(index.week),
        subject_name: params[:subject_name],
        clear: 0
      )
      @attendance.save
      index += 1
    end
    redirect_to("/")
  end
  
  def destroy
    subject = Subject.find_by(id: params[:id])
    @attendances = subject.return_attendances
    @attendances.each do |attendance|
      attendance.destroy
    end
    subject.destroy
    redirect_to("/")
  end

  def clear
    @attendance = Attendance.find_by(id: params[:id])
    @attendance.clear = 1
    @attendance.save
    redirect_to("/")
  end

  def cancel
    @attendance = Attendance.find_by(id: params[:id])
    @attendance.clear = 0
    @attendance.save
    redirect_to("/")
  end
end
