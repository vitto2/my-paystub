mixin SyndicateDedutction {
  double? syndicateValue;

  descountSyndicate({required double payment}) =>
      this.syndicateValue = (payment / 100) * 5;

  getSyndicate() => this.syndicateValue;
}
