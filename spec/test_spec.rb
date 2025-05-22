require 'spec_helper'
require_relative '../babysitter_calculator'

RSpec.describe 'BabysitterCalculator' do
  let(:calculator) { BabysitterCalculator.new(start_time, end_of_job, bed_time) }
  context 'when the babysitter works for 1 hour' do
    let(:start_time) { 17 }
    let(:end_of_job) { 18 }
    let(:bed_time) { 18 }
    it 'pays $12 an hour from start time to bedtime ' do
      value = calculator.calculate_pay
      expect(value).to eq(12)
    end
  end
  
  context 'when the babysitter works for 1 hour before bedtime and 1 hour after bedtime' do
    let(:start_time) { 17 }
    let(:end_of_job) { 19 }
    let(:bed_time) { 18 }
    it 'pays $12 an hour from start time to bedtime and $8 an hour after bedtime' do
      value = calculator.calculate_pay
      expect(value).to eq(20)
    end
  end
end
