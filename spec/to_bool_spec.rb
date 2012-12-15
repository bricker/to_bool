require 'bundler/setup'
Bundler.require

describe "String" do
  it "is true if yes" do
    "yes".to_bool.should eq true
  end
  
  it "is true if '1'" do
    "1".to_bool.should eq true
  end
  
  it "is true if 'true'" do
    "true".to_bool.should eq true
  end
  
  it "is false otherwise" do
    "no".to_bool.should eq false
    "false".to_bool.should eq false
    "0".to_bool.should eq false
  end
end

describe "Integer" do
  it "is true if 1" do
    1.to_bool.should eq true
  end
  
  it "is false otherwise" do
    0.to_bool.should eq false
  end
end

describe "TrueClass" do
  it "is true" do
    true.to_bool.should eq true
  end
end

describe "Object" do
  it "is false by default" do
    Object.new.to_bool.should eq false
  end
end
