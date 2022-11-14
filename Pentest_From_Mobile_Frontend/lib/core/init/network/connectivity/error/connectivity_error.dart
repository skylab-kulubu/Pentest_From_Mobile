class ConnectivityError<T> implements Exception {
  late final String? _errorMessage;
  ConnectivityError({String? errorMessage}) : _errorMessage = errorMessage;
  @override
  String toString() {
    return _errorMessage ?? 'no error definition provided. Error accoured on $T';
  }
}
