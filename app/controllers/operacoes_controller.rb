class OperacoesController < ApplicationController
  def importar
    arquivo_cnab = params[:arquivo_cnab]
    
    if arquivo_cnab.respond_to?(:tempfile) && arquivo_cnab.tempfile.present?
      Operacao.parsear_e_salvar_arquivo(arquivo_cnab.tempfile)
      redirect_to operacoes_path, notice: "Arquivo importado com sucesso!"
    else
      redirect_to importar_operacoes_path, alert: "Nenhum arquivo foi selecionado."
    end
  end
  
  def index
    @operacoes = Operacao.all
  end
end