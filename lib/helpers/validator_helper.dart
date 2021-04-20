const kRequiredField = 'Campo obrigatorio';
const kIsNegative = 'Digite um valor positivo';
const kIsZero = 'Valor Nulo, digite um valor válido';

class ValidatorHelper {
  static String validation(String text) {

    if (text.isEmpty) {
      return kRequiredField;
    } else {
      double value = double.parse(text);

      if (value == 0) {
        return kIsZero;
      } else if (value < 0) {
        return kIsNegative;
      }
    }
    return null;
  }
}