import 'package:droni/common/data/preference/item/nullable_preference_item.dart';
import 'package:droni/common/theme/custom_theme.dart';

class Prefs {
  static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme');
}
