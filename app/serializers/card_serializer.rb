class CardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :month, :image, :players
end
