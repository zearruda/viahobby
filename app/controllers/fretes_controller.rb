require 'correios-frete'
require 'open-uri'
require 'nokogiri'

class FretesController < ApplicationController
  
  def index
      
  end
  	
  def calc
  	
 	   
  end

  def calcFrete

    destino = params[:destino]
     frete = Correios::Frete::Calculador.new :cep_origem => "30662710",
                                          :cep_destino => destino,
                                          :peso => 1,
                                          :comprimento => 100,
                                          :largura => 24,
                                          :altura => 20
     data = frete.calcular :pac, :sedex  
     objJson = data.as_json
     @result = objJson

    respond_to do |format|
       format.json do
       render :json => @result
       end
    end

  end
end
