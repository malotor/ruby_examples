class CreditCard
    attr_reader :number, :holder, :expiration_date

    # constructor method
    def initialize(number,holder,expiration_date)
      @number = number
      @holder = holder
      @expiration_date = expiration_date
    end

    def aPrivateMethod
      puts "I´m a private method"
    end
    private :aPrivateMethod

end
