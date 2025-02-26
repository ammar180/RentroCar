import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LoginPage
  {
    'fbopao8s': {
      'en': 'RentroCar',
      'ar': 'رينتروكار',
    },
    'b5u64vrs': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    'apotk2i5': {
      'en': 'Email',
      'ar': '',
    },
    '4rg9nmej': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'n2waok3m': {
      'en': 'Forget Password?',
      'ar': 'نسيت كلمة المرور؟',
    },
    '54r2lxv7': {
      'en': 'Don\'t have account?',
      'ar': 'ليس لديك حساب؟',
    },
    'dg7sboxq': {
      'en': 'Sign Up',
      'ar': 'اشتراك',
    },
    'azs9ubad': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    'pa6rnw3h': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SignUpPage
  {
    'eyzz4ks0': {
      'en': 'RentroCar',
      'ar': 'رينتروكار',
    },
    '9kmbdzbd': {
      'en': 'Sign Up',
      'ar': 'اشتراك',
    },
    'pogghqx8': {
      'en': 'Name',
      'ar': 'اسم',
    },
    's92zr65r': {
      'en': 'Phone number',
      'ar': 'رقم التليفون',
    },
    'cdb91vl1': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    'jsxxzxi8': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'wala0gt1': {
      'en': 'Confirm Password',
      'ar': 'تأكيد كلمة المرور',
    },
    'l8s98555': {
      'en': 'Name is required',
      'ar': '',
    },
    'cdn48i7c': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء اختيار خيار من القائمة المنسدلة',
    },
    '7nsz4ok9': {
      'en': 'Phone number is required',
      'ar': '',
    },
    'rlw3dv04': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء اختيار خيار من القائمة المنسدلة',
    },
    'smgx8zm6': {
      'en': 'Email is required',
      'ar': '',
    },
    '5x1jwu3i': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '9orgji0m': {
      'en': 'Password is required',
      'ar': '',
    },
    'pu5okobd': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'g1224dsf': {
      'en': 'Confirm Password is required',
      'ar': '',
    },
    'p6rofj79': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'xv9ifmj5': {
      'en': 'Already have account?',
      'ar': 'هل لديك حساب بالفعل؟',
    },
    'k8wl01c9': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    'xkgkoyx1': {
      'en': 'Sign Up',
      'ar': 'اشتراك',
    },
    'dvcl7t4b': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // onboarding
  {
    'ccku15hv': {
      'en': 'Your Smart Car Rental Platform!',
      'ar': 'منصة تأجير السيارات الذكية الخاصة بك!',
    },
    'nnqkju1u': {
      'en':
          'Whether you need a luxury car for a special occasion or a budget-friendly option for everyday use, RentroCar lets you explore the best deals from rental companies and private car owners. Enjoy a seamless and fast booking experience with just a tap!',
      'ar':
          'سواء كنت بحاجة إلى سيارة فاخرة لمناسبة خاصة أو خيار مناسب للميزانية للاستخدام اليومي، يتيح لك RentroCar استكشاف أفضل العروض من شركات التأجير وأصحاب السيارات الخاصة. استمتع بتجربة حجز سلسة وسريعة بنقرة واحدة فقط!',
    },
    'ulwb4g5g': {
      'en': 'More Choices, Better Prices!',
      'ar': 'مزيد من الخيارات، وأسعار أفضل!',
    },
    'edxliqql': {
      'en':
          'Compare rental options for private car owners. Competition means better cars at lower prices, giving you the best value for your money. Find the perfect ride that suits your needs!',
      'ar':
          'قارن بين خيارات التأجير لأصحاب السيارات الخاصة. المنافسة تعني الحصول على سيارات أفضل بأسعار أقل، مما يمنحك أفضل قيمة مقابل أموالك. اعثر على السيارة المثالية التي تناسب احتياجاتك!',
    },
    'tcedlq4k': {
      'en': 'Car Rental Made Easier Than Ever!',
      'ar': 'تأجير السيارات أصبح أسهل من أي وقت مضى!',
    },
    'wufi3bxj': {
      'en':
          'With RentroCar, compare multiple offers, book your ideal car in minutes, and enjoy your trip hassle-free. We provide you with flexibility and security for a smooth rental experience, wherever you are',
      'ar':
          'مع RentroCar، قارن بين العروض المتعددة، واحجز سيارتك المثالية في دقائق، واستمتع برحلتك دون أي متاعب. نحن نوفر لك المرونة والأمان لتجربة تأجير سلسة، أينما كنت',
    },
    'p89mnttq': {
      'en': 'Your Journey Begins',
      'ar': 'رحلتك تبدأ',
    },
    'wd9kxwfe': {
      'en': 'Sign up below in order to get started!',
      'ar': 'سجل أدناه للبدء!',
    },
    'q30l7fuc': {
      'en': 'Get Started',
      'ar': 'البدء',
    },
    'uxrzzexx': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // profile
  {
    'jwhmvryj': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
    },
    '3cerpi9g': {
      'en': 'Account Settings',
      'ar': 'إعدادات الحساب',
    },
    'z9adcsb7': {
      'en': 'Change Password',
      'ar': 'تغيير كلمة المرور',
    },
    'gozhh9ek': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
    },
    'avk5wd6z': {
      'en': 'Your Accound don\'t verified',
      'ar': 'لم يتم التحقق من حسابك',
    },
    'c6n4h8y9': {
      'en': 'Log Out',
      'ar': 'تسجيل الخروج',
    },
    '8dflcogq': {
      'en': 'Application Settings',
      'ar': 'إعدادات التطبيق',
    },
    'hb69767h': {
      'en': 'English',
      'ar': '',
    },
    '49itwepx': {
      'en': 'Select langusage...',
      'ar': 'اختر اللغة',
    },
    '83ai5qnl': {
      'en': 'Search...',
      'ar': '',
    },
    'dv7u6c3j': {
      'en': 'English',
      'ar': 'الانجليزية',
    },
    '21j7u569': {
      'en': 'Arabic',
      'ar': 'العربية',
    },
    'a87mw1kb': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
    },
  },
  // home
  {
    'es5hjj8s': {
      'en': 'RentroCar',
      'ar': 'رينتروكار',
    },
    '10oubq9w': {
      'en': 'Search any Car....',
      'ar': 'ابحث عن أي سيارة....',
    },
    '51if56xb': {
      'en': 'Most Popular Cars',
      'ar': 'السيارات الأكثر شعبية',
    },
    'uddkj6ai': {
      'en': 'Top Rated Cars',
      'ar': 'السيارات الأعلى تقييما',
    },
    'fhhcambw': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // MyCars
  {
    'mjt2l9ta': {
      'en': 'My Cars',
      'ar': 'سياراتي',
    },
    'h7qr7io9': {
      'en': 'Add New Car',
      'ar': 'أضف سيارة جديدة',
    },
    'p4iihd1h': {
      'en': 'You Didn\'t upload any Car yet!',
      'ar': 'لم تقم بتحميل أي سيارة بعد!',
    },
    'g7ftohom': {
      'en': 'Current Borrowed Cars',
      'ar': 'السيارات المستعارة الحالية',
    },
    'nuyisxph': {
      'en': 'Rent Now!',
      'ar': 'إستأجر الآن!',
    },
    'edtunmde': {
      'en': 'You didn\'t have any requestes',
      'ar': 'لم يكن لديك أي طلبات',
    },
    '40zv2ebw': {
      'en': 'My Car',
      'ar': 'سيارتي',
    },
  },
  // Favorite
  {
    '5sw10eas': {
      'en': 'RentroCar',
      'ar': 'رينتروكار',
    },
    'b9fv5ldt': {
      'en': 'Your Favorite Cars',
      'ar': 'سياراتك المفضلة',
    },
    '3satdo4r': {
      'en': 'You Didn\'t have any loved cars',
      'ar': 'ليس لديك أي سيارات مفضلة',
    },
    'xqno34ji': {
      'en': 'Favorite',
      'ar': 'مفضل',
    },
  },
  // Notifications
  {
    '8fwidv58': {
      'en': 'RentroCar',
      'ar': 'رينتروكار',
    },
    'mkkb7air': {
      'en': 'Your Renting Requests',
      'ar': 'طلبات الإيجار الخاصة بك',
    },
    'e0xrxvnc': {
      'en': 'You Didn\'t have any notifications',
      'ar': 'معندكش اي اشعارات',
    },
    'hy7ixldw': {
      'en': 'Notification',
      'ar': 'إشعار',
    },
  },
  // cardetails
  {
    'vv3zklwa': {
      'en': 'Car Details',
      'ar': 'تفاصيل السيارة',
    },
    'cwxcgtfp': {
      'en': 'Car Owner',
      'ar': 'مالك السيارة',
    },
    '3xaavowb': {
      'en': '. 5 Trips',
      'ar': '. 5 رحلات',
    },
    '5o72yn0k': {
      'en': 'Trip Dates',
      'ar': 'تواريخ الرحلة',
    },
    'lbttlx0b': {
      'en': 'Description',
      'ar': 'وصف',
    },
  },
  // AddingNewCarPage
  {
    '9yk1kz2v': {
      'en': 'Adding New',
      'ar': 'إضافة جديد',
    },
    '0novlqxu': {
      'en': 'Add Car to Application',
      'ar': 'إضافة سيارة إلى التطبيق',
    },
    '8lwawmib': {
      'en':
          'Here few steps to add new car into application to be available for rent.',
      'ar':
          'فيما يلي بعض الخطوات لإضافة سيارة جديدة إلى التطبيق لتصبح متاحة للإيجار.',
    },
    'm03o91l7': {
      'en': 'Car Info',
      'ar': 'معلومات السيارة',
    },
    'znu4039o': {
      'en': 'Your lessees will use this data to identify your car at pickup.',
      'ar': 'سيستخدم المستأجرون هذه البيانات لتحديد هوية سيارتك عند الاستلام.',
    },
    '0jngmpdi': {
      'en': 'Car Photo',
      'ar': 'صور السيارات',
    },
    '0m1y2h5w': {
      'en':
          'Take good, clear photos to attract the attention of lessees and increase the chance of renting your car.',
      'ar':
          'التقط صورًا جيدة وواضحة لجذب انتباه المستأجرين وزيادة فرصة تأجير سيارتك.',
    },
    'kkarr8xe': {
      'en': 'Car Pricing & Availability',
      'ar': 'أسعار السيارات وتوافرها',
    },
    'uo9xsafm': {
      'en': 'Here you will set car pricing for day and available days for rent',
      'ar': 'هنا يمكنك تحديد أسعار السيارات لليوم والأيام المتاحة للإيجار',
    },
    '5l86kk9u': {
      'en': 'Continue',
      'ar': 'يكمل',
    },
    'cig1crwh': {
      'en': 'Car Info',
      'ar': 'معلومات السيارة',
    },
    'ojhcprsj': {
      'en': 'Your lessees will use this data to identify your car at pickup.',
      'ar':
          'سوف يستخدم المستأجرون هذه البيانات لتحديد هوية سيارتك عند الاستلام.',
    },
    'cfi7e2uz': {
      'en': 'General Info',
      'ar': 'معلومات عامة',
    },
    'dymz3coh': {
      'en': 'Make',
      'ar': 'يصنع',
    },
    'kky89t6f': {
      'en': 'Model',
      'ar': 'نموذج',
    },
    'im94iqq0': {
      'en': 'Year',
      'ar': 'سنة',
    },
    's4u9tmm7': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'rmejaxpf': {
      'en': 'Add any additional details about your car (optional)',
      'ar': 'أضف أي تفاصيل إضافية حول سيارتك (اختياري)',
    },
    '5kmswqqi': {
      'en': 'Make is required',
      'ar': 'الصنع مطلوب',
    },
    'jw96cj79': {
      'en': 'Top long name',
      'ar': 'الاسم الطويل الأعلى',
    },
    'q0bzsa9f': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء اختيار خيار من القائمة المنسدلة',
    },
    '8fpfq0ql': {
      'en': 'Model is required',
      'ar': 'النموذج مطلوب',
    },
    'k45yvxzx': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء اختيار خيار من القائمة المنسدلة',
    },
    'aadz9oyu': {
      'en': 'Year is required',
      'ar': 'السنة مطلوبة',
    },
    'z5zxx25f': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء اختيار خيار من القائمة المنسدلة',
    },
    't0ru5qbz': {
      'en': 'Description is required',
      'ar': 'الوصف مطلوب',
    },
    'z8xrcz9f': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء اختيار خيار من القائمة المنسدلة',
    },
    'u5quvaeg': {
      'en': 'Next',
      'ar': 'التالي',
    },
    'wl9cm9ii': {
      'en': 'Upload Car Photos',
      'ar': 'تحميل صور السيارة',
    },
    'hzg84nbd': {
      'en': 'Add clear photos to help lessees identify your car',
      'ar': 'أضف صورًا واضحة لمساعدة المستأجرين على التعرف على سيارتك',
    },
    'sxrg1mmt': {
      'en': 'Vehicle Images',
      'ar': 'صور المركبات',
    },
    '3i9kw1ug': {
      'en': 'Front',
      'ar': 'أمام',
    },
    'dr45yl3y': {
      'en': 'Back',
      'ar': 'خلف',
    },
    'vdi2pld0': {
      'en': 'Left Side',
      'ar': 'الجانب الأيسر',
    },
    'hc9fudng': {
      'en': 'Right Side',
      'ar': 'الجانب الأيمن',
    },
    'iv1xp6x2': {
      'en': 'Interior',
      'ar': 'الداخلية',
    },
    'nibc2e2s': {
      'en': 'Trunk',
      'ar': 'صُندُوق',
    },
    'a44qowgm': {
      'en': 'Photo Guidelines',
      'ar': 'إرشادات التصوير الفوتوغرافي',
    },
    '71v652ug': {
      'en': 'Make sure photos are clear and well-lit',
      'ar': 'تأكد من أن الصور واضحة ومضاءة بشكل جيد',
    },
    'ok0jl7c1': {
      'en': 'Show all sides of the car clearly',
      'ar': 'إظهار جميع جوانب السيارة بوضوح',
    },
    'lbrck4p5': {
      'en': 'Include interior shots showing seats and dashboard',
      'ar': 'تتضمن لقطات داخلية تُظهر المقاعد ولوحة القيادة',
    },
    '2e8mw8fb': {
      'en': 'Avoid blurry or dark images',
      'ar': 'تجنب الصور الضبابية أو المظلمة',
    },
    '1dn0nuwq': {
      'en': 'Continue',
      'ar': 'يكمل',
    },
    'gyptige1': {
      'en': 'Car Pricing & Availability',
      'ar': 'أسعار السيارات وتوافرها',
    },
    '0gslohsr': {
      'en': 'Here you will set car pricing for day and available days for rent',
      'ar': 'هنا يمكنك تحديد أسعار السيارات لليوم والأيام المتاحة للإيجار',
    },
    'aufbc55t': {
      'en': 'Pricing Info',
      'ar': 'معلومات التسعير',
    },
    'iwp63g95': {
      'en': 'car price',
      'ar': 'سعر السيارة',
    },
    '97txl07x': {
      'en': 'EGP/DAY',
      'ar': 'جنيه مصري/يوم',
    },
    'teemipsf': {
      'en': 'Car Availabilty',
      'ar': 'توفر السيارة',
    },
    'aq49ullp': {
      'en': 'Maximum Rent days',
      'ar': 'الحد الأقصى لأيام الإيجار',
    },
    'sojtl19k': {
      'en': 'Save Car Data',
      'ar': 'حفظ بيانات السيارة',
    },
    'foervws1': {
      'en': 'car price is required',
      'ar': 'سعر السيارة مطلوب',
    },
    '8hnzojwq': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء اختيار خيار من القائمة المنسدلة',
    },
    'cc5wskvk': {
      'en': 'Maximum Rent days is required',
      'ar': 'الحد الأقصى لأيام الإيجار مطلوب',
    },
    'wtxdogvr': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء اختيار خيار من القائمة المنسدلة',
    },
    'ahqswmr6': {
      'en': 'Done',
      'ar': 'تم',
    },
    '5fdgc0yp': {
      'en':
          'Car Added Successfully, but you have to validate your car with documents to make it avilable for rent! ',
      'ar':
          'تمت إضافة السيارة بنجاح، ولكن عليك التحقق من صحة سيارتك بالوثائق لتصبح متاحة للإيجار!',
    },
    'ktznn26t': {
      'en': 'Please Contact Whatsapp',
      'ar': 'يرجى التواصل عبر الواتساب',
    },
    '6i1pt04i': {
      'en': 'Back To My cars',
      'ar': 'العودة إلى سياراتي',
    },
  },
  // edit_profile
  {
    'yv1nyjps': {
      'en': 'Your Name',
      'ar': 'اسمك',
    },
    'bd2hrkgv': {
      'en': 'Pickup and Return Location Info',
      'ar': 'معلومات عن موقع الاستلام والإرجاع',
    },
    '32p8vukt': {
      'en': 'Government',
      'ar': 'حكومة',
    },
    'jzxhzs7t': {
      'en': 'City',
      'ar': 'مدينة',
    },
    'umjy6cmx': {
      'en': 'Address',
      'ar': 'عنوان',
    },
    'lcc48cq7': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
    },
    'tncufta9': {
      'en': 'Create your Profile',
      'ar': 'إنشاء ملفك الشخصي',
    },
  },
  // booking_summary
  {
    'l2y21fj2': {
      'en': 'Request Car Booking',
      'ar': 'طلب حجز سيارة',
    },
    'cvm7wbhl': {
      'en': '(139 trips)',
      'ar': '(139 رحلة)',
    },
    'fc7im0nm': {
      'en': 'Show Contract !',
      'ar': 'عرض العقد!',
    },
    'vxd7c4hl': {
      'en': 'Trip Dates',
      'ar': 'تواريخ الرحلة',
    },
    '5fye0g88': {
      'en': 'Start Date',
      'ar': 'تاريخ البدء',
    },
    'w3g7b8sb': {
      'en': 'End Date',
      'ar': 'تاريخ النهاية',
    },
    'jmsewga5': {
      'en': 'Renting and Contact Info (payed only)',
      'ar': 'الإيجار ومعلومات الاتصال (المدفوع فقط)',
    },
    'eykmvk2k': {
      'en': 'Contact Now',
      'ar': 'اتصل الآن',
    },
    'c40xcu24': {
      'en': 'Payment Summary',
      'ar': 'ملخص الدفع',
    },
    '0uiw4ih2': {
      'en': 'servise price: 25% (first 6 months)',
      'ar': 'سعر الخدمة: 25% (أول 6 أشهر)',
    },
    'qcmvnnhs': {
      'en': 'insurance deposit\n (back after renting ends):',
      'ar': 'وديعة التأمين\n(تسترد بعد انتهاء الإيجار):',
    },
    'pelmye2g': {
      'en': 'Total Amount',
      'ar': 'المبلغ الإجمالي',
    },
    'h5calqtm': {
      'en': 'Confirm Booking',
      'ar': 'تأكيد الحجز',
    },
    'e0rqboja': {
      'en': 'Pay Now!',
      'ar': 'ادفع الآن!',
    },
    'se0bdux7': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ownerBookingSammary
  {
    'p0nhswdx': {
      'en': 'Request Car Booking',
      'ar': 'طلب حجز سيارة',
    },
    'behww4ll': {
      'en': '(139 trips)',
      'ar': '(139 رحلة)',
    },
    'avstwap7': {
      'en': 'Show Contract !',
      'ar': 'عرض العقد!',
    },
    'p8cfw7g9': {
      'en': 'Trip Dates',
      'ar': 'تواريخ الرحلة',
    },
    'h0972ghd': {
      'en': 'Start Date',
      'ar': 'تاريخ البدء',
    },
    'p1nddpwm': {
      'en': 'End Date',
      'ar': 'تاريخ النهاية',
    },
    'vpeg6syl': {
      'en': 'Renting Info',
      'ar': 'معلومات الإيجار',
    },
    'k79jq4m6': {
      'en': 'Contact Now',
      'ar': 'اتصل الآن',
    },
    '1i2086iv': {
      'en': 'Payment Summary',
      'ar': 'ملخص الدفع',
    },
    '62cbx1li': {
      'en': 'Total Amount',
      'ar': 'المبلغ الإجمالي',
    },
    'nhoo5ct3': {
      'en': 'Accept Booking',
      'ar': 'قبول الحجز',
    },
    'reyzydcr': {
      'en': 'Reject Booking',
      'ar': 'رفض الحجز',
    },
    '1pkgi83x': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // preparingInterview
  {
    '3qa1rshn': {
      'en': 'Important Nots for preparing clinet',
      'ar': 'ملاحظات هامة عند تحضير العميل',
    },
    'isbj3gcq': {
      'en': 'Borrowing Agreement Contract:',
      'ar': 'عقد اتفاقية الاقتراض:',
    },
    'tu2wic38': {
      'en': 'Download contract',
      'ar': 'تنزيل العقد',
    },
    'm1twnkew': {
      'en': 'RentroCar',
      'ar': 'رينتروكار',
    },
    '1dqzsqbp': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // verficationDataForm
  {
    'zh6hyt2f': {
      'en': 'Submit Verfication Data',
      'ar': 'إرسال بيانات التحقق',
    },
    'davn6on2': {
      'en': 'Driver\'s License:',
      'ar': 'رخصة السائق:',
    },
    'j5v4hs9t': {
      'en': 'License Number:',
      'ar': 'رقم الرخصة:',
    },
    'wchmtlpe': {
      'en': 'Issuance Date:',
      'ar': 'تاريخ الإصدار:',
    },
    'j7sutlhf': {
      'en': 'Expiration Date:',
      'ar': 'تاريخ انتهاء الصلاحية:',
    },
    'n45hwic4': {
      'en': 'Identity document:',
      'ar': 'وثيقة الهوية:',
    },
    'hxonmvem': {
      'en':
          'Make sure to the identity in a PDF or JPG format with maximum file size 5 MB.',
      'ar':
          'تأكد من أن الهوية بصيغة PDF أو JPG بحد أقصى لحجم الملف 5 ميجا بايت.',
    },
    'u4kzo3mf': {
      'en': 'Upload Identety',
      'ar': 'تحميل الهوية',
    },
    '3qlhg3w6': {
      'en': 'Proof of residence:- اثبات سكن (وصل)',
      'ar': 'إثبات الإقامة:- اثبات سكن (وصل)',
    },
    'wc988940': {
      'en':
          'Make sure to the document in a PDF or JPG format with maximum file size 5 MB.',
      'ar':
          'تأكد من أن المستند بصيغة PDF أو JPG بحد أقصى لحجم الملف 5 ميجا بايت.',
    },
    'ohderj2j': {
      'en': 'Upload Identety',
      'ar': 'تحميل الهوية',
    },
    'ukfhdpvi': {
      'en': 'Submit Data',
      'ar': 'إرسال البيانات',
    },
    'qkjmang9': {
      'en': 'License Number: is required',
      'ar': 'رقم الترخيص: مطلوب',
    },
    'zk6qw1hs': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '4yw5jrsr': {
      'en': 'Issuance Date: is required',
      'ar': '',
    },
    '9to1sxdc': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'rh0foxss': {
      'en': 'Expiration Date: is required',
      'ar': '',
    },
    'fde0zttu': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'erokszve': {
      'en': 'Home',
      'ar': '',
    },
  },
  // CarCard
  {
    'wgakql1z': {
      'en': 'N/A',
      'ar': 'غير متاح',
    },
  },
  // CarCardBig
  {
    'idl0k8ui': {
      'en': '. 5 Trips',
      'ar': '. 5 رحلات',
    },
    'hig0cuud': {
      'en': 'Details',
      'ar': 'تفاصيل',
    },
  },
  // checkout_dialog
  {
    'bwlvo4r7': {
      'en': 'Checkout',
      'ar': 'الدفع',
    },
    'ggps9kt3': {
      'en': 'Fill in the information below to apply your rental request.',
      'ar': 'قم بملء المعلومات أدناه لتقديم طلب الإيجار الخاص بك.',
    },
    'wvdtg50n': {
      'en': 'Total',
      'ar': 'المجموع',
    },
    'h1rvft3t': {
      'en': 'Pay now with credit card',
      'ar': 'ادفع الآن باستخدام بطاقة الائتمان',
    },
    'k7omxv10': {
      'en': 'Or use an option below',
      'ar': 'أو استخدم أحد الخيارات أدناه',
    },
    'wa559isa': {
      'en': 'Pay with digital wallet',
      'ar': 'الدفع باستخدام المحفظة الرقمية',
    },
  },
  // progressbar
  {
    '3uuwhd0m': {
      'en': '50%',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    '3oxmusza': {
      'en': 'TextField',
      'ar': 'حقل النص',
    },
    'eahlfjkr': {
      'en': '',
      'ar': '',
    },
    'dlqxzgqm': {
      'en': '',
      'ar': '',
    },
    'aaz5wpj1': {
      'en': '',
      'ar': '',
    },
    'e7lef227': {
      'en': '',
      'ar': '',
    },
    'ubxyt1sd': {
      'en': '',
      'ar': '',
    },
    'uluq87jr': {
      'en': '',
      'ar': '',
    },
    '6wk4u5kn': {
      'en': '',
      'ar': '',
    },
    'ewdarvx9': {
      'en': '',
      'ar': '',
    },
    'ca7mp0q8': {
      'en': '',
      'ar': '',
    },
    'iyswokc7': {
      'en': '',
      'ar': '',
    },
    '2e1cujrw': {
      'en': '',
      'ar': '',
    },
    'ekklmk0i': {
      'en': '',
      'ar': '',
    },
    '8pkdkksw': {
      'en': '',
      'ar': '',
    },
    '1ryepsuw': {
      'en': '',
      'ar': '',
    },
    'sowayayp': {
      'en': '',
      'ar': '',
    },
    '1qxefv6z': {
      'en': '',
      'ar': '',
    },
    'nj7z4n35': {
      'en': '',
      'ar': '',
    },
    'pzqg8dwk': {
      'en': '',
      'ar': '',
    },
    'puaqftn0': {
      'en': '',
      'ar': '',
    },
    'kcw0r2er': {
      'en': '',
      'ar': '',
    },
    'tezly2h3': {
      'en': '',
      'ar': '',
    },
    '2iaacxup': {
      'en': '',
      'ar': '',
    },
    'fkmg735h': {
      'en': '',
      'ar': '',
    },
    'w9e84l8o': {
      'en': '',
      'ar': '',
    },
    'u5pcagvl': {
      'en': '',
      'ar': '',
    },
    'jqpepkdk': {
      'en': '',
      'ar': '',
    },
    '4nbcfbfl': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
