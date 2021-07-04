# your code goes here
require ‘pry’
class Person

attr_reader :name

attr_accessor :bank_account, :happiness, :hygiene

def initialize(name)
   @name = name
   @happiness = 8
   @hygiene = 8
   @bank_account = 25
end

def happiness
   @happiness.clamp(0, 10)

end

def hygiene
   @hygiene.clamp(0, 10)
end

def happy?
   if @happiness > 7
       return true
   else false
   end
end

def clean?
   if @hygiene > 7
       return true
   else false
   end
end



#Accept salary and add to bank account.
#Return “all about the benjamins”
   def get_paid(salary)
       @bank_account += salary
       return “all about the benjamins”
   end

#Should += 4 => @clean
#return “♪ Rub-a-dub just relaxing in the tub ♫”
   def take_bath
       self.hygiene += 4
       return “♪ Rub-a-dub just relaxing in the tub ♫”
   end

# +=2 => @happy , -=3  => @clean
#return “♪ another one bites the dust ♫”
   def work_out
       self.hygiene -= 3
       self.happiness += 2
       return “♪ another one bites the dust ♫”
   end

   def call_friend(name)
       self.happiness += 3
       name.happiness += 3

           return “Hi #{name.name}! It’s #{self.name}. How are you?”

   end

   def start_conversation(name, topic)

       if topic == “politics”
           self.happiness -= 2
           name.happiness -= 2
           return “blah blah partisan blah lobbyist”

       elsif topic == “weather”
           self.happiness += 1
           name.happiness += 1
           return “blah blah sun blah rain”
       else
           return “blah blah blah blah blah”


       end
   end


end

felix = Person.new(“Felix”)
penelope = Person.new(“Penelope”)