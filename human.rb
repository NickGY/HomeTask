
class Human
  attr_accessor :salaries 
  def initialize
    @salaries = generate_salaries
  end

  def generate_salaries
    salaries = []
    6.times { salaries << rand(1000..2000) }
    salaries
  end
  
  def average_salary
    average_salary = salaries.sum / salaries.size.to_f
  end
end


