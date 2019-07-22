class Game < ApplicationRecord
  belongs_to :sport
  has_many :payments, dependent: :destroy
  has_many :teams
  scope :last_game, -> { Game.last }
end
