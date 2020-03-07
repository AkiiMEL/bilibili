abstract class LoadState {}

class Loading extends LoadState {}

class Success<Value> extends LoadState {
  Value value;
  Success(this.value);
}

class Failure extends LoadState {
  final String description;
  Failure(this.description);
}
