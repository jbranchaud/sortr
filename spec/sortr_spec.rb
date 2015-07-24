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

  end

  describe '#insertion_sort' do
    context 'when given an empty array' do
      it 'should return an empty array' do
        expect(Sortr.insertion_sort([])).to eq []
      end
    end

    context 'when given an unsorted array' do
      it 'should return a sorted array' do
        expect(Sortr.insertion_sort([4,2,3,1])).to eq [1,2,3,4]
      end
    end
  end

  describe '#selection_sort' do
    context 'when given an empty array' do
      it 'should return an empty array' do
        expect(Sortr.selection_sort([])).to eq []
      end
    end

    context 'when given an unsorted array' do
      it 'should return a sorted array' do
        expect(Sortr.selection_sort([4,2,3,1])).to eq [1,2,3,4]
      end
    end
  end
end
