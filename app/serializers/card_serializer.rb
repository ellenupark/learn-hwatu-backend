class CardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :month, :image, :player
end
