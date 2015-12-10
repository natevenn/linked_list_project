require_relative 'linked_list'

class JungleBeats

  attr_accessor :list, :beats

  def initialize(beats)
    @beats = beats
    @list = List.new(data)
  end


  def play
   `say -r 500 -v Boing #{list}`
  end


end
