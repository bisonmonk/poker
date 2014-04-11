class Card
  SUIT_STRINGS = {
    :clubs    => "♣",
    :diamonds => "♦",
    :hearts   => "♥",
    :spades   => "♠"
  }

  VALUE_STRINGS = {
    :deuce => "2",
    :three => "3",
    :four  => "4",
    :five  => "5",
    :six   => "6",
    :seven => "7",
    :eight => "8",
    :nine  => "9",
    :ten   => "10",
    :jack  => "J",
    :queen => "Q",
    :king  => "K",
    :ace   => "A"
  }

  attr_reader :suit

  def self.suits
    SUIT_STRINGS.keys
  end #self.suits

  def self.values
    VALUE_STRINGS.keys
  end #self.values

  def initialize(suit)
    @suit, @value = suit, value
  end #init

  def to_s
    VALUE_STRINGS[value] + SUIT_STRINGS[suit]
  end #to_s
end #Card