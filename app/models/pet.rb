class Pet < ApplicationRecord
    validates :nome, presence: {message: 'está em branco!'}
end
