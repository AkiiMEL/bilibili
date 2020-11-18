abstract class LoadEvent {}

class Load extends LoadEvent {
  final String path;
  final int page;
  final int pageSize;

  Load({this.path, this.page = 1, this.pageSize = 20});
}
