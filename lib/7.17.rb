class TelephoneKeypad
  # credit to http://kalinchuk.com/?p=172

  KEY_MAPPING = { 2 => %w(a b c),
                  3 => %w(d e f),
                  4 => %w(g h i),
                  5 => %w(j k l),
                  6 => %w(m n o),
                  7 => %w(p q r s),
                  8 => %w(t u v),
                  9 => %w(w x y z)
        }

  def words_in(digits)
    foo(digits, digits.length, 0, '', [])
  end

  $array = [' ', ' ', 'abc', 'def', 'ghi', 'jkl', 'mno', 'pqrs', 'tuv', 'wxyz']

  def foo(input, length, index, out, possibles)
    if index == length
    	possibles << out
    	# puts possibles
      return
    end

    for j in 0..($array[input[index].to_i].length - 1)
      out[index] = $array[input[index].to_i][j]
      foo(input, length, index + 1, out, possibles)
    end
    possibles.uniq
  end
end
