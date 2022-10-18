import 'descount_inss.dart';
import 'descount_ir.dart';
import 'descount_syndicate.dart';

class Payment with IrDeduction, SyndicateDedutction, InssDedutction {
  double? _timeWorked;
  double? _valueHoursWorked;
  double? _payment;

  Payment({required double timeWorked, required double valueHoursWorked}) {
    setTimeWorked(timeWorked);
    setValueHoursWorked(valueHoursWorked);
    calcPayment();
  }

  setTimeWorked(double value) => this._timeWorked = value;
  getTimeWorked() => _timeWorked;

  getValueHoursWorked() => _valueHoursWorked;
  setValueHoursWorked(double value) => this._valueHoursWorked = value;

  calcPayment() => _payment = getTimeWorked() * getValueHoursWorked();

  getRawPayment() => _payment;

  getLiquidPayment() =>
      getRawPayment() - (getInss() + getIr() + getSyndicate());
}
