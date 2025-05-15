require 'spec_helper'
require_relative '../babysitter_calculator'

RSpec.describe 'BabysitterCalculator' do
  let(:start_time) { Time.new(2025, 5, 15, 17, 0, 0) }
  let(:end_of_job) { Time.new(2025, 5, 15, 17, 0, 0) }
  let(:bed_time) { Time.new(2025, 5, 15, 17, 0, 0) }
  let(:calculator) { BabysitterCalculator.new(start_time, end_of_job, bed_time) }
  it 'pays $12 an hour from start time to bedtime ' do
    value = calculator.calculate_pay
    expect(value).to eq(12)
  end
end
