void main() {
  
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.BOLETO);
  
}

enum TipoPagamento {
  PIX, BOLETO, CARTAO;
}

extension ExtensionTipoPagamento on TipoPagamento {
  String toValue() {
    
    Map map = {
      TipoPagamento.PIX: 'Pix',
      TipoPagamento.BOLETO: 'Boleto',
      TipoPagamento.CARTAO: 'Cartao',
    };
    return map[this];
  }
}

class Pagamento {
  
  void pagar(TipoPagamento TipoPagamento) {
  
    if(TipoPagamento.toValue() == 'Pix') {
      print('Pagamento com pix');
    } else if (TipoPagamento.toValue() == 'Boleto') {
      print('Pagamento com Boleto');
    } else if (TipoPagamento.toValue() == 'Cartão') {
      print('Pagamento com Cartão');
      }
    }
  }
