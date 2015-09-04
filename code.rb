module PartyGoer
  
  def drink
    true
  end

  def sing
    "siiingiiiing"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  def invited?
    true
  end

end

class PersonalizedHavocError < StandardError
end


class Launcher
  include PartyGoer
  extend PartyGoer

  def initialize
    @drink_count = 0
  end

  attr_accessor :drink_count

  def drink
    @drink_count += 1
    if @drink_count < 3
      super
    else
      false
    end
  end

end
