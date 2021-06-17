# 2. Write a class in ruby which represents a Company. Add constructors, high level private and public methods which 
# suit the company chores (eg: divisions in the company, number of employees in each division etc)


class Company
    def initialize(division, employees, sal)
        @division, @no_of_employees, @basic_salary = division, employees, sal
    end

    def getDivison
        return @division
    end

    def getNoOfEmployees
        return @no_of_employees
    end

    def getSalary
        return fetchSalary
    end
    
    private
    def fetchSalary
        return @basic_salary
    end
end

division1 = Company.new('IT', 50, '30k')
division2 = Company.new('Marketing', 20, '30k')
division3 = Company.new('Finance', 10, '30k')
division4 = Company.new('Human Resource', 5, '30k')

puts "#{division1.getDivison}  #{division1.getNoOfEmployees} #{division1.getSalary}"
puts "#{division2.getDivison}  #{division2.getNoOfEmployees} #{division2.getSalary}"
puts "#{division3.getDivison}  #{division3.getNoOfEmployees} #{division3.getSalary}"
puts "#{division4.getDivison}  #{division4.getNoOfEmployees} #{division4.getSalary}"
