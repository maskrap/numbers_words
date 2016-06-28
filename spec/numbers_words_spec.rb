require('rspec')
require('numbers_words.rb')

describe('Fixnum#translate')  do
  it("Returns number in word form from one to nineteen")  do
    expect((13).translate()).to(eq("thirteen"))
  end
  it("Returns number in word form from twenty to twenty-nine")  do
    expect((27).translate()).to(eq("twentyseven"))
  end
end
