class String
  def to_bool
    %w{ 1 true yes t }.include? self.downcase
  end
end

class Integer
  def to_bool
    self == 1
  end
end


class TrueClass
  def to_bool
    self
  end
end

class Object
  def to_bool
    false
  end
end
