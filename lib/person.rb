require 'pry'

class Person
  attr_reader :name
  attr_accessor :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
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
    "all about the benjamins"
    @bank_account
  end

  def take_bath
    @hygiene += 4

    if @hygiene > 10
      @hygiene = 10
    end

    "♪ Rub-a-dub just relaxing in the tub ♫"

  end

  def work_out
    @happiness += 2
    @hygiene -= 3

    if @happiness > 10
      @happiness = 10
    end

    if @hygiene < 0
      @hygiene = 0
    end

    "♪ another one bites the dust ♫"

  end

    def happier(num)
      @happiness += num
      if @happiness > 10
        @happiness = 10
      end
    end

    def sadder(num)
      @happiness -= num
      if @happiness < 0
        @happiness = 0
      end
    end

    def call_friend(friend)
      self.happier(3)
      friend.happier(3)
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
          self.sadder(2)
          friend.sadder(2)
          "blah blah partisan blah lobbyist"
        elsif topic == "weather"
          self.happier(1)
          friend.happier(1)
          "blah blah sun blah rain"
        else
          @happiness
          "blah blah blah blah blah"
        end
    end
binding.pry
end
