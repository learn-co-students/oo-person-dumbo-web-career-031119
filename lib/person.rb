# your code goes here

require'pry'

class Person

attr_accessor :bank_account, :happiness, :hygiene
attr_reader :name

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

def happiness(new_happiness)
  @happiness = new_happiness
  @happiness = 10 if @happiness > 10
  @happiness = 0 if @happiness < 0 
end

def hygiene(new_hygiene)
  @hygiene = new_hygiene
  @hygiene = 10 if @happiness > 10 
  @hygiene = 10 if @happiness < 0 
end 


def clean?
 if @hygiene > 7
   true
 else
   false
 end
end

def happy?
 if @happiness > 7
   true
 else
   false
 end
end

def get_paid(salary)
  @bank_account += salary
  return "all about the benjamins"
end


def take_bath
 self.hygiene += 4
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
 return "Hi #{friend.name}! it's #{@name}. How are you?"
end

def start_conversation(friend,topic)
 if topic == "politics"
   friend.happiness -= 1
   self.happiness -= 1
   return "blah blah partisan blah lobbyist"
 elsif topic == "weather"
   friend.happiness += 1
   self.happiness += 1
   return "blah blah sun blah rain"
 else
   return"blah blah blah blah blah"
 end
end

end 



