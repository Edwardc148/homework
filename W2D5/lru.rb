class LRUCache
    def initialize(size)
      @cache = Array.new
      @size = size
    end

    def count
      # returns number of elements currently in cache
      @cache.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @cache.include?(el)
        idx = @cache.index(el)
        @cache.delete_at(idx)
      elsif @cache.count >= @size
        @cache.shift
      end
      @cache.push(el)
      @cache
    end

    def show
      # shows the items in the cache, with the LRU item first
      p @cache
    end

    private
    # helper methods go here!

  end
end
