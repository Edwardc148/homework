class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14)
    @cups.each.with_index do |array,idx|
      if idx == 6 || idx == 13
        @cups[idx] = Array.new
      else
        @cups[idx] = Array.new(4) {:stone}
      end
    end
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end


  def valid_move?(start_pos)
    arr = (1..6).to_a + (7..12).to_a
    raise "Invalid starting cup" unless arr.include?(start_pos)
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []
    i = start_pos
    until stones.empty?
      i += 1
      i = 0 if i > 13
      # places stones in the correct current player's cups
      if i == 6
        @cups[6] << stones.pop if current_player_name == @name1
      elsif i == 13
        @cups[13] << stones.pop if current_player_name == @name2
      else
        @cups[i] << stones.pop
      end
    end
    render
    next_turn(i)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end

  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?{|n| n.empty?} || @cups[7..12].all?{|n| n.empty?}
  end

  def winner
    if @cups[6] == @cups[13]
      :draw
    elsif @cups[6].length > @cups[13].length
      @name1
    else
      @name2
    end
  end
end
