class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :points, :players
end
