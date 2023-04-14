

import 'package:intl/intl.dart';

class HumanFormats {

  // static se usa para:
  // No crear una instancia para poder llamar uno de sus métodos
  static String humanReadbleNumber(double number){

    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);


    return formatterNumber;
  }

}