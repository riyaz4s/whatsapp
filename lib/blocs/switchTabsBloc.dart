import 'dart:async';

import 'package:ChatApp/events/events.dart';

class SwitchTabsBloc {
  TabIndex _currentTab = TabIndex.CHATS;

  final _switchTabsSteamController = new StreamController<TabIndex>();
  StreamSink<TabIndex> get _inputStream => _switchTabsSteamController.sink;
  Stream<TabIndex> get currentTab => _switchTabsSteamController.stream;
 
  final _switchTabsEventController = StreamController<SwitchTabsEvent>();
  Sink<SwitchTabsEvent> get switchTabsEventSink => _switchTabsEventController.sink;

  SwitchTabsBloc() {
    _switchTabsEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(SwitchTabsEvent event) {
    _currentTab = event.tabIndex;
    _inputStream.add(_currentTab);
  }

  void dispose() {
    _switchTabsSteamController.close();
    _switchTabsEventController.close();
  }

}