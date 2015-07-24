require 'spec_helper'

describe Sortr do
  it 'has a version number' do
    expect(Sortr::VERSION).not_to be nil
  end

  describe '#sort' do
    context 'when given an empty array' do
      it 'should return an empty array' do
        expect(Sortr.sort([])).to eq []
      end
    end

    context 'when given an unsorted array' do
      it 'should return a sorted array' do
        expect(Sortr.sort([4,2,3,1])).to eq [1,2,3,4]
      end
    end

    context 'when given a non-enumerable object' do
      it 'should raise an error' do
        expect{ Sortr.sort(nil) }.to raise_error Sortr::NonEnumerableError
      end
    end
  end

  # it 'does something useful' do
  #   expect(false).to eq(true)
  # end
end
