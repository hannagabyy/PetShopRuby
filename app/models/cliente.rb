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
  
end
