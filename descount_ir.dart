mixin IrDeduction {
  double? irValue;

  descountIr({required double payment}) => this.irValue = (payment / 100) * 11;

  getIr() => this.irValue;
}
