require 'spec_helper'
require_relative '../human'
require 'pry'

RSpec.describe Human do  
  let!(:human) { Human.new }
  describe '#generate_salary ' do 
   it "calculate average salary" do 
    expect(human.generate_salaries).to all(be_an(Integer))
   end

  end

 describe 'average_salary' do
  before do
    allow_any_instance_of(Human).to receive(:generate_salaries).and_return([0,2,4,6,8,10])
  end

  it 'return average number of salary' do
    expect(described_class.new.average_salary).to eq 5
  end
 end
end
 