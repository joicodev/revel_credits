class Validator {
  static bool isEmailValid(String email) {
    // Implementación de validación de correo electrónico
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    // Implementación de validación de contraseña
    return password.length >= 8;
  }
}
