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

  context 'when bedtime is before midnight' do
    let(:start_time) { 23 }
    let(:end_of_job) { 24 }
    let(:bed_time) { 23 }

    it 'it pays $8 between bedtime and midnight' do
      value = calculator.calculate_pay
      expect(value).to eq(8)
    end
  end

  context 'when bedtime is after midnight' do
    let(:start_time) { 0 }
    let(:end_of_job) { 1 }
    let(:bed_time) { 1 }
    it 'it pays $16 between midnight to end of job ' do
      value = calculator.calculate_pay
      expect(value).to eq(16)
    end
  end

  context 'when start time is before midnight and bedtime is after midnight' do
    let(:start_time) { 23 }
    let(:end_of_job) { 1 }
    let(:bed_time) { 1 }
    it 'it pays a start time rate and midnight rate' do
      value = calculator.calculate_pay
      expect(value).to eq(28)
    end
  end
end
