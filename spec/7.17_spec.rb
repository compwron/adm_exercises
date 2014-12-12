require_relative 'spec_helper'

describe TelephoneKeypad do
  subject { described_class.new }

  describe '#words_in' do
    it 'finds no words in no digits' do
      expect(subject.words_in('')).to eq []
    end

    it 'finds no words in digit with no single letter words' do
      expect(subject.words_in('9')).to eq []
    end

    it 'finds word in digit with one single letter word' do
      expect(subject.words_in('2')).to eq ['a']
    end

    it 'finds word in two-digit combo' do
      expect(subject.words_in('63')).to eq ['of']
    end
  end
end
