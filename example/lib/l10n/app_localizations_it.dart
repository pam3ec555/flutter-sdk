// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get example => 'Esempio';

  @override
  String hello(String userName) {
    return 'Buongiorno $userName';
  }

  @override
  String nThings(int count, Object thing) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ${thing}s',
      zero: 'no ${thing}s',
      one: '',
    );
    return '$_temp0';
  }

  @override
  String get settings => 'impostazioni';

  @override
  String get language => 'Lingua';

  @override
  String get main => 'Principale';

  @override
  String counter(int value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String valueString = valueNumberFormat.format(value);

    return 'Numero di punti dati: $valueString';
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
