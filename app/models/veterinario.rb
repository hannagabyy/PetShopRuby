class Veterinario < ApplicationRecord
   
    
    #validando nome:
     validates :nome, presence: {message: 'está em branco!'}
    
     paginates_per 2
end
