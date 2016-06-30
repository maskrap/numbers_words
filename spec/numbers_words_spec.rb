require('rspec')
require('numbers_words')

describe('Fixnum#translate')  do
  it("Returns number in word form from one to nineteen")  do
    expect((13).translate()).to(eq("thirteen"))
  end
  it("Returns number in word form from twenty to twenty-nine")  do
    expect((28).translate()).to(eq("twenty eight"))
  end
  it("Returns number in word form from twenty to one hundred")  do
    expect((55).translate()).to(eq("fifty five"))
  end
  it("Returns number in word form from zero to nine hundred ninety nine")  do
    expect((109).translate()).to(eq("one hundred nine"))
  end
end
