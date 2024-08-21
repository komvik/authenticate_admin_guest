import 'dart:io';

void main() {
  Map<String, String> authCredentials = {
    'admin': 'admin_pass',
    'guest': 'guest_pass',
  };

  //String user = 'admin';
  //String password = 'admin_pass';

  print('Enter username: ');
  String? user = stdin.readLineSync();

  print('Enter password: ');
  String? password = stdin.readLineSync();

  if (user != null && password != null) {
    bool isAuthenticated = authenticateUser(user, password, authCredentials);

    if (isAuthenticated) {
      print('$user ist authentifiziert.');
    } else {
      print('Authentifizierung fehlgeschlagen.');
    }
  } else {
    print('Benutzername und Passwort dürfen nicht leer sein.');
  }
}

//_______________________________________________________
// Funktion liefert ein true/false bei die Map Abfrage.
//_______________________________________________________
bool authenticateUser(
    String username, String password, Map<String, String> credentials) {
  if (credentials.containsKey(username)) // wenn die name gefunden.
  {
    return credentials[username] == password; //(true/false)
  }
  return false;
}
