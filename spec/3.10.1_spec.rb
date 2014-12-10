require_relative 'spec_helper'

describe UnmatchedFinder do
  subject { described_class.new }

  describe '#ok?' do
    it 'empty' do
      expect(subject.ok?('')).to eq true
    end

    it 'one matched set' do
       expect(subject.ok?('()')).to eq true
    end

    it 'not ok with one unmatched right' do
       expect(subject.ok?('(')).to eq false
    end

    it 'not ok with one unmatched left' do
       expect(subject.ok?(')')).to eq false
    end
  end
end
