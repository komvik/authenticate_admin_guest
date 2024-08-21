void main() {
  Map<String, String> authCredentials = {
    'admin': 'admin_pass',
    'guest': 'guest_pass',
  };

  String user = 'admin';
  String password = 'admin_pass';

  bool isAuthenticated = authenticateUser(user, password, authCredentials);

  if (isAuthenticated) {
    print('$user ist authentifiziert.');
  } else {
    print('Authentifizierung fehlgeschlagen.');
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
