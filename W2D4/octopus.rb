def n2(array)
  longest = ""
  array.each.with_index do |fish, idx|
    array.each do |fish2,idx2|
      if fish2.length > fish.length && fish2.length > longest.length
        longest = fish2
      end
    end
  end
  longest
end

array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
p n2(array)


class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    mid = length / 2
    left = self.take(mid).merge_sort(&prc)
    right = self.drop(mid).merge_sort(&prc)

    Array.merge(left, right, &prc)
  end

  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      if prc.call(left.first, right.first) == -1
        merged << left.shift
      else
        merged << right.shift
      end
    end

    merged + left + right
  end
end

def nlogn(array)
  prc = Proc.new { |x,y| y.length<=>x.length }
  array.merge_sort(&prc)[0]
end

p nlogn(array)

def n(array)
  longest = array.first
  array.each do |f|
    if f.length > longest.length
      longest = f
    end
  end
  longest
end

p n(array)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles_array)
  tiles_array.each.with_index do |dir, i|
    return i if dir == direction
  end
end

new_tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

p slow_dance("up", tiles_array)

def fast_dance(dir, new_tiles_data_structure)
  new_tiles_data_structure[dir]
end

p fast_dance("right-down", new_tiles_hash)
