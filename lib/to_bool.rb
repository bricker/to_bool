class String
  def to_bool
    %w{ 1 true yes t y }.include? self.downcase
  end

  alias to_boolean to_bool
end

class Integer
  def to_bool
    self == 1
  end

  alias to_boolean to_bool
end


class TrueClass
  def to_bool
    self
  end

  alias to_boolean to_bool
end

class Object
  def to_bool
    false
  end

  alias to_boolean to_bool
end

class Symbol
  def to_bool
    self.downcase == :true
  end

  alias to_boolean to_bool
end
