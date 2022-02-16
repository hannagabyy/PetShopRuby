class ConsultaController < ApplicationController
    def index
    end
    def search
        @clientes = Cliente.where('nome like ?',
"%#{params[:q]}%")
    end
end
