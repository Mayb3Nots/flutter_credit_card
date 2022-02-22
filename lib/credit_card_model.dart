class CreditCardModel {
  CreditCardModel({
    required this.cardNumber,
    required this.expiryDate,
    required this.cardHolderName,
    required this.cvvCode,
    required this.isCvvFocused,
  });
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CreditCardModel &&
        other.cardNumber == cardNumber &&
        other.expiryDate == expiryDate &&
        other.cardHolderName == cardHolderName &&
        other.cvvCode == cvvCode &&
        other.isCvvFocused == isCvvFocused;
  }

  @override
  int get hashCode {
    return cardNumber.hashCode ^
        expiryDate.hashCode ^
        cardHolderName.hashCode ^
        cvvCode.hashCode ^
        isCvvFocused.hashCode;
  }
}
