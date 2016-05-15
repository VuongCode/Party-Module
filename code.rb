module PartyGoer
  #YOUR CODE GOES HERE
  attr_accessor :count
  def initialize
    @count = 0
  end

  def drink
    @count += 1
    if @count >= 3
      false
    else
      true
    end
  end

  def sing
    "Strawberry Fields Forever"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  def self.included(stuff)
    stuff.extend(Methods)
  end

  module Methods
    def invited?
      true
    end
  end
end

class PersonalizedHavocError < StandardError
end
