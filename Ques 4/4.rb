# 4. Create separate sub classes for Product and Services section of the same Company class created above and add their 
# separate high level methods (eg: For product, what should be the revenue generating factor, similar with services.  
# Example given is for understanding. Methods with different purpose would be welcome as well)


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

class Product < Company
    def revenue
        return "2-3 cr"
    end
    
    def previousProducts
        return ["GoApp", "Foodii", "Tangle"]
    end

    def clientName
        return "Infosys"
    end
end

class Service < Company
    def productsUsing
        return ["Oracle", "AWS", "iCloud"]
    end

end


prod = Product.new('IT', 50, '30k')
puts "#{prod.getDivison}, #{prod.getNoOfEmployees}, #{prod.previousProducts}, #{prod.clientName}"

service = Service.new('IT', 50, '30k')
puts "#{service.getDivison}, #{service.getNoOfEmployees}, #{service.productsUsing}"
