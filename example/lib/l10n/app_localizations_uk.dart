// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get example => '_Приклад';

  @override
  String hello(String userName) {
    return '_Привіт, $userName';
  }

  @override
  String nThings(int count, Object thing) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count $thing',
      zero: 'жодного $thingа',
    );
    return '_$_temp0';
  }

  @override
  String get settings => '_Налаштування';

  @override
  String get language => '_Мова';

  @override
  String get main => '_Головна';

  @override
  String counter(int value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String valueString = valueNumberFormat.format(value);

    return '_Лічильник: $valueString';
  }

  @override
  String roamingChoice(String choice) {
    String _temp0 = intl.Intl.selectLogic(
      choice,
      {
        'month': '_For 1 month',
        'unlimited': '_Unlimited',
        'deactivate': '_Deactivate',
        'other': '',
      },
    );
    return '$_temp0';
  }
}
