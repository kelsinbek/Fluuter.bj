void main() {
  //Number (int , double)
  double my_weight = 84.5;
  print(my_weight.runtimeType);

  // Boolean(true, false)
  bool isChildren = true;
  print(isChildren.runtimeType);

  // String(UTF-16)
  String my_name = "Kelsinbek";
  String my_surname = 'Zarlykov';
  print(my_name.runtimeType);

  String name = 'What\'s your name?';
  print(name);
  String fio = '''
  kelsinbek''';
  print(fio);

  String person_info = "Name: ${my_name.toUpperCase()} Weight : $my_weight";
  print(person_info);

  // Runes(UTF-32)
  Runes hello = Runes('\u041F');
  print(hello);
  print(String.fromCharCodes(hello));

  // Symbol
  Symbol s = #f;
  print(s);

  //Type of Var
  var message = "Some text";
  //message = 4; Error
  print(message);
  var number = 10;
  print(number);

  //Type of Dynamic
  dynamic messages = "Some text";
  // messages = 30;
  print(messages);

  //Преобразование типов
  // int -> double | toDouble()
  //double -> int | round()
  // num ->string | toString()/ toStringAsFixed()
  // string -> num | parse() - Exception/tryParse()- null
  var intNum = 1;
  double doubleNum = intNum.toDouble();

  var doubleNumBer = 1.6;
  int intNumBer = doubleNumBer.round();

  var stringNum = intNum.toString();

  var newNumber = int.parse(stringNum);
  print(newNumber);

  print('Int :$intNumBer');
  print('Double:$doubleNum');
  print('StringNumber: $stringNum');
}
