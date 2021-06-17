# 3. Create a module which when added should add a class method in the Company class created above

module Building
    def TowerName
        return 'A'
    end
end


class Company
    include Building
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
puts division1.TowerName
