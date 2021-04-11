import 'package:datatoggle/properties.dart';
import 'package:datatoggle/traits.dart';

abstract class Destination {
  void identify(String userId, Traits? newTraits);
  void group(String groupId, Traits? groupTraits);
  void track(String event, Properties? properties);
  void screen(String name, Properties? properties);
}
