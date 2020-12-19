class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :role, :cards
end
