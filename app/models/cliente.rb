class Cliente < ApplicationRecord
  belongs_to :veterinario
  belongs_to :pet
end
