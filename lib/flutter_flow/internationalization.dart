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

  static List<String> languages() => ['en', 'ja'];

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
    String? jaText = '',
  }) =>
      [enText, jaText][languageIndex] ?? '';

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
  // Z_FinalPage
  {
    '7lml0zh8': {
      'en': 'Thank You',
      'ja': '入力の完了',
    },
    '9ejibji4': {
      'en':
          'Thank you for submitting your incident information. Your information has been recorded.',
      'ja': '請求情報を入力いただきまして、ありがとうございます。',
    },
    'qavtkddu': {
      'en': 'Click the button below to see a summary of your claim details.',
      'ja': '下記のボタンから入力内容を確認いただくことができます。',
    },
    'kyzajp4v': {
      'en': 'Claim Summary',
      'ja': '請求内容の確認',
    },
    'zjuvvn8o': {
      'en': '◀ Previous',
      'ja': '◀ 戻る',
    },
    '3f2lq2zy': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // TR100300
  {
    'sq5b7n80': {
      'en': 'Claimant Details',
      'ja': '保険金請求者の情報',
    },
    'j2agkk27': {
      'en': 'Please enter information about the insurance claimant.',
      'ja': '保険金請求者の情報を入力してください',
    },
    'dmrcnnwe': {
      'en': '*indicates a required question',
      'ja': '* は入力必須項目です。',
    },
    'bihthph5': {
      'en': 'Claimant Full Name',
      'ja': '請求者名',
    },
    's7qdbi3h': {
      'en': 'Family Name (kanji)*',
      'ja': '姓(漢字)',
    },
    'dvzdrob0': {
      'en': 'Given Name (kanji)',
      'ja': '名(漢字)',
    },
    '7wly58nh': {
      'en': 'Family Name (kana)*',
      'ja': '姓(カナ)',
    },
    'fjurhu5p': {
      'en': 'Given Name (kana)',
      'ja': '名(カナ)',
    },
    '52yvl28g': {
      'en': 'Relationship to Insured',
      'ja': '被保険者との関係',
    },
    'xiv5wtmh': {
      'en': 'Relationship',
      'ja': '関係',
    },
    'r8a4lpo0': {
      'en': 'Search...',
      'ja': '',
    },
    'dgm6dj1f': {
      'en': 'Insured',
      'ja': '被保険者本人',
    },
    'fk406clq': {
      'en': 'Parent',
      'ja': '親権者',
    },
    'bes2hudc': {
      'en': 'Other',
      'ja': 'その他',
    },
    'vnbitsbt': {
      'en': 'Insured Full Name',
      'ja': '被保険者名',
    },
    'yq9wzjze': {
      'en': 'Same as the claimant',
      'ja': '保険金請求者に同じ',
    },
    'wr10xavw': {
      'en': 'Family Name (kanji)*',
      'ja': '姓(漢字)',
    },
    'qwue5iex': {
      'en': 'Given Name (kanji)',
      'ja': '名(漢字)',
    },
    '0af7eiev': {
      'en': 'Family Name (kana)*',
      'ja': '姓(カナ)',
    },
    'a2xghnjs': {
      'en': 'Given Name (kana)',
      'ja': '名(カナ)',
    },
    'rots98qt': {
      'en': 'Address',
      'ja': '住所',
    },
    '1r1367d3': {
      'en': 'Postal Code',
      'ja': '郵便番号',
    },
    'qqgxpuc6': {
      'en': 'Prefecture',
      'ja': '都道府県',
    },
    'dsxgqy5i': {
      'en': 'Search',
      'ja': '検索',
    },
    'lim1mmx0': {
      'en': 'Aichi',
      'ja': '愛知県',
    },
    '2ai3sle4': {
      'en': 'Akita',
      'ja': '秋田県',
    },
    '35vzljjg': {
      'en': 'Aomori',
      'ja': '青森県',
    },
    '6k7l69mt': {
      'en': 'Chiba',
      'ja': '千葉県',
    },
    'x1kr03sg': {
      'en': 'Ehime',
      'ja': '愛媛県',
    },
    '7vslygja': {
      'en': 'Fukui',
      'ja': '福井県',
    },
    'v5as05lc': {
      'en': 'Fukuoka',
      'ja': '福岡県',
    },
    'y9yznzkv': {
      'en': 'Fukushima',
      'ja': '福島県',
    },
    'uoav6lfd': {
      'en': 'Gifu',
      'ja': '岐阜県',
    },
    'xtio0xs5': {
      'en': 'Gunma',
      'ja': '群馬県',
    },
    '6vepw9ru': {
      'en': 'Hiroshima',
      'ja': '広島県',
    },
    'p4yi2k65': {
      'en': 'Hokkaido',
      'ja': '北海道',
    },
    'eiu08379': {
      'en': 'Hyogo',
      'ja': '兵庫県',
    },
    'cjks1waq': {
      'en': 'Ibaraki',
      'ja': '茨城県',
    },
    '7j4lthxb': {
      'en': 'Ishikawa',
      'ja': '石川県',
    },
    'cznu9toj': {
      'en': 'Iwate',
      'ja': '岩手県',
    },
    'mfvjxj9q': {
      'en': 'Kagawa',
      'ja': '香川県',
    },
    '216grpvx': {
      'en': 'Kagoshima',
      'ja': '鹿児島県',
    },
    'gbq88vpg': {
      'en': 'Kanagawa',
      'ja': '神奈川県',
    },
    'ilzsqkfk': {
      'en': 'Kochi',
      'ja': '高知県',
    },
    'e0f294ef': {
      'en': 'Kumamoto',
      'ja': '熊本県',
    },
    'e2bm9i1d': {
      'en': 'Kyoto',
      'ja': '京都府',
    },
    '5vcgz0ur': {
      'en': 'Mie',
      'ja': '三重県',
    },
    'wufve2wv': {
      'en': 'Miyagi',
      'ja': '宮城県',
    },
    '440w3iqh': {
      'en': 'Miyazaki',
      'ja': '宮崎県',
    },
    '9u3fgsxw': {
      'en': 'Nagano',
      'ja': '長野県',
    },
    'yyvu3ehm': {
      'en': 'Nagasaki',
      'ja': '長崎県',
    },
    '8jtdq322': {
      'en': 'Nara',
      'ja': '奈良県',
    },
    'eudcoekk': {
      'en': 'Niigata',
      'ja': '新潟県',
    },
    'a6qakw0p': {
      'en': 'Oita',
      'ja': '大分県',
    },
    '2g84rwdx': {
      'en': 'Okayama',
      'ja': '岡山県',
    },
    '9ktbv3fj': {
      'en': 'Okinawa',
      'ja': '沖縄県',
    },
    'mkme5epy': {
      'en': 'Osaka',
      'ja': '大阪府',
    },
    'wlrkxxt7': {
      'en': 'Saga',
      'ja': '佐賀県',
    },
    '7qceuitt': {
      'en': 'Saitama',
      'ja': '埼玉県',
    },
    'h2ymm6m2': {
      'en': 'Shiga',
      'ja': '滋賀県',
    },
    'qoovl40v': {
      'en': 'Shimane',
      'ja': '島根県',
    },
    'pqhwlz7r': {
      'en': 'Shizuoka',
      'ja': '静岡県',
    },
    '54xsdgr9': {
      'en': 'Tochigi',
      'ja': '栃木県',
    },
    'cvk5p2s4': {
      'en': 'Tokushima',
      'ja': '徳島県',
    },
    '97kwdoy2': {
      'en': 'Tokyo',
      'ja': '東京都',
    },
    '3gm3b816': {
      'en': 'Tottori',
      'ja': '鳥取県',
    },
    '3msv8uos': {
      'en': 'Toyama',
      'ja': '富山県',
    },
    '1ghh9kc8': {
      'en': 'Wakayama',
      'ja': '和歌山県',
    },
    'za1igdsn': {
      'en': 'Yamagata',
      'ja': '山形県',
    },
    '94b1n9cf': {
      'en': 'Yamaguchi',
      'ja': '山口県',
    },
    'vlcq25gr': {
      'en': 'Yamanashi',
      'ja': '山梨県',
    },
    '5czmrjmp': {
      'en': 'Address 1',
      'ja': '住所1',
    },
    'n1dx6eju': {
      'en': 'Address 2',
      'ja': '住所2',
    },
    'x5rqaoi0': {
      'en': 'Date of Birth',
      'ja': '生年月日',
    },
    '99whzkqx': {
      'en': '',
      'ja': '',
    },
    '17xrhhl2': {
      'en': 'Gender',
      'ja': '性別',
    },
    '0w1odoyu': {
      'en': 'Male',
      'ja': '男性',
    },
    'yfyudr4d': {
      'en': 'Female',
      'ja': '女性',
    },
    'huuneh2k': {
      'en': 'Phone Number',
      'ja': '電話番号',
    },
    'rrw74l3h': {
      'en': '',
      'ja': '',
    },
    'c7qw4zn5': {
      'en': '(例）09012345678',
      'ja': '(例）09012345678',
    },
    '6ft2mxup': {
      'en': 'Daytime Contact Number',
      'ja': '日中連絡先',
    },
    'yyd74d3v': {
      'en': '',
      'ja': '',
    },
    'gey5uk5s': {
      'en': '(例）09012345678',
      'ja': '(例）09012345678',
    },
    'xfs0pwwr': {
      'en': 'Email Address',
      'ja': '電子メールアドレス',
    },
    'uhc8hbyb': {
      'en': '',
      'ja': '',
    },
    'dbmoxeu8': {
      'en': '◀ Previous',
      'ja': '◀ 戻る',
    },
    'uhlvsitm': {
      'en': 'Next ▶',
      'ja': '次へ ▶',
    },
    'vbdp7shr': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // TR100400
  {
    'r4w60yp8': {
      'en': ' Claim Type',
      'ja': '請求の種類',
    },
    'h2621033': {
      'en': 'Please select your coverage',
      'ja': '加入されている保険を選択してください',
    },
    'bxivok8q': {
      'en': 'Injury',
      'ja': 'おけが（治療費用）',
    },
    'zexhpn9s': {
      'en': 'Sick',
      'ja': 'ご病気（治療費用）',
    },
    'sa6gb49h': {
      'en': 'Liability',
      'ja': '賠償責任',
    },
    'ex830rbx': {
      'en': 'Damage to Personal Belonging',
      'ja': '携行品損害',
    },
    'e39gsedx': {
      'en': 'Delayed Baggage',
      'ja': '航空機寄託手荷物遅延',
    },
    'dyvi2f5p': {
      'en': 'Flight Delay',
      'ja': '航空機遅延',
    },
    'ksesof2s': {
      'en': 'Other',
      'ja': 'その他',
    },
    'crd7ajq4': {
      'en': 'A selection is requred',
      'ja': '選択が必要です',
    },
    'dyihc3na': {
      'en': '◀ Previous',
      'ja': '◀ 戻る',
    },
    'iuzhv0to': {
      'en': 'Next ▶',
      'ja': '次へ ▶',
    },
    'zb47qndg': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // TR100510
  {
    'rm4a4khq': {
      'en': 'Date & Time',
      'ja': '日時',
    },
    '88titbdx': {
      'en': 'Please enter the date and time of injury',
      'ja': ' おけがをされた日時を入力してください',
    },
    'r10cmwpf': {
      'en': 'Please enter the date and time of accident',
      'ja': '事象が発生した日時を入力してください',
    },
    'hjj7jycp': {
      'en': 'Accident Date (Local Time)',
      'ja': ' おけがをされた日（現地時間）',
    },
    'cv0iaqk1': {
      'en': 'Accident Date (Local Time)',
      'ja': '事象が発生した日（現地時間）',
    },
    '86m28jzy': {
      'en': '',
      'ja': '',
    },
    '7xy48a4b': {
      'en': 'I don\'t know',
      'ja': '不明',
    },
    'pnkzs3gx': {
      'en': '◀ Previous',
      'ja': '◀ 戻る',
    },
    'etijtm8m': {
      'en': 'Next ▶',
      'ja': '次へ ▶',
    },
    'f63ox17a': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // TR100610
  {
    'plid4lbk': {
      'en': 'Location',
      'ja': '場所',
    },
    '1rlvy8nl': {
      'en': 'Please enter the location of injury',
      'ja': ' おけがをされた場所を入力してください',
    },
    'zenxt3t8': {
      'en': 'Please enter the location of sick',
      'ja': '初めて症状が出た場所を入力してください',
    },
    'lxyzefho': {
      'en': 'Please enter the location of accident',
      'ja': '事象が発生した場所を入力してください',
    },
    'stza48it': {
      'en': '*indicates a required question',
      'ja': '* は入力必須項目です。',
    },
    'cxgidino': {
      'en': 'Region',
      'ja': '地域',
    },
    'za22x9sb': {
      'en': 'Search...',
      'ja': '',
    },
    'tnqalg2x': {
      'en': 'Option 1',
      'ja': '',
    },
    'pabe1fac': {
      'en': 'Option 2',
      'ja': '',
    },
    'hgb3oeg7': {
      'en': 'Other',
      'ja': 'その他',
    },
    'cdeuvajl': {
      'en': 'Country',
      'ja': '国名',
    },
    'gq14l21o': {
      'en': 'Search...',
      'ja': '',
    },
    'dhsa7j8u': {
      'en': 'Option 1',
      'ja': '',
    },
    'ce51osqo': {
      'en': 'Option 2',
      'ja': '',
    },
    '7eukc05a': {
      'en': 'Other',
      'ja': 'その他',
    },
    'lthdeg2v': {
      'en': 'City',
      'ja': '都市名',
    },
    'kjbxgxm5': {
      'en': 'Location Name',
      'ja': '場所',
    },
    'uvd1mh84': {
      'en': '◀ Previous',
      'ja': '◀ 戻る',
    },
    'ow93zfum': {
      'en': 'Next ▶',
      'ja': '次へ ▶',
    },
    'mm4pwbx5': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // TR100710
  {
    '3aqln0mv': {
      'en': 'Details',
      'ja': '詳細',
    },
    'prfp31qp': {
      'en': 'Please enter your injury details',
      'ja': ' おけがをされた状況を入力してください',
    },
    'iv1a1q0g': {
      'en': 'Please enter your sick details',
      'ja': 'ご病気の状況を入力してください',
    },
    'cwd0cf59': {
      'en': 'Please enter your accident details',
      'ja': '事象の状況を入力してください',
    },
    'udy9j8n3': {
      'en': 'Please enter your flight delay details',
      'ja': '航空機遅延について詳細を入力してください',
    },
    'dzi9lv4h': {
      'en': '',
      'ja': '',
    },
    'r3drr1jc': {
      'en': 'Details',
      'ja': '詳細',
    },
    'g9z5gwyz': {
      'en': '◀ Previous',
      'ja': '◀ 戻る',
    },
    '62l6qip4': {
      'en': 'Done',
      'ja': '完了',
    },
    'gf5eicpi': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // TR100520
  {
    '5j8fa6y0': {
      'en': 'llness Details',
      'ja': '病気の状況',
    },
    '3w2g4bt9': {
      'en': 'Please enter your sick condition',
      'ja': 'ご病気の状況等について入力してください',
    },
    'vf3kf7sx': {
      'en': '*indicates a required question',
      'ja': '* は入力必須項目です。',
    },
    'xezbizt1': {
      'en': 'Date symptoms first appeared(Local Time)',
      'ja': '初めて症状が出た日（現地時間）',
    },
    '7tg01cid': {
      'en': '',
      'ja': '',
    },
    'kn2e05s2': {
      'en': 'I don\'t know',
      'ja': '不明',
    },
    'a0vu3xyh': {
      'en': 'Date of first visit to the hospital(Local Time)',
      'ja': '初めて受診された日（現地時間）',
    },
    'gwvlqete': {
      'en': '',
      'ja': '',
    },
    '4cxoinm2': {
      'en': 'I don\'t know',
      'ja': '不明',
    },
    '68ukhxih': {
      'en': 'Date of first visit to the hospital after returing to Japan',
      'ja': '日本ご帰国後に初めて受診された場合には、日本に帰国された日を入力してください。',
    },
    'qnbcoii6': {
      'en': '',
      'ja': '',
    },
    'aphlwche': {
      'en': 'I don\'t know',
      'ja': '不明',
    },
    'kkxc3q33': {
      'en': '◀ Previous',
      'ja': '◀ 戻る',
    },
    'wh03kkuw': {
      'en': 'Next ▶',
      'ja': '次へ ▶',
    },
    'zodzmaej': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // TR100740
  {
    'y95dgn2r': {
      'en': 'Damage Status',
      'ja': '損害状況',
    },
    'jwy95cix': {
      'en': 'Please select the condition of your belongings',
      'ja': '持ち物の状態を選択してください',
    },
    'n6dhdy5x': {
      'en': '*indicates a required question',
      'ja': '* は入力必須項目です。',
    },
    '3301sfnn': {
      'en': 'Condition',
      'ja': '状態',
    },
    'a4vwgsgf': {
      'en': 'Search...',
      'ja': '',
    },
    'yrupp1bf': {
      'en': 'Damage',
      'ja': '破損',
    },
    'atmepz26': {
      'en': 'Theft',
      'ja': '盗難',
    },
    'ynv9pwfp': {
      'en': 'Other',
      'ja': 'その他',
    },
    'c67q244k': {
      'en': 'Police Report',
      'ja': '警察の報告書',
    },
    '12i6f22c': {
      'en': 'Police Station',
      'ja': '警察署名',
    },
    '43vinmcy': {
      'en': 'Police Record Number',
      'ja': '受理番号',
    },
    'kds31oo6': {
      'en': '◀ Previous',
      'ja': '◀ 戻る',
    },
    'i4v044dh': {
      'en': 'Next ▶',
      'ja': '次へ ▶',
    },
    'n85z2ck4': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // TR100550
  {
    'xzqq8qz9': {
      'en': 'Baggage Delay',
      'ja': '手荷物の遅延',
    },
    'bos0ix05': {
      'en': 'Please select the detail for baggage delay',
      'ja': '手荷物遅延の理由を選択してください',
    },
    'lag2t199': {
      'en':
          'I failed to pick up baggage within 6 hours of arrival at destination',
      'ja': '目的地において、航空機の到着時間から６時間以内に手荷物を受け取れなかった',
    },
    '9gdsjajh': {
      'en': 'Other reason',
      'ja': 'その他',
    },
    '5pahlh04': {
      'en': '◀ Previous',
      'ja': '◀ 戻る',
    },
    '2zf3xg2f': {
      'en': 'Next ▶',
      'ja': '次へ ▶',
    },
    'p3ovrrq0': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // TR100650
  {
    '6smn290n': {
      'en': 'Flight Details',
      'ja': 'フライトの詳細',
    },
    'um25xhxd': {
      'en': 'Please enter the detail of your flight',
      'ja': 'フライトの詳細を入力してください',
    },
    '7nnrijif': {
      'en': '*indicates a required question',
      'ja': '* は入力必須項目です。',
    },
    'ef77yl7k': {
      'en': 'Arrival Airport Name',
      'ja': '到着空港名',
    },
    '4dg877fh': {
      'en': 'Airport Name',
      'ja': '空港名',
    },
    'fnlg0cq7': {
      'en': 'Arrival Date and Time',
      'ja': '到着日時',
    },
    '11h1adbd': {
      'en': '',
      'ja': '',
    },
    '686gua7j': {
      'en': 'I don\'t know',
      'ja': '不明',
    },
    'y1d27sfe': {
      'en': 'Arrival Flight Number',
      'ja': '到着便名',
    },
    'y4z6du6o': {
      'en': 'Flight Number',
      'ja': '便名',
    },
    'l6whtweq': {
      'en': '◀ Previous',
      'ja': '◀ 戻る',
    },
    'dy1oceo0': {
      'en': 'Next ▶',
      'ja': '次へ ▶',
    },
    '6wdq9nj9': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // TR100750
  {
    'slux8ils': {
      'en': 'Your Belongings',
      'ja': '手荷物のステータス',
    },
    'fttk8ocz': {
      'en': '*indicates a required question',
      'ja': '* は入力必須項目です。',
    },
    '4id9o7lv': {
      'en': 'Please enter the belongings pickup date and time',
      'ja': '荷物の受け取り日時を入力してください',
    },
    'pr5ijc0u': {
      'en': '',
      'ja': '',
    },
    'jnl9kg0q': {
      'en': 'I don\'t know',
      'ja': '不明',
    },
    '1ekm4sdz': {
      'en': 'Please enter the belongings pickup location',
      'ja': '荷物の受け取り日時を入力してください',
    },
    'w6x9tlwp': {
      'en': 'Postal Code',
      'ja': '郵便番号',
    },
    'ddodq64g': {
      'en': 'Location',
      'ja': '(例)ロンドンのXXXホテル',
    },
    'sc3okhl6': {
      'en': '◀ Previous',
      'ja': '◀ 戻る',
    },
    'cco4d2ag': {
      'en': 'Done',
      'ja': '完了',
    },
    'h2ucsl63': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // BasePage
  {
    'oydqv9p7': {
      'en': 'Header',
      'ja': '',
    },
    '3inbimr1': {
      'en': '*indicates a required question',
      'ja': '* は必須の質問を示します',
    },
    '3pu43926': {
      'en': 'Title',
      'ja': '',
    },
    'sp3s3li2': {
      'en': 'Subtitle',
      'ja': '',
    },
    'i0csf6b7': {
      'en': 'Full Name',
      'ja': 'フルネーム',
    },
    'lp8y3z1o': {
      'en': 'Family Name (kanji)*',
      'ja': '姓(漢字)',
    },
    '0j3xwbbq': {
      'en': 'Given Name (kanji)',
      'ja': '名(漢字)',
    },
    'akxb96xz': {
      'en': 'Family Name (kana)*',
      'ja': '姓(かな・カナ)',
    },
    'gdk2d1y6': {
      'en': 'Given Name (kana)',
      'ja': '名(かな・カナ)',
    },
    'j3oziibs': {
      'en': 'Address',
      'ja': '住所',
    },
    'kt94g5iv': {
      'en': 'Postal Code',
      'ja': '郵便番号',
    },
    '0f0fkbh6': {
      'en': 'Prefecture',
      'ja': '県',
    },
    '6kjrnnlx': {
      'en': 'Search',
      'ja': '検索',
    },
    '3apzamn6': {
      'en': 'Aichi',
      'ja': '愛知県',
    },
    'a1mcv7jp': {
      'en': 'Akita',
      'ja': '秋田県',
    },
    'jhchv06u': {
      'en': 'Aomori',
      'ja': '青森県',
    },
    'x3ux27q2': {
      'en': 'Chiba',
      'ja': '千葉県',
    },
    'qsp6wkxy': {
      'en': 'Ehime',
      'ja': '愛媛県',
    },
    'd9f203aj': {
      'en': 'Fukui',
      'ja': '福井県',
    },
    'wn1iqtep': {
      'en': 'Fukuoka',
      'ja': '福岡県',
    },
    'oi2dd6m6': {
      'en': 'Fukushima',
      'ja': '福島県',
    },
    'v0emlles': {
      'en': 'Gifu',
      'ja': '岐阜県',
    },
    'ackvokyr': {
      'en': 'Gunma',
      'ja': '群馬県',
    },
    '3svrnijr': {
      'en': 'Hiroshima',
      'ja': '広島県',
    },
    'aqa4cvzb': {
      'en': 'Hokkaido',
      'ja': '北海道',
    },
    '6dk0ussu': {
      'en': 'Hyogo',
      'ja': '兵庫県',
    },
    'i2ukgcvu': {
      'en': 'Ibaraki',
      'ja': '茨城県',
    },
    't8s1x4bu': {
      'en': 'Ishikawa',
      'ja': '石川県',
    },
    '8q7gs5vj': {
      'en': 'Iwate',
      'ja': '岩手県',
    },
    'n6mr8gku': {
      'en': 'Kagawa',
      'ja': '香川県',
    },
    'yd3xo86i': {
      'en': 'Kagoshima',
      'ja': '鹿児島県',
    },
    '0h2iyavz': {
      'en': 'Kanagawa',
      'ja': '神奈川県',
    },
    '4o1u6dq8': {
      'en': 'Kochi',
      'ja': '高知県',
    },
    'glvea2qy': {
      'en': 'Kumamoto',
      'ja': '熊本県',
    },
    'xz90z1um': {
      'en': 'Kyoto',
      'ja': '京都府',
    },
    'h9mcjgzw': {
      'en': 'Mie',
      'ja': '三重県',
    },
    '2tkneexo': {
      'en': 'Miyagi',
      'ja': '宮城県',
    },
    't3217kpt': {
      'en': 'Miyazaki',
      'ja': '宮崎県',
    },
    '2bnhyxiz': {
      'en': 'Nagano',
      'ja': '長野県',
    },
    'pp8uyj7a': {
      'en': 'Nagasaki',
      'ja': '長崎県',
    },
    'aoxwtl36': {
      'en': 'Nara',
      'ja': '奈良県',
    },
    'zhl63nz5': {
      'en': 'Niigata',
      'ja': '新潟県',
    },
    'ks2am5p2': {
      'en': 'Oita',
      'ja': '大分県',
    },
    'k171iw2y': {
      'en': 'Okayama',
      'ja': '岡山県',
    },
    'p8np8l80': {
      'en': 'Okinawa',
      'ja': '沖縄県',
    },
    '0dj4zp27': {
      'en': 'Osaka',
      'ja': '大阪府',
    },
    'jcdmxyd0': {
      'en': 'Saga',
      'ja': '佐賀県',
    },
    '2lj6jhea': {
      'en': 'Saitama',
      'ja': '埼玉県',
    },
    '70qfwzun': {
      'en': 'Shiga',
      'ja': '滋賀県',
    },
    'x5bbpxze': {
      'en': 'Shimane',
      'ja': '島根県',
    },
    'outjxjhj': {
      'en': 'Shizuoka',
      'ja': '静岡県',
    },
    'mutl1n3f': {
      'en': 'Tochigi',
      'ja': '栃木県',
    },
    '54sqpu4w': {
      'en': 'Tokushima',
      'ja': '徳島県',
    },
    'jrezt9cb': {
      'en': 'Tokyo',
      'ja': '東京都',
    },
    'e1d9wxm7': {
      'en': 'Tottori',
      'ja': '鳥取県',
    },
    'pe4z6hte': {
      'en': 'Toyama',
      'ja': '富山県',
    },
    'cxge9aqo': {
      'en': 'Wakayama',
      'ja': '和歌山県',
    },
    'i2e124s2': {
      'en': 'Yamagata',
      'ja': '山形県',
    },
    'jegubu1q': {
      'en': 'Yamaguchi',
      'ja': '山口県',
    },
    'ljtppfdc': {
      'en': 'Yamanashi',
      'ja': '山梨県',
    },
    'flwzqsg3': {
      'en': 'Address Line 1',
      'ja': '住所1',
    },
    'd0az6jpf': {
      'en': 'Address Line 2',
      'ja': '住所2',
    },
    'v0yndioc': {
      'en': 'Section Title (Dropdown)',
      'ja': '',
    },
    'v5d2a0ty': {
      'en': 'Select...',
      'ja': '',
    },
    'a7jzh5ir': {
      'en': 'Search...',
      'ja': '',
    },
    '7l7wtfke': {
      'en': 'Option 1',
      'ja': '',
    },
    'of77yjsd': {
      'en': 'Option 2',
      'ja': '',
    },
    'pvxwn5rn': {
      'en': 'Other',
      'ja': 'その他',
    },
    'vwlwg476': {
      'en': 'Section Title (Radio List)',
      'ja': '',
    },
    'c89l6muu': {
      'en': 'Option 1',
      'ja': '',
    },
    'isd77vu2': {
      'en': 'Option 2',
      'ja': '',
    },
    '8e4okd5a': {
      'en': 'Option 3',
      'ja': '',
    },
    '9qc1p0gu': {
      'en': 'I don\'t know',
      'ja': '不明',
    },
    '92c6p3aq': {
      'en': 'Section Title (Checkbox Group)',
      'ja': '',
    },
    'dh60vqze': {
      'en': 'Option 1',
      'ja': '',
    },
    'wx4ayz9a': {
      'en': 'Option 2',
      'ja': '',
    },
    '2yuy8r1x': {
      'en': 'Option 3',
      'ja': '',
    },
    '84eabi68': {
      'en': 'Section Title (Image)',
      'ja': '',
    },
    'zyhde93c': {
      'en': 'Section Title (Tiles)',
      'ja': '',
    },
    'nf0vg5xo': {
      'en': 'Button Text',
      'ja': '',
    },
    'gkdyharz': {
      'en': 'Button Text',
      'ja': '',
    },
    'm1ywc6ne': {
      'en': 'Button Text',
      'ja': '',
    },
    'iq2htrbg': {
      'en': 'Date Picker',
      'ja': '',
    },
    'ltk10l2x': {
      'en': '',
      'ja': '',
    },
    'nrzuprsh': {
      'en': '◀ Previous',
      'ja': '◀ 戻る',
    },
    'zarz8lm5': {
      'en': 'Next ▶',
      'ja': '次へ ▶',
    },
    'sod88q7e': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // TR100100
  {
    '48l6iqtk': {
      'en': 'Insurance Type',
      'ja': '保険の種類',
    },
    'sfpjglua': {
      'en': 'Please select an insurance type',
      'ja': '加入されている保険の種類を選択してください',
    },
    '73z3yklc': {
      'en': 'Travel Insurance',
      'ja': '任意保険',
    },
    'zdxl6gwc': {
      'en': 'Credit Card ',
      'ja': 'クレジットカード付帯',
    },
    '7e421ote': {
      'en': 'A selection is required',
      'ja': '選択が必要です',
    },
    'xgrdiqi3': {
      'en': 'Next ▶',
      'ja': '次へ ▶',
    },
    'vkk375yd': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // TR100200
  {
    '8oulenu7': {
      'en': 'Policy Number',
      'ja': '保険証券番号',
    },
    '5evk49fu': {
      'en': 'Please enter your policy information',
      'ja': '保険証券番号を入力してください',
    },
    'a2yb3le8': {
      'en': '*indicates a required question',
      'ja': '* は入力必須項目です。',
    },
    'cvda1vky': {
      'en': 'Policy Number',
      'ja': '保険証券番号',
    },
    'etpyyplq': {
      'en': '',
      'ja': '保険証券番号',
    },
    'wv2ue3ut': {
      'en': 'Policy Term',
      'ja': '保険期間・旅行期間',
    },
    '8ii0nevs': {
      'en': 'Start Date',
      'ja': '開始日',
    },
    '9939ept2': {
      'en': ' 〜 ',
      'ja': ' 〜 ',
    },
    'fgf5mcco': {
      'en': 'End Date',
      'ja': '終了日',
    },
    '80j7zi6n': {
      'en': '◀ Previous',
      'ja': '◀ 戻る',
    },
    'v2g14imr': {
      'en': 'Next ▶',
      'ja': '次へ ▶',
    },
    'k32ri22f': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // TR100210
  {
    '7xv032ry': {
      'en': 'Credit Card Type',
      'ja': 'クレジットカードの種類',
    },
    '8atgefdl': {
      'en': 'Please enter your credit card information',
      'ja': 'クレジットカード情報を入力してください',
    },
    'dhdqa3t2': {
      'en': '*indicates a required question',
      'ja': '* は入力必須項目です。',
    },
    'jga29xzt': {
      'en': 'Credit Card Type',
      'ja': 'クレジットカード種別',
    },
    'k1cn80on': {
      'en': 'Credit Card Type',
      'ja': 'クレジットカード種別',
    },
    'sflc8im9': {
      'en': 'Search...',
      'ja': '',
    },
    'reryo2cm': {
      'en': 'JAL',
      'ja': 'JAL',
    },
    'g9nrz332': {
      'en': 'ANA',
      'ja': 'ANA',
    },
    'iiq2ntfb': {
      'en': 'Other',
      'ja': 'その他',
    },
    'yfb6155r': {
      'en': 'Membership Type',
      'ja': '会員区分',
    },
    'gsn8vckh': {
      'en': 'Membership Type',
      'ja': '会員区分',
    },
    'togzwoc3': {
      'en': 'Search...',
      'ja': '',
    },
    'owcw4h36': {
      'en': 'Visa',
      'ja': 'Visa',
    },
    '575ewer8': {
      'en': 'Mastercard',
      'ja': 'Mastercard',
    },
    'fhcpbl7c': {
      'en': 'Other',
      'ja': 'その他',
    },
    '8u1hnm32': {
      'en': 'Credit Card Number',
      'ja': 'クレジットカードNo',
    },
    'fv42hxch': {
      'en': 'Please enter the first 6 digits and last 4 digits.',
      'ja': 'お持ちのクレジットカードの最初6桁と最後4桁を入力してください。',
    },
    'idoq428l': {
      'en': '####',
      'ja': '####',
    },
    '4d665yef': {
      'en': ' - ',
      'ja': '-',
    },
    '925dkzco': {
      'en': '##',
      'ja': '##',
    },
    'dij7df22': {
      'en': '** - **** - ',
      'ja': '** - **** - ',
    },
    '34tjlw2z': {
      'en': '####',
      'ja': '####',
    },
    'wu0r0yf5': {
      'en': 'Travel Schedule',
      'ja': '保険期間・旅行期間',
    },
    '1vq8qb7a': {
      'en': 'Departure Date',
      'ja': '日本出国日',
    },
    'ewg6ybii': {
      'en': ' 〜 ',
      'ja': ' 〜 ',
    },
    'hxd6ocyp': {
      'en': 'Arrival Date',
      'ja': '日本帰国日（帰国予定日）',
    },
    'kal40mih': {
      'en': '◀ Previous',
      'ja': '◀ 戻る',
    },
    'm5762htx': {
      'en': 'Next ▶',
      'ja': '次へ ▶',
    },
    '3l9mqfvs': {
      'en': 'Home',
      'ja': '家',
    },
  },
  // ErrorModal
  {
    'kaukxhzn': {
      'en': '❮ Back',
      'ja': '戻る',
    },
  },
  // endDrawerContent
  {
    'jsvcvoam': {
      'en': 'Select your prefered language',
      'ja': 'ご希望の言語を選択してください',
    },
    '7x6mnwlz': {
      'en': 'Close Settings',
      'ja': '設定を閉じる',
    },
  },
  // mapModal
  {
    'b8ygcmtd': {
      'en': 'Confirm Location',
      'ja': '場所を確認',
    },
    'es5ro93y': {
      'en': 'Search here',
      'ja': '検索',
    },
  },
  // loadingIndicator
  {
    'sz39mu8y': {
      'en':
          'Thank you for your patience.  Processing your claim request may take a few minutes.  Please do not refresh your browser.',
      'ja': '大変お待たせしており、申し訳ありません。請求内容が登録されるまでに数分かかる場合がありますので、 ブラウザを更新しないでください。',
    },
  },
  // SystemMaintenance
  {
    '1mn69ov6': {
      'en': 'System Unavailable',
      'ja': '',
    },
    'g03p6hsa': {
      'en':
          'Our system will be unavailable while we conduct routine maintenance from ',
      'ja': '',
    },
    '6w2sigis': {
      'en': ' to ',
      'ja': '',
    },
    '91iv0ywq': {
      'en': '. Please try again later or contact ',
      'ja': '',
    },
    '2tdc9d5f': {
      'en': ' at ',
      'ja': '',
    },
    'gx3zsff6': {
      'en': ' for further assistance.',
      'ja': '',
    },
  },
  // addParty
  {
    '0ww4lkju': {
      'en': '* Indicates required question',
      'ja': '',
    },
    '02g308dd': {
      'en': 'This is a: ',
      'ja': '',
    },
    'sov30obe': {
      'en': 'Business',
      'ja': '',
    },
    'ms9oly7l': {
      'en': 'Person',
      'ja': '',
    },
    '3ooepexn': {
      'en': 'First Name*',
      'ja': '',
    },
    't3mg0gmb': {
      'en': 'Field is required',
      'ja': '',
    },
    '2rw1hi38': {
      'en': 'Please choose an option from the dropdown',
      'ja': '',
    },
    'uw1vngl6': {
      'en': 'Last Name*',
      'ja': '',
    },
    'e4zajvqg': {
      'en': 'Field is required',
      'ja': '',
    },
    'waikt1ml': {
      'en': 'Please choose an option from the dropdown',
      'ja': '',
    },
    'ft02352x': {
      'en': 'Business Name*',
      'ja': '',
    },
    'm7c2lo0j': {
      'en': 'Field is required',
      'ja': '',
    },
    'sebgny1g': {
      'en': 'Please choose an option from the dropdown',
      'ja': '',
    },
    'zzvckxo5': {
      'en': 'Phone Number',
      'ja': '',
    },
    'afvr94kz': {
      'en': 'Phone Number Type',
      'ja': '',
    },
    'ykdbdov2': {
      'en': 'Search for an item...',
      'ja': '',
    },
    '8tfeu8ew': {
      'en': 'Cell Phone',
      'ja': '',
    },
    'ei6jgeza': {
      'en': 'Home Phone',
      'ja': '',
    },
    'ctqcdd4c': {
      'en': 'Work Phone',
      'ja': '',
    },
    '77eu7kol': {
      'en': 'Email',
      'ja': '',
    },
    'ui2ip2i9': {
      'en': 'Address*',
      'ja': '',
    },
    '680lt7g3': {
      'en': 'Address Line*',
      'ja': '',
    },
    '7vt6gn1w': {
      'en': 'City*',
      'ja': '',
    },
    'lr6o28sl': {
      'en': 'ST*',
      'ja': '',
    },
    '1pphdb6l': {
      'en': 'ST',
      'ja': '',
    },
    'lfpfgcrm': {
      'en': 'AK',
      'ja': '',
    },
    '39nfspzs': {
      'en': 'AL',
      'ja': '',
    },
    'wc0n1x71': {
      'en': 'AR',
      'ja': '',
    },
    'q1j3uxwx': {
      'en': 'AZ',
      'ja': '',
    },
    '4dxwrmwn': {
      'en': 'CA',
      'ja': '',
    },
    'e4c8qgjn': {
      'en': 'CO',
      'ja': '',
    },
    '15e26ceo': {
      'en': 'CT',
      'ja': '',
    },
    'bb29d1z1': {
      'en': 'DC',
      'ja': '',
    },
    'zdhbboc7': {
      'en': 'DE',
      'ja': '',
    },
    '0zyent0h': {
      'en': 'FL',
      'ja': '',
    },
    '9jgpa8zx': {
      'en': 'GA',
      'ja': '',
    },
    'pjiss0we': {
      'en': 'HI',
      'ja': '',
    },
    'zmsrml7m': {
      'en': 'IA',
      'ja': '',
    },
    'obg15a8d': {
      'en': 'ID',
      'ja': '',
    },
    'g9fweyuf': {
      'en': 'IL',
      'ja': '',
    },
    'puovk633': {
      'en': 'IN',
      'ja': '',
    },
    'hrge6emg': {
      'en': 'KS',
      'ja': '',
    },
    'u927t77n': {
      'en': 'KY',
      'ja': '',
    },
    'ua54t7h6': {
      'en': 'LA',
      'ja': '',
    },
    'net9vh6p': {
      'en': 'MA',
      'ja': '',
    },
    '5hspx1g4': {
      'en': 'MD',
      'ja': '',
    },
    'w6aikub7': {
      'en': 'ME',
      'ja': '',
    },
    'mmrvstvc': {
      'en': 'MI',
      'ja': '',
    },
    '9u1tijpp': {
      'en': 'MN',
      'ja': '',
    },
    'dceyed7u': {
      'en': 'MO',
      'ja': '',
    },
    'g8lny4zh': {
      'en': 'MS',
      'ja': '',
    },
    'h77o1abp': {
      'en': 'MT',
      'ja': '',
    },
    'atagfhye': {
      'en': 'NC',
      'ja': '',
    },
    '8oyrbobg': {
      'en': 'ND',
      'ja': '',
    },
    '012fme47': {
      'en': 'NE',
      'ja': '',
    },
    'tuvkgq6j': {
      'en': 'NH',
      'ja': '',
    },
    'g8ew3riw': {
      'en': 'NJ',
      'ja': '',
    },
    'tls05h53': {
      'en': 'NM',
      'ja': '',
    },
    '8a2qbcd0': {
      'en': 'NV',
      'ja': '',
    },
    'zzh1xkl6': {
      'en': 'NY',
      'ja': '',
    },
    '7zk3f5yi': {
      'en': 'OH',
      'ja': '',
    },
    'tbuma3il': {
      'en': 'OK',
      'ja': '',
    },
    '27ih9elm': {
      'en': 'OR',
      'ja': '',
    },
    'ue2b6c57': {
      'en': 'PA',
      'ja': '',
    },
    'fwkepfr5': {
      'en': 'RI',
      'ja': '',
    },
    'kw1ruv68': {
      'en': 'SC',
      'ja': '',
    },
    '1ahtrm80': {
      'en': 'SD',
      'ja': '',
    },
    'awytohcg': {
      'en': 'TN',
      'ja': '',
    },
    'unb6mx1f': {
      'en': 'TX',
      'ja': '',
    },
    '3jvk74hu': {
      'en': 'UT',
      'ja': '',
    },
    'hcojc7c3': {
      'en': 'VA',
      'ja': '',
    },
    'p1lrnm32': {
      'en': 'VT',
      'ja': '',
    },
    '6ido6ylr': {
      'en': 'WA',
      'ja': '',
    },
    '4tftfq0k': {
      'en': 'WI',
      'ja': '',
    },
    'eke54tgt': {
      'en': 'WV',
      'ja': '',
    },
    'mbu37fhf': {
      'en': 'WY',
      'ja': '',
    },
    'dg4sdz4r': {
      'en': 'Zip*',
      'ja': '',
    },
    'z5d8us0v': {
      'en': 'Field is required',
      'ja': '',
    },
    'lnkrhbnd': {
      'en': 'Please choose an option from the dropdown',
      'ja': '',
    },
    'iaowa5ui': {
      'en': 'Field is required',
      'ja': '',
    },
    '25vn8ljm': {
      'en': 'Please choose an option from the dropdown',
      'ja': '',
    },
    '8ymn6t7a': {
      'en': 'Field is required',
      'ja': '',
    },
    'wdyem62w': {
      'en': 'Format error',
      'ja': '',
    },
    'amzi4d8p': {
      'en': 'Please choose an option from the dropdown',
      'ja': '',
    },
    'vac5fst9': {
      'en': 'Did they seek medical attention?',
      'ja': '',
    },
    '3weye1mu': {
      'en': 'Yes',
      'ja': '',
    },
    'z3tjrh26': {
      'en': 'No',
      'ja': '',
    },
    'x7hxhsvm': {
      'en': 'Save Contact',
      'ja': '',
    },
  },
  // ClaimSummary
  {
    '0d72plv1': {
      'en': 'Copy to Clipboard',
      'ja': '',
    },
    'nwbsbupp': {
      'en': 'Print as PDF',
      'ja': '',
    },
  },
  // TopBar
  {
    '9y75r3p2': {
      'en': '',
      'ja': '',
    },
    'w8nycove': {
      'en': 'Search...',
      'ja': '',
    },
    'x5agyugl': {
      'en': '🇺🇸',
      'ja': '🇺🇸',
    },
    'qwe9xi99': {
      'en': '🇯🇵',
      'ja': '🇯🇵',
    },
  },
  // Miscellaneous
  {
    'sorzbgx2': {
      'en': '[Some hint text...]',
      'ja': '【ヒント文とか…】',
    },
    'fqbkj2wv': {
      'en': '',
      'ja': '',
    },
    'd9ldzi02': {
      'en': '',
      'ja': '',
    },
    'xdci9t9z': {
      'en': '',
      'ja': '',
    },
    'vugf20gd': {
      'en': '',
      'ja': '',
    },
    'b5o0zp1u': {
      'en': '',
      'ja': '',
    },
    'k4er5eje': {
      'en': '',
      'ja': '',
    },
    'ugotoxta': {
      'en': '',
      'ja': '',
    },
    'jzf2m6fn': {
      'en': '',
      'ja': '',
    },
    'c4rht4ij': {
      'en': '',
      'ja': '',
    },
    'e40gnl6x': {
      'en': '',
      'ja': '',
    },
    'eri62buz': {
      'en': '',
      'ja': '',
    },
    'mdkxr93r': {
      'en': '',
      'ja': '',
    },
    'w4xefygy': {
      'en': '',
      'ja': '',
    },
    'z36gngi1': {
      'en': '',
      'ja': '',
    },
    'pugvswh3': {
      'en': '',
      'ja': '',
    },
    'gwfiaihx': {
      'en': '',
      'ja': '',
    },
    'bizq082c': {
      'en': '',
      'ja': '',
    },
    '6ccmpako': {
      'en': '',
      'ja': '',
    },
    'q5tbm16k': {
      'en': '',
      'ja': '',
    },
    '8aupig4b': {
      'en': '',
      'ja': '',
    },
    'hnx48krp': {
      'en': '',
      'ja': '',
    },
    'cm6dbsvg': {
      'en': '',
      'ja': '',
    },
    '4pm9xd5z': {
      'en': '',
      'ja': '',
    },
    'ifebav4z': {
      'en': '',
      'ja': '',
    },
    'gmd0npro': {
      'en': '',
      'ja': '',
    },
    'mju8n015': {
      'en': '',
      'ja': '',
    },
    '33ck3obi': {
      'en': '',
      'ja': '',
    },
    '1mdabvyk': {
      'en': '',
      'ja': '',
    },
  },
].reduce((a, b) => a..addAll(b));
