class Operacao < ApplicationRecord
    def self.parsear_e_salvar_arquivo(cnab_file)
      File.open(cnab_file, "r") do |file|
        file.each_line do |line|
          tipo = line[0].to_i
          data = Date.parse(line[1..8])
          valor = line[9..18].to_i / 100.00
          cpf = line[19..29]
          cartao = line[30..41]
          hora = line[42..47]
          dono_loja = line[48..61]
          nome_loja = line[62..80]
  
          create(tipo: tipo, data: data, valor: valor, cpf: cpf, cartao: cartao, hora: hora, dono_loja: dono_loja, nome_loja: nome_loja)
        end
      end
    end
  end
  