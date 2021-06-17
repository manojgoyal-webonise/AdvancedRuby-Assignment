# 5. Write a method in Company class which reads a csv file containing employee details (name, age, designation etc)

require 'csv'

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

    def readEmployeeData
        CSV.foreach("Employee Data/#{@division}EmployeeData.csv") do |row|
            print row, "\n"
        end
    end
    
    private
    def fetchSalary
        return @basic_salary
    end
end


division1 = Company.new('IT', 50, '30k')
division2 = Company.new('Marketing', 20, '30k')
division3 = Company.new('Finance', 10, '30k')
division4 = Company.new('HumanResource', 5, '30k')

puts "#{division1.getDivison}  #{division1.getNoOfEmployees} #{division1.getSalary}"
division1.readEmployeeData
