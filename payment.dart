class Payment {
  double? _timeWorked;
  double? _valueHoursWorked;
  double? _payment;

  Payment({required double timeWorked, required double valueHoursWorked}) {
    setTimeWorked(timeWorked);
    setValueHoursWorked(valueHoursWorked);
  }

  setTimeWorked(double value) => this._timeWorked = value;
  getTimeWorked() => _timeWorked;

  getValueHoursWorked() => _valueHoursWorked;
  setValueHoursWorked(double value) => this._valueHoursWorked = value;

  calcPayment() => _payment = getTimeWorked() * getValueHoursWorked();
}
