require_relative 'spec_helper'

describe UnmatchedFinder do
  subject { described_class.new }

  it 'returns false for nonsense' do
    expect(subject.ok?('!@#$%^&*ASDFghjk,./?')).to eq false
  end

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

    it 'ok with nested' do
      expect(subject.ok?('(()())()')).to eq true
    end

    it 'not ok with broken nested' do
      expect(subject.ok?(')(')).to eq false
    end

    describe 'multi paren types' do
      it 'sees ok []' do
        expect(subject.ok?('[]')).to eq true
      end

      it 'sees mismatched []' do
        expect(subject.ok?('][')).to eq false
      end

      it 'sees mismatched [] when paired with ok ()' do
        expect(subject.ok?('()[')).to eq false
      end
    end
  end
end
