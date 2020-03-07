
abstract class LoadEvent {}

class Load extends LoadEvent {
  final int page;
  final int pageSize;

  Load({this.page = 1, this.pageSize = 20});
}
