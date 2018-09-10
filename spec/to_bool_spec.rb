require 'bundler/setup'
Bundler.require

describe "String" do
  it "is true if yes" do
    expect("yes".to_bool).to eq true
  end
  
  it "is true if '1'" do
    expect("1".to_bool).to eq true
  end
  
  it "is true if 'true'" do
    expect("true".to_bool).to eq true
  end
  
  it "is false otherwise" do
    expect("no".to_bool).to eq false
    expect("false".to_bool).to eq false
    expect("0".to_bool).to eq false
  end

  it "is true when using to_boolean" do
    expect("true".to_boolean).to eq true
  end
end

describe "Integer" do
  it "is true if 1" do
    expect(1.to_bool).to eq true
  end
  
  it "is false otherwise" do
    expect(0.to_bool).to eq false
  end

  it "is true when using to_boolean" do
    expect(1.to_boolean).to eq true
  end
end

describe "TrueClass" do
  it "is true" do
    expect(true.to_bool).to eq true
  end

  it "is true when using to_boolean" do
    expect(true.to_boolean).to eq true
  end
end

describe "Object" do
  it "is false by default" do
    expect(Object.new.to_bool).to eq false
  end

  it "is false when using to_boolean" do
    expect(Object.new.to_boolean).to eq false
  end
end

describe "Symbol" do
  it "is true if :true" do
    expect(:true.to_bool).to eq true
  end

  it "is true if :TRUE" do
    expect(:TRUE.to_bool).to eq true
  end

  it "is false otherwise" do
    expect(:false.to_bool).to eq false
    expect(:hoge.to_bool).to eq false
  end

  it "is true when using to_boolean" do
    expect(:true.to_bool).to eq true
  end
end
