// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get example => 'Example';

  @override
  String hello(String userName) {
    return '_Hello $userName';
  }

  @override
  String nThings(int count, Object thing) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ${thing}s',
      zero: 'no ${thing}s',
    );
    return '$_temp0';
  }

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get main => 'Main';

  @override
  String counter(int value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String valueString = valueNumberFormat.format(value);

    return 'Counter: $valueString';
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
