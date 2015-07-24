require "sortr/version"

module Sortr

  class NonEnumerableError < StandardError; end

  def self.sort(collection)
    raise NonEnumerableError unless collection.class.ancestors.include? Enumerable
    collection.sort
  end

end
