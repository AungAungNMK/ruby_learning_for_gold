require 'thread'

class BankAccount
    def initialize(name,checking,saving)
        @name,@saving,@checking = name,saving,checking
        @lock = Mutex.new
    end
    def transfer_from_saving(x)
        @lock.synchronize {
            @saving -= x
            @checking += x
        }
    end
    def report 
        @lock.synchronize {
            "Name: #@name\nChecking: #@checking \nSaving: #@saving"
        }
    end
end
b = BankAccount.new("aung",100000,12000)
puts b.report
puts b.transfer_from_saving(10000)