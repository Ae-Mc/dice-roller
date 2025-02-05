import 'package:flutter/services.dart';

class DefaultZeroInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text == '') {
      return newValue.copyWith(
        text: '0',
        selection: TextSelection.collapsed(offset: 1),
      );
    }
    if (newValue.text.startsWith('0') && newValue.text.length > 1) {
      return newValue.copyWith(
        text: newValue.text.substring(1),
        selection: TextSelection.collapsed(offset: newValue.text.length - 1),
      );
    }
    return newValue;
  }
}
