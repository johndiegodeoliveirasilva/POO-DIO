# principal.rb
require "./classes/conta_bancaria"
require "./classes/conta_com_taxa"

conta_cadu = ContaComTaxa.new("cadu", 100)
conta_pessoa2 = ContaBancaria.new("pessoa", 200)

begin
  conta_cadu.transferir(conta_pessoa2, 100)
rescue StandardError => e
  p "Não foi transferido #{e}"
end
p 'Conta Cadu'
p conta_cadu.saldo # 50

p 'Conta Pessoa 2'
p conta_pessoa2.saldo # 250
