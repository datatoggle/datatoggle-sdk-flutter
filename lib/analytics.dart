import 'package:datatoggle/destination.dart';
import 'package:datatoggle/properties.dart';
import 'package:datatoggle/traits.dart';

// follows https://github.com/segmentio/analytics-android/blob/master/analytics/src/main/java/com/segment/analytics/Analytics.java
class Analytics {
  final List<Destination> _destinations;

  Analytics(this._destinations);

  // userId and Traits should not be null together
  void identify(String userId, {Traits? newTraits}) {
    _destinations.forEach((element) {
      element.identify(userId, newTraits);
    });
  }

  void group(String groupId, {Traits? groupTraits}) {
    _destinations.forEach((element) {
      element.group(groupId, groupTraits);
    });
  }

  void track(String event, {Properties? properties}) {
    _destinations.forEach((element) {
      element.track(event, properties);
    });
  }

  void screen(String name, {Properties? properties}) {
    _destinations.forEach((element) {
      element.screen(name, properties);
    });
  }
}
