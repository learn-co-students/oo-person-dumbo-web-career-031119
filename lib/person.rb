# your code goes here
require 'pry'

class Person

  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  # @@bank_account = 25

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    # binding.pry
  end

  def happiness=(num)
    if num > 10
      @happiness = 10
    elsif num < 0
      @happiness = 0
    else
      @happiness = num
    end
  end

  def hygiene=(hygiene_index)
    if hygiene_index > 10
      @hygiene = 10
    elsif hygiene_index < 0
      @hygiene = 0
    else
      @hygiene = hygiene_index
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend_obj)
    friend_obj.happiness += 3
    self.happiness += 3
    "Hi #{friend_obj.name}! It's #{@name}. How are you?"
  end

  def start_conversation(friend_obj, topic)
    if topic == "politics"
      self.happiness -= 2
      friend_obj.happiness -= 2
        "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend_obj.happiness += 1
       "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end


end
