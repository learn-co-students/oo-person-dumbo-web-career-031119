# your code goes here
class Person

  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happy_points)
    if happy_points > 10
      @happiness = 10
    elsif happy_points < 0
      @happiness = 0
    else
      @happiness = happy_points
    end
  end

  def hygiene=(hygiene_points)
    if hygiene_points > 10
      @hygiene = 10
    elsif hygiene_points < 0
      @hygiene = 0
    else
      @hygiene = hygiene_points
    end

  end

  def happy?
    @happiness > 7
    # if @happiness > 7
    #   return true
    # else
    #   return false
    # end
  end

  def clean?
    @hygiene > 7
    # if @hygiene > 7
    #   return true
    # else
    #   return false
    # end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(instance)
    self.happiness += 3
    instance.happiness += 3
    "Hi #{instance.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    # if topic == "politics"
    #   self.happiness -= 2
    #   person.happiness -= 2
    #   return "blah blah partisan blah lobbyist"
    # elsif topic == "weather"
    #   self.happiness += 1
    #   person.happiness += 1
    #   return "blah blah sun blah rain"
    # else
    #   return "blah blah blah blah blah"
    # end

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

danny = Person.new("danny")
danko = Person.new("danko")
p danny.start_conversation(danko, "politics")
p danny.get_paid(2000)
p danko.get_paid(100000)
p danko.bank_account
p danny.bank_account
