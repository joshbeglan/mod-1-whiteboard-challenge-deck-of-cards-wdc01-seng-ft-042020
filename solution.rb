class Deck

    @@cards = []

    rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

    i = 0
    while i < rank.length
        j = 0
        while j < suit.length
            @@cards << [rank[i], suit[j]]
            j += 1
        end
        i += 1
    end

    def self.all
        @@cards
    end

    def self.choose_card
        random_card = self.all.sample
        self.all.delete(random_card)
    end

end

class Card < Deck

    attr_reader :rank, :suit

    @@cards = []

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @@cards << self
  end 

  def self.all
    @@cards
  end

  def self.create
    
  end

end

pp Deck.choose_card
pp Deck.all