require_relative 'spec_helper'

describe UnmatchedFinder do
  subject { described_class.new }

  describe '#ok?' do
    it 'empty' do
      expect(subject.ok?("")).to eq true
    end
  end
end
