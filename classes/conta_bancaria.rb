# Criar uma classe responsável para representar Contas Bancárias
# Criar um método que me permite transferir valor entre contas usando:
# "conta1.transferir(conta2, 100)" onde é o valor que eu desejo transferir.

# Plus: "Criar um tipo de conta em que existe uma tarifa para se transferir dinheiro"
class ContaBancaria
  attr_accessor :propriety, :saldo
  def initialize(propriety, saldo = 0)
    @saldo = saldo
    @propriety = propriety
  end
  def transferir(conta, saldo_transfer)
    if @saldo >= saldo_transfer
      debitar(saldo_transfer)
      conta.depositar(saldo_transfer)
    else
      raise "Não consegui transferi, saldo insuficiente"
    end
  end

  private

  def debitar(valor)
    @saldo -= valor
  end

  protected
  def depositar(valor)
    @saldo += valor
  end
end
