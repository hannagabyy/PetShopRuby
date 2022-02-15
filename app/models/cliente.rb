class Cliente < ApplicationRecord
  
  def self.to_csv
         CSV.generate(headers: true, col_sep: ";") do |csv|
          csv << ["Id","Nome", "Email", "Bairro", "Rua", "Veterinário",     
                  "Pet"]
    
            all.each do |cliente|
            
            row = [cliente.id,cliente.nome,cliente.email,cliente.bairro,  
                   cliente.rua, cliente.veterinario.nome, cliente.pet.nome]
            csv << row
            end
        end
     end
  belongs_to :veterinario
  belongs_to :pet
  
  #validando nome:
  validates :nome, presence: {message: 'está em branco!'}
  validates :nome, format: { with: /\A[a-zA-Z]+\z/,message: 'utilize apenas letras!'}, allow_blank: true
  #validando email:
  validates :email, presence:  {message: 'está em branco!'}
  validates :email, uniqueness: {message:'já cadastrado!'},allow_blank: true
  #validando bairro:
  validates :bairro, presence:  {message: 'está em branco!'}
  #validando rua:
  validates :rua, presence:  {message: 'está em branco!'}

end
