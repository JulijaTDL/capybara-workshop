class Element
  def initialize(type, value)
    @value = Hash[:type => type, :value => value]
  end

  def find
    Capybara.find(@value[:type], @value[:value])
  end

  def visible?
    find.visible?
  end

<<<<<<< HEAD
=======
  def isVisible
    unless visible?
      raise "element not visible"
    end
  end

>>>>>>> 025eb971f841a1807699761f0db7c9efa204e44e
  def click
    find.click
  end

  def send_keys(value)
    find.send_keys value
  end
<<<<<<< HEAD
end
=======

  def clear
    find.native.clear
  end
end
>>>>>>> 025eb971f841a1807699761f0db7c9efa204e44e
