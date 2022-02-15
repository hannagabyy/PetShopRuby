class Veterinario < ApplicationRecord
    paginates_per 2
    
    #validando nome:
     validates :nome, presence: {message: 'está em branco!'}
     validates :nome, format: { with: /\A[a-zA-Z]+\z/,message: 'utilize apenas letras!'}, allow_blank: true

end
