class CompteBancaire {
  String _numero; // _ = privé
  double _solde;

  CompteBancaire(this._numero, this._solde);

  double get solde => _solde;

  void deposer(double montant) {
    _solde += montant;
  }
}
