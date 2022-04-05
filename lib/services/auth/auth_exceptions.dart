
//error login
class UserNotFoundException implements Exception {}

class WrongPasswordAuthException implements Exception {}

//error register
class WeakPasswordAuthException implements Exception {}

class EmailAlreadyInUseAuthException implements Exception {}

class InvalidEmailAuthException implements Exception {}

//error generic

class GenericAuthException implements Exception {}

class UserNotLoggedInAuthException implements Exception {}