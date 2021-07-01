require "./classes/conta_bancaria"

class ContaComTaxa < ContaBancaria
  TAXA = 2

  def transferir(outra_conta, money_transfer)
    super
    debitar(TAXA)
  end
end
