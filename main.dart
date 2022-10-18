import 'payment.dart';

void main() {
  Payment pagamentoVitor = Payment(timeWorked: 44, valueHoursWorked: 60);
  double myPayment = pagamentoVitor.getRawPayment();

  pagamentoVitor.descountIr(payment: myPayment);
  pagamentoVitor.descountInss(payment: myPayment);
  pagamentoVitor.descountSyndicate(payment: myPayment);

  print("+ Salário Bruto: R\$ ${pagamentoVitor.calcPayment()} R\$");
  print("- IR(11%): ${pagamentoVitor.getIr()} R\$");
  print("- INSS(8%): ${pagamentoVitor.getInss()} R\$");
  print("- Sindicato(5%): ${pagamentoVitor.getSyndicate()} R\$");
  print("= Salário liquido : ${pagamentoVitor.getLiquidPayment()} R\$");
}
