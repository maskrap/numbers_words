require('rspec')
require('numbers_words.rb')

describe('Fixnum#translate')  do
  it("Returns number in word form from one to nineteen")  do
    expect((13).translate()).to(eq("thirteen"))
  end
  it("Returns number in word form from twenty to twenty-nine")  do
    expect((27).translate()).to(eq("twenty seven"))
  end
  it("Returns number in word form from twenty to one hundred")  do
    expect((54).translate()).to(eq("fifty four"))
  end
  it("Returns number in word form from zero to nine hundred ninety nine")  do
    expect((109).translate()).to(eq("one hundred nine"))
  end
end
