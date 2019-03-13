class Person
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @hygiene= 8
    @happiness= 8
    @bank_account = 25

  end

  def happiness=(happiness)
    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    else
      @happiness = happiness
    end
  end
  # def bank_account
  #   @bank_account = 25
  # end
  #
  def hygiene=(hygiene)
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else
      @hygiene = hygiene
    end
  end

  def happy?
   @happiness > 7 ? (return true):(return false)
  end

  def clean?
    @hygiene > 7 ? (return true):(return false)
end

def get_paid(salary)
  @bank_account += salary
  "all about the benjamins"
end

def take_bath
  self.hygiene = @hygiene += 4

  "♪ Rub-a-dub just relaxing in the tub ♫"

end

def work_out
  self.hygiene -= 3
  self.happiness += 2
  "♪ another one bites the dust ♫"
end

def call_friend(friend)
self.happiness  += 3
friend.happiness  +=3
"Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)

if topic === "politics"
  self.happiness -= 2
  person.happiness -= 2

 return "blah blah partisan blah lobbyist"
end
if topic === "weather"
  self.happiness += 1
  person.happiness += 1
   return "blah blah sun blah rain"
   end

  return "blah blah blah blah blah"


end


end
