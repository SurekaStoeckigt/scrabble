require "./lib/scrabble.rb"

describe "Scrabble Solver" do

  it "returns a score of 0 for an empty input" do
    scrabble = Scrabble.new('')
    expect(scrabble.score).to eq(0)
  end

  it "returns a score of 0 for an input of ' \t\n' " do
    scrabble = Scrabble.new(" \t\n")
    expect(scrabble.score).to eq(0)
  end

  it "returns a score of 0 for an input of nil" do
    scrabble = Scrabble.new(nil)
    expect(scrabble.score).to eq(0)
  end

  it "returns a score of 1 for the letter a as input" do
    scrabble  =Scrabble.new('a')
    expect(scrabble.score).to eq(1)
  end

  it "returns a score of 4 for the letter f as input" do
    scrabble = Scrabble.new('f')
    expect(scrabble.score).to eq(4)
  end

  it "returns a score of 6 for the letter street as input" do
    scrabble = Scrabble.new('street')
    expect(scrabble.score).to eq(6)
  end

  it "returns a score of 22 for the word quirky" do
    scrabble = Scrabble.new('quirky')
    expect(scrabble.score).to eq(22)
  end

  it "returns a score of 22 for the word quirky" do
    scrabble = Scrabble.new('OXYPHENBUTAZONE')
    expect(scrabble.score).to eq(41)
  end

end
