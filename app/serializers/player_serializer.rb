class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :role, :game
end
