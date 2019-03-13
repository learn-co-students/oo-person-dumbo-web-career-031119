class Person
    attr_accessor :bank_account
    attr_reader :name, :hygiene, :happiness

    def initialize(name) 
        @name= name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if (happiness >= 0 && happiness <= 10)
            @happiness = happiness
        elsif happiness > 10 
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            puts "Happiness must be an integer value..."
        end
    end

    def hygiene=(hygiene)
        if (hygiene >= 0 && hygiene <= 10)
            @hygiene = hygiene
        elsif hygiene > 10 
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else 
            puts "Hygiene must be an integer value..."
        end
    end

    def happy?
        @happiness > 7 ? (return true) : (return false)
    end

    def clean?
        @hygiene > 7 ? (return true) : (return false)
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath 
        self.hygiene = @hygiene+4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = @hygiene-3
        self.happiness = @happiness+2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(caller)
        caller.happiness += 3
        self.happiness += 3
        return "Hi #{caller.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        case topic
        when "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end
