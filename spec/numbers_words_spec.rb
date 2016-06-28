require('rspec')
require('numbers_words.rb')

describe('Fixnum#translate')  do
  it("Returns number in word form from one to nineteen")  do
    expect((13).translate()).to(eq("thirteen"))
  end
end
