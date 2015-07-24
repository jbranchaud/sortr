require "sortr/version"

module Sortr

  class NonSortableError < StandardError; end

  def self.sort(collection)
    raise NonSortableError unless is_sortable?(collection)
    collection.sort
  end

  # perform an insertion sort on the given collection
  def self.insertion_sort(collection)
    raise NonSortableError unless is_sortable?(collection)
    collection.size.times do |i|
      j = i
      while j > 0 && collection[j-1] > collection[j]
        swap(collection, j, j-1)
        j = j - 1
      end
    end
    collection
  end

  # perform a selection sort on the given collection
  def self.selection_sort(collection)
    raise NonSortableError unless is_sortable?(collection)
    (collection.size - 1).times do |i|
      min = i
      ((i+1)...collection.size).each do |j|
        min = j if collection[j] < collection[min]
      end

      swap(collection,i,min) if min != i
    end
    collection
  end

  private

  # given two valid positions in an collection, swap the values at those positions
  def self.swap(collection,a,b)
    temp = collection[a]
    collection[a] = collection[b]
    collection[b] = temp
  end

  def self.is_sortable?(collection)
    [:[], :[]=, :size].reduce(true) do |assoc,method|
      assoc && collection.respond_to?(method)
    end
  end

end
