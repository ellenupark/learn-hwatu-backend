class CardsPlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :matched, :player, :card
end
