FactoryBot.define do
  factory :game do
    date { "2019-07-03" }
    amount { 1 }
    players_count { 1 }
    amount_per_player { 1 }
    sport { nil }
  end
end
