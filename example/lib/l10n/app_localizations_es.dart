// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get example => 'Ejemplo';

  @override
  String hello(String userName) {
    return 'Hola $userName';
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
  String get settings => 'configuración';

  @override
  String get language => 'Lengua';

  @override
  String get main => 'Principal';

  @override
  String counter(int value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String valueString = valueNumberFormat.format(value);

    return 'Contador: $valueString';
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

/// The translations for Spanish Castilian, as used in the United States (`es_US`).
class AppLocalizationsEsUs extends AppLocalizationsEs {
  AppLocalizationsEsUs() : super('es_US');

  @override
  String get example => 'Ejemplo_US';

  @override
  String hello(String userName) {
    return 'Hola_US $userName';
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
  String get settings => 'configuración_US';

  @override
  String get language => 'Lengua_US';

  @override
  String get main => 'Principal_US';

  @override
  String counter(int value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String valueString = valueNumberFormat.format(value);

    return 'Contador_US: $valueString';
  }
}
