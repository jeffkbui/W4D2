class Employee
  attr_reader :name, :salary
  def initialize(name, title, salary, boss=nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    bonus = salary * multiplier
  end

end

class Manager < Employee
  attr_accessor :my_employees
  def initialize(name, title, salary, boss=nil, my_employees=[])
    super(name, title, salary, boss=nil)
    @my_employees = my_employees
  end

  def assign_employees(name, title, salary, boss)
    employee_instance = (Employee.new(name, title, salary, self.name))
    my_employees << employee_instance
  end

  def bonus(multiplier)
    total_sals_employees = @my_employees.inject(0) {|acc, employee_instance| acc + employee_instance.salary}
    bonus = total_sals_employees * multiplier
  end


end