class Deck
  attr_reader :cards

  def initialize
    @cards =

    build_deck
  end #end

  def build_deck
  end #build_deck

  def deal # Give cards to player
  end #deal

  def take(num_cards) # Taking cards out of the deck
  end #take

  def shuffle
    deck.sample
  end #shuffle
end