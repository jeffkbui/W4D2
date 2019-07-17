class Employee
    attr_reader :name, :title, :salary

    def initialize(name, title, salary)
        @name = name
        @title = title
        @salary = salary
    end
    
    def bonus(multiplier)
        @salary * multiplier
    end
end

class Manager < Employee
    attr_reader :employees

    def initialize(name, title, salary, employees)
        super(name, title, salary)
        @employees = employees
    end

    def manager_bonus(multiplier)
        return 0 if self.employees.empty?
        total_salaries = 0

        self.employees.each do |employee|
            total_salaries += employee.salary + employee.manager_bonus(1)
        end
        total_salaries * multiplier
    end
end


shawna = Employee.new("Shawna", "TA", 12000),
david = Employee.new("David", "TA", 10000),
darren = Manager.new("Darren", "TA Manager", 78000, [shawna, david]),
ned = Manager.new("Ned", "Founder", 1000000, [darren])

p ned.manager_bonus(5)