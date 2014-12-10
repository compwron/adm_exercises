class UnmatchedFinder
  # http://commandercoriander.net/blog/2013/04/18/how-to-validate-matching-parentheses/

  def ok?(input)
    tally = { parens: 0 }

    input.each_char do |c|
      case c
       when '('
         tally[:parens] += 1
       when ')'
         tally[:parens] -= 1
       end

      return false if tally[:parens] < 0
    end

    tally[:parens] == 0
  end
end
