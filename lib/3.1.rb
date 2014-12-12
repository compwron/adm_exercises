class UnmatchedFinder
  # http://commandercoriander.net/blog/2013/04/18/how-to-validate-matching-parentheses/
  MAPPING = { '(' => 1, ')' => -1, '[' => 1, ']' => -1 }

  def ok?(input)
    tally = { parens: 0, squarebrackets: 0 }

    input.each_char do |c|
      tally[:parens] += (MAPPING[c] ? MAPPING[c] : -1)
      return false if tally[:parens] < 0
    end

    tally[:parens] == 0
  end
end
