# your code goes here
require 'pry'
class Person
  attr_accessor :bank_account

  attr_reader :name, :happiness, :hygiene

  def clamps(value)
    if value > 10
      value = 10
    elsif value < 0
      value = 0
    end
    value
  end

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(new_happiness)
    @happiness = clamps(new_happiness)
  end

  def hygiene=(new_hygiene)
    @hygiene = clamps(new_hygiene)
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary_amount)
    @bank_account += salary_amount
    'all about the benjamins'
  end

  def take_bath
    # @hygiene += 4
    # binding.pry
    self.hygiene += 4
    song = '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    '♪ another one bites the dust ♫'
  end

  def in_call
    self.happiness += 3
  end

  def call_friend(friend)
    in_call
    friend.in_call
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(_friend, topic)
    if topic == 'politics'
        self.happiness -= 2
        _friend.happiness -= 2
        'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
        self.happiness += 1
        _friend.happiness += 1
        'blah blah sun blah rain'
    else
        'blah blah blah blah blah'
    end
  end
end
