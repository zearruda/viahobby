require 'correios-frete'
class HomeController < ApplicationController


  def index  

  	
  end  
 
  def calc

     destino = params[:destino]
     puts "cep"
     puts destino
 	   frete = Correios::Frete::Calculador.new :cep_origem => "30662710",
                                          :cep_destino => destino,
                                          :peso => 1,
                                          :comprimento => 100,
                                          :largura => 23,
                                          :altura => 19
 	   @result  = frete.calcular :pac, :sedex   
     puts "ok"
  end	

end
