class BabysitterCalculator
  def initialize(start_time, end_of_job, bed_time) 
    @start_time = start_time
    @end_of_job = end_of_job
    @bed_time = bed_time
  end

  def calculate_pay 
    hours_worked_before_bedtime = @bed_time - @start_time 
    hours_worked_after_bedtime = @end_of_job - @bed_time

    pay_before_bedtime = hours_worked_before_bedtime * 12
    pay_after_bedtime = hours_worked_after_bedtime * 8

    total_pay = pay_before_bedtime + pay_after_bedtime
  end
end