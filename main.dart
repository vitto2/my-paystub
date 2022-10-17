import 'payment.dart';

void main() {
  Payment pagamentoVitor = Payment(timeWorked: 44, valueHoursWorked: 60);

  print(pagamentoVitor.calcPayment());
}
