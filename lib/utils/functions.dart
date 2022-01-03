String? isEmail(String? email) {
  return email?.isNotEmpty != null &&
          RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(email!)
      ? null
      : 'Ingrese un email correcto';
}

String? isNotEmpty(String? text) {
  return text?.isNotEmpty != null ? null : 'Este campo no puede estar vacio';
}

String? isPassword(String? text) {
  return text?.isNotEmpty != null && text!.length > 8
      ? null
      : 'La contraseña tiene que tener mas de 8 caracteres';
}
