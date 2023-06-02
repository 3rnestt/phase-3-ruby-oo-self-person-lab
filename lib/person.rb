# your code goes here
require 'pry'

class Person 
    attr_accessor :name, :bank_account, :happiness, :hygiene

    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    end

    def happiness=(value)
        @happiness = limit_value(value, 0, 10)
    end

    def hygiene=(value)
        @hygiene = limit_value(value, 0, 10)
    end

    private

    def limit_value(value, min, max)
        if value > max
            max
        elsif value < min
            min
        else
            value
        end
    end


end