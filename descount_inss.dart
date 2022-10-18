mixin InssDedutction {
  double? inssValue;
  
  descountInss({required double payment}) =>
      this.inssValue = (payment / 100) * 8;

  getInss() => this.inssValue;
}
