//Enhanced Enum está disponível a partir da versão 2.17

void main() {
  
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.PIX);
  
}

enum TipoPagamento {

  PIX(1, 'Pix'), 
  BOLETO(2, 'Boleto'), 
  CARTAO(3, 'Cartao');

    final String value;
    final int id;
    const TipoPagamento(this.id, this.value);
}

class Pagamento {
  
  void pagar(TipoPagamento tipoPagamento) {
  
    if(tipoPagamento.value == 'Pix') {
      print('Pagamento com pix id ${tipoPagamento.id}');
    } else if (tipoPagamento.value == 'Boleto') {
      print('Pagamento com Boleto id ${tipoPagamento.id}');
    } else if (tipoPagamento.value == 'Cartão') {
      print('Pagamento com Cartão id ${tipoPagamento.id}');
      }
    }
  }
