require "sortr/version"

module Sortr

  class NonEnumerableError < StandardError; end

  def self.sort(collection)
    raise NonEnumerableError unless collection.class.ancestors.include? Enumerable
    collection.sort
  end

  # perform an insertion sort on the given collection
  def self.insertion_sort(collection)
    collection.size.times do |i|
      j = i
      while j > 0 && collection[j-1] > collection[j]
        swap(collection, j, j-1)
        j = j - 1
      end
    end
    collection
  end

  private

  # given two valid positions in an array, swap the values at those positions
  def self.swap(array,a,b)
    temp = array[a]
    array[a] = array[b]
    array[b] = temp
  end

end
