require 'card'

class Deck
  attr_reader :cards

  def initialize
    @cards = []

    build_deck
    shuffle
  end #end

  def build_deck
    Card.new.suits.each do |suit|
      Card.new.values.each do |value|
        self.cards << Card.new(suit, value)
      end
    end
  end #build_deck

  def deal(num_cards) # Give cards to player
    take(num_cards)
  end #deal

  def take(num_cards) # Taking cards out of the deck
    taken = []
    num_cards.times do
      taken << cards.pop
    end
    taken
  end #take

  def shuffle
    cards.shuffle
  end #shuffle
end