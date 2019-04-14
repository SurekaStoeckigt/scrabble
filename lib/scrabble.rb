class Scrabble

  def initialize(word)
    @word = word
    @score = 0
  end

  def score

    if @word == '' || @word == nil
      return 0
    else
      @letters = @word.downcase.chars
    end

    if @letters.include? " "
      return 0
    else
      evaluate_word(@letters)
    end
    @score
  end

  def evaluate_word(letters)
    @word_hash = {"a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1, "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8,
                "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1, "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1,
                "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4, "z" => 10}

    letters.each do |letter|
      @score += @word_hash[letter]
    end
    @score
  end
end
