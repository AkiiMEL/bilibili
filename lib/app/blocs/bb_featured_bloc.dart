import 'package:bloc/bloc.dart';

import 'bb_load_event.dart';
import 'bb_load_state.dart';

import '../api/bb_api.dart';

export 'bb_load_event.dart';
export 'bb_load_state.dart';

class BBFeaturedBLoC extends Bloc<LoadEvent, LoadState> {
  @override
  LoadState get initialState => Loading();

  @override
  Stream<LoadState> mapEventToState(
    LoadEvent event,
  ) async* {
    if (event is Load) {
      yield Loading();
      try {
        HttpBody<FeaturedBody> body = await BBApi.requestAllFeatured();

        yield Success(body?.data?.items?.toList() ?? []);
      } catch (e) {
        yield Failure(e.toString());
      }
    }
  }
}
