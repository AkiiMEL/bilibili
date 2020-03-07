import 'package:bloc/bloc.dart';

import 'bb_load_event.dart';
import 'bb_load_state.dart';

import '../api/bb_api.dart';

export 'bb_load_event.dart';
export 'bb_load_state.dart';

class BBLiveHomeBLoC extends Bloc<LoadEvent, LoadState> {
  @override
  LoadState get initialState => Loading();

  @override
  Stream<LoadState> mapEventToState(LoadEvent event) async* {
    if (event is Load) {
      yield Loading();
      try {
        HttpBody<LiveHomeBody> body = await BBApi.requestAllLive();
        List<LiveGroup> copy = [];

        copy.addAll(body?.data?.banner ?? []);
        copy.addAll(body?.data?.areaEntranceV2 ?? []);
        copy.addAll(body?.data?.activityCardV2 ?? []);
        copy.addAll(body?.data?.myIdol ?? []);
        copy.addAll(body?.data?.roomList ?? []);
        copy.addAll(body?.data?.hourRank ?? []);

        copy = copy.where((e) => e.list?.isNotEmpty ?? false).toList();
        copy.sort((lhs, rhs) => lhs.module.sort.compareTo(rhs.module.sort));

        yield Success(copy);
      } catch (e) {
        yield Failure(e.toString());
      }
    }
  }
}
