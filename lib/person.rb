require 'pry'
# your code goes here

class Person 

    attr_reader :name
    attr_accessor :happiness, :bank_account, :hygiene 
    

    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    end

    def happiness
        @happiness.clamp(0, 10)
    end

    def hygiene
        @hygiene.clamp(0,10)
    end 


    def clean?
        @hygiene > 7  
    end

    def happy?
        @happiness > 7
    end
    
    def get_paid(salary)
        @bank_account += salary
        return 'all about the benjamins'
    end

    def take_bath
        self.hygiene +=4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness -= 2
            self.happiness -= 2
           "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end


emmanuel_rodriguez = Person.new("Emmanuel")
jordan_rivera = Person.new("Jordan")









