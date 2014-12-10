class UnmatchedFinder
  def ok?(input)
	input.gsub("(", '').size == input.gsub(")", '').size
  end
end
