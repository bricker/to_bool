require 'bundler/setup'
Bundler.require

def assert(expected, actual)
  raise "Failed Assertion" if expected != actual
end

# String
assert(true, "yes".to_bool)
assert(true, "YES".to_bool)
assert(true, "y".to_bool)
assert(true, "Y".to_bool)
assert(true, "1".to_bool)
assert(true, "true".to_bool)
assert(true, "TRUE".to_bool)
assert(true, "t".to_bool)
assert(true, "T".to_bool)
assert(true, "true".to_boolean)

assert(false, "no".to_bool)
assert(false, "NO".to_bool)
assert(false, "n".to_bool)
assert(false, "N".to_bool)
assert(false, "false".to_bool)
assert(false, "FALSE".to_bool)
assert(false, "f".to_bool)
assert(false, "F".to_bool)
assert(false, "0".to_bool)

# Integer
assert(true, 1.to_bool)
assert(true, 1.to_boolean)
assert(false, 0.to_bool)

# TrueClass
assert(true, true.to_bool)
assert(true, true.to_boolean)
assert(false, false.to_boolean)

# Object
assert(false, Object.new.to_bool)
assert(false, Object.new.to_boolean)

# Symbol
assert(true, :true.to_bool)
assert(true, :TRUE.to_bool)
assert(false, :false.to_bool)
assert(false, :hoge.to_bool)
assert(true, :true.to_boolean)
