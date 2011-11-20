class FaleConoscoController < ApplicationController
  def index
    @mensagem = MensagemFaleConosco.new(params[:mensagem])
  end

end
