#!/usr/bin/env ruby
require_relative '../blackjack'

BlackjackGame.new

#Write code in this file
require 'pry-byebug'

RANK_array = [:A,2,3,4,5,6,7,8,9,10,:J,:Q,:K]
SUIT_array = [:clubs, :diamonds, :hearts, :spades]

class Card
  attr_accessor :rank, :value, :suit

  def initialize(rank, suit) 
    @rank = rank 
    @suit = suit
    @value = get_value
  end

  def greater_than?(other_card)
    @value > other_card.value
  end

  def get_value
    if @rank == :A
      @value = 1
    elsif @rank == :K
      @value = 10
    elsif @rank == :Q
      @value = 10
    elsif @rank == :J
      @value = 10
    else
      @value = @rank
    end
  end

  def == (other_card)
    rank == other_card.rank &&
    suit == other_card.suit &&
    value == other_card.value
  end

end

#CODE FOR DECK

require_relative "card"
require 'pry-byebug'

class Deck

  def initialize(deck) 
  
  end

end


 #DECK = [ [ ] ] #an array of arrays
         #an array of card objects

  # def draw
  # end

  # def shuffle
  # end

# DECK:
  # 4 suits
  # 52 cards
  # 13 ranks