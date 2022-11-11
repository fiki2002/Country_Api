class Country {
  Name? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  Languages? languages;
  Translations? translations;
  List<double>? latlng;
  bool? landlocked;
  double? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  Flags? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;
  PostalCode? postalCode;

  Country({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });

  Country.fromJson(Map<String, dynamic> json) {
    name = (json['name'] as Map<String, dynamic>?) != null
        ? Name.fromJson(json['name'] as Map<String, dynamic>)
        : null;
    tld = (json['tld'] as List?)?.map((dynamic e) => e as String).toList();
    cca2 = json['cca2'] as String?;
    ccn3 = json['ccn3'] as String?;
    cca3 = json['cca3'] as String?;
    cioc = json['cioc'] as String?;
    independent = json['independent'] as bool?;
    status = json['status'] as String?;
    unMember = json['unMember'] as bool?;
    currencies = (json['currencies'] as Map<String, dynamic>?) != null
        ? Currencies.fromJson(json['currencies'] as Map<String, dynamic>)
        : null;
    idd = (json['idd'] as Map<String, dynamic>?) != null
        ? Idd.fromJson(json['idd'] as Map<String, dynamic>)
        : null;
    capital = (json['capital'] as List?)
                ?.map((dynamic e) => e as String)
                .toList()
                .length ==
            0
        ? json['capital'] = null
        : (json['capital'] as List?)?.map((dynamic e) => e as String).toList();
    altSpellings = (json['altSpellings'] as List?)
        ?.map((dynamic e) => e as String)
        .toList();
    region = json['region'] as String?;
    subregion = json['subregion'] as String?;
    languages = (json['languages'] as Map<String, dynamic>?) != null
        ? Languages.fromJson(json['languages'] as Map<String, dynamic>)
        : null;
    translations = (json['translations'] as Map<String, dynamic>?) != null
        ? Translations.fromJson(json['translations'] as Map<String, dynamic>)
        : null;
    latlng =
        (json['latlng'] as List?)?.map((dynamic e) => e as double).toList();
    landlocked = json['landlocked'] as bool?;
    area = json['area'] as double?;
    demonyms = (json['demonyms'] as Map<String, dynamic>?) != null
        ? Demonyms.fromJson(json['demonyms'] as Map<String, dynamic>)
        : null;
    flag = json['flag'] as String?;
    maps = (json['maps'] as Map<String, dynamic>?) != null
        ? Maps.fromJson(json['maps'] as Map<String, dynamic>)
        : null;
    population = json['population'] as int?;
    fifa = json['fifa'] as String?;
    car = (json['car'] as Map<String, dynamic>?) != null
        ? Car.fromJson(json['car'] as Map<String, dynamic>)
        : null;
    timezones =
        (json['timezones'] as List?)?.map((dynamic e) => e as String).toList();
    continents =
        (json['continents'] as List?)?.map((dynamic e) => e as String).toList();
    flags = (json['flags'] as Map<String, dynamic>?) != null
        ? Flags.fromJson(json['flags'] as Map<String, dynamic>)
        : null;
    coatOfArms = (json['coatOfArms'] as Map<String, dynamic>?) != null
        ? CoatOfArms.fromJson(json['coatOfArms'] as Map<String, dynamic>)
        : null;
    startOfWeek = json['startOfWeek'] as String?;
    capitalInfo = (json['capitalInfo'] as Map<String, dynamic>?) != null
        ? CapitalInfo.fromJson(json['capitalInfo'] as Map<String, dynamic>)
        : null;
    postalCode = (json['postalCode'] as Map<String, dynamic>?) != null
        ? PostalCode.fromJson(json['postalCode'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name?.toJson();
    json['tld'] = tld;
    json['cca2'] = cca2;
    json['ccn3'] = ccn3;
    json['cca3'] = cca3;
    json['cioc'] = cioc;
    json['independent'] = independent;
    json['status'] = status;
    json['unMember'] = unMember;
    json['currencies'] = currencies?.toJson();
    json['idd'] = idd?.toJson();
    json['capital'] = capital;
    json['altSpellings'] = altSpellings;
    json['region'] = region;
    json['subregion'] = subregion;
    json['languages'] = languages?.toJson();
    json['translations'] = translations?.toJson();
    json['latlng'] = latlng;
    json['landlocked'] = landlocked;
    json['area'] = area;
    json['demonyms'] = demonyms?.toJson();
    json['flag'] = flag;
    json['maps'] = maps?.toJson();
    json['population'] = population;
    json['fifa'] = fifa;
    json['car'] = car?.toJson();
    json['timezones'] = timezones;
    json['continents'] = continents;
    json['flags'] = flags?.toJson();
    json['coatOfArms'] = coatOfArms?.toJson();
    json['startOfWeek'] = startOfWeek;
    json['capitalInfo'] = capitalInfo?.toJson();
    json['postalCode'] = postalCode?.toJson();
    return json;
  }
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({
    this.common,
    this.official,
    this.nativeName,
  });

  Name.fromJson(Map<String, dynamic> json) {
    common = json['common'] as String?;
    official = json['official'] as String?;
    nativeName = (json['nativeName'] as Map<String, dynamic>?) != null
        ? NativeName.fromJson(json['nativeName'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['common'] = common;
    json['official'] = official;
    json['nativeName'] = nativeName?.toJson();
    return json;
  }
}

class NativeName {
  Eng? eng;

  NativeName({
    this.eng,
  });

  NativeName.fromJson(Map<String, dynamic> json) {
    eng = (json['eng'] as Map<String, dynamic>?) != null
        ? Eng.fromJson(json['eng'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['eng'] = eng?.toJson();
    return json;
  }
}

// class Eng {
//   String? official;
//   String? common;
//
//   Eng({
//     this.official,
//     this.common,
//   });
//
//   Eng.fromJson(Map<String, dynamic> json) {
//     official = json['official'] as String?;
//     common = json['common'] as String?;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['official'] = official;
//     json['common'] = common;
//     return json;
//   }
// }

class Currencies {
  BBD? bBD;

  Currencies({
    this.bBD,
  });

  Currencies.fromJson(Map<String, dynamic> json) {
    bBD = (json['BBD'] as Map<String, dynamic>?) != null
        ? BBD.fromJson(json['BBD'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['BBD'] = bBD?.toJson();
    return json;
  }
}

class BBD {
  String? name;
  String? symbol;

  BBD({
    this.name,
    this.symbol,
  });

  BBD.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    symbol = json['symbol'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['symbol'] = symbol;
    return json;
  }
}

class Idd {
  String? root;
  List<String>? suffixes;

  Idd({
    this.root,
    this.suffixes,
  });

  Idd.fromJson(Map<String, dynamic> json) {
    root = json['root'] as String?;
    suffixes =
        (json['suffixes'] as List?)?.map((dynamic e) => e as String).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['root'] = root;
    json['suffixes'] = suffixes;
    return json;
  }
}

class Languages {
  String? eng;

  Languages({
    this.eng,
  });

  Languages.fromJson(Map<String, dynamic> json) {
    eng = json['eng'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['eng'] = eng;
    return json;
  }
}

class Translations {
  Ara? ara;
  Bre? bre;
  Ces? ces;
  Cym? cym;
  Deu? deu;
  Est? est;
  Fin? fin;
  Fra? fra;
  Hrv? hrv;
  Hun? hun;
  Ita? ita;
  Jpn? jpn;
  Kor? kor;
  Nld? nld;
  Per? per;
  Pol? pol;
  Por? por;
  Rus? rus;
  Slk? slk;
  Spa? spa;
  Swe? swe;
  Tur? tur;
  Urd? urd;
  Zho? zho;

  Translations({
    this.ara,
    this.bre,
    this.ces,
    this.cym,
    this.deu,
    this.est,
    this.fin,
    this.fra,
    this.hrv,
    this.hun,
    this.ita,
    this.jpn,
    this.kor,
    this.nld,
    this.per,
    this.pol,
    this.por,
    this.rus,
    this.slk,
    this.spa,
    this.swe,
    this.tur,
    this.urd,
    this.zho,
  });

  Translations.fromJson(Map<String, dynamic> json) {
    ara = (json['ara'] as Map<String, dynamic>?) != null
        ? Ara.fromJson(json['ara'] as Map<String, dynamic>)
        : null;
    bre = (json['bre'] as Map<String, dynamic>?) != null
        ? Bre.fromJson(json['bre'] as Map<String, dynamic>)
        : null;
    ces = (json['ces'] as Map<String, dynamic>?) != null
        ? Ces.fromJson(json['ces'] as Map<String, dynamic>)
        : null;
    cym = (json['cym'] as Map<String, dynamic>?) != null
        ? Cym.fromJson(json['cym'] as Map<String, dynamic>)
        : null;
    deu = (json['deu'] as Map<String, dynamic>?) != null
        ? Deu.fromJson(json['deu'] as Map<String, dynamic>)
        : null;
    est = (json['est'] as Map<String, dynamic>?) != null
        ? Est.fromJson(json['est'] as Map<String, dynamic>)
        : null;
    fin = (json['fin'] as Map<String, dynamic>?) != null
        ? Fin.fromJson(json['fin'] as Map<String, dynamic>)
        : null;
    fra = (json['fra'] as Map<String, dynamic>?) != null
        ? Fra.fromJson(json['fra'] as Map<String, dynamic>)
        : null;
    hrv = (json['hrv'] as Map<String, dynamic>?) != null
        ? Hrv.fromJson(json['hrv'] as Map<String, dynamic>)
        : null;
    hun = (json['hun'] as Map<String, dynamic>?) != null
        ? Hun.fromJson(json['hun'] as Map<String, dynamic>)
        : null;
    ita = (json['ita'] as Map<String, dynamic>?) != null
        ? Ita.fromJson(json['ita'] as Map<String, dynamic>)
        : null;
    jpn = (json['jpn'] as Map<String, dynamic>?) != null
        ? Jpn.fromJson(json['jpn'] as Map<String, dynamic>)
        : null;
    kor = (json['kor'] as Map<String, dynamic>?) != null
        ? Kor.fromJson(json['kor'] as Map<String, dynamic>)
        : null;
    nld = (json['nld'] as Map<String, dynamic>?) != null
        ? Nld.fromJson(json['nld'] as Map<String, dynamic>)
        : null;
    per = (json['per'] as Map<String, dynamic>?) != null
        ? Per.fromJson(json['per'] as Map<String, dynamic>)
        : null;
    pol = (json['pol'] as Map<String, dynamic>?) != null
        ? Pol.fromJson(json['pol'] as Map<String, dynamic>)
        : null;
    por = (json['por'] as Map<String, dynamic>?) != null
        ? Por.fromJson(json['por'] as Map<String, dynamic>)
        : null;
    rus = (json['rus'] as Map<String, dynamic>?) != null
        ? Rus.fromJson(json['rus'] as Map<String, dynamic>)
        : null;
    slk = (json['slk'] as Map<String, dynamic>?) != null
        ? Slk.fromJson(json['slk'] as Map<String, dynamic>)
        : null;
    spa = (json['spa'] as Map<String, dynamic>?) != null
        ? Spa.fromJson(json['spa'] as Map<String, dynamic>)
        : null;
    swe = (json['swe'] as Map<String, dynamic>?) != null
        ? Swe.fromJson(json['swe'] as Map<String, dynamic>)
        : null;
    tur = (json['tur'] as Map<String, dynamic>?) != null
        ? Tur.fromJson(json['tur'] as Map<String, dynamic>)
        : null;
    urd = (json['urd'] as Map<String, dynamic>?) != null
        ? Urd.fromJson(json['urd'] as Map<String, dynamic>)
        : null;
    zho = (json['zho'] as Map<String, dynamic>?) != null
        ? Zho.fromJson(json['zho'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['ara'] = ara?.toJson();
    json['bre'] = bre?.toJson();
    json['ces'] = ces?.toJson();
    json['cym'] = cym?.toJson();
    json['deu'] = deu?.toJson();
    json['est'] = est?.toJson();
    json['fin'] = fin?.toJson();
    json['fra'] = fra?.toJson();
    json['hrv'] = hrv?.toJson();
    json['hun'] = hun?.toJson();
    json['ita'] = ita?.toJson();
    json['jpn'] = jpn?.toJson();
    json['kor'] = kor?.toJson();
    json['nld'] = nld?.toJson();
    json['per'] = per?.toJson();
    json['pol'] = pol?.toJson();
    json['por'] = por?.toJson();
    json['rus'] = rus?.toJson();
    json['slk'] = slk?.toJson();
    json['spa'] = spa?.toJson();
    json['swe'] = swe?.toJson();
    json['tur'] = tur?.toJson();
    json['urd'] = urd?.toJson();
    json['zho'] = zho?.toJson();
    return json;
  }
}

class Ara {
  String? official;
  String? common;

  Ara({
    this.official,
    this.common,
  });

  Ara.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Bre {
  String? official;
  String? common;

  Bre({
    this.official,
    this.common,
  });

  Bre.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Ces {
  String? official;
  String? common;

  Ces({
    this.official,
    this.common,
  });

  Ces.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Cym {
  String? official;
  String? common;

  Cym({
    this.official,
    this.common,
  });

  Cym.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Deu {
  String? official;
  String? common;

  Deu({
    this.official,
    this.common,
  });

  Deu.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Est {
  String? official;
  String? common;

  Est({
    this.official,
    this.common,
  });

  Est.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Fin {
  String? official;
  String? common;

  Fin({
    this.official,
    this.common,
  });

  Fin.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Fra {
  String? official;
  String? common;

  Fra({
    this.official,
    this.common,
  });

  Fra.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Hrv {
  String? official;
  String? common;

  Hrv({
    this.official,
    this.common,
  });

  Hrv.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Hun {
  String? official;
  String? common;

  Hun({
    this.official,
    this.common,
  });

  Hun.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Ita {
  String? official;
  String? common;

  Ita({
    this.official,
    this.common,
  });

  Ita.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Jpn {
  String? official;
  String? common;

  Jpn({
    this.official,
    this.common,
  });

  Jpn.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Kor {
  String? official;
  String? common;

  Kor({
    this.official,
    this.common,
  });

  Kor.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Nld {
  String? official;
  String? common;

  Nld({
    this.official,
    this.common,
  });

  Nld.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Per {
  String? official;
  String? common;

  Per({
    this.official,
    this.common,
  });

  Per.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Pol {
  String? official;
  String? common;

  Pol({
    this.official,
    this.common,
  });

  Pol.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Por {
  String? official;
  String? common;

  Por({
    this.official,
    this.common,
  });

  Por.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Rus {
  String? official;
  String? common;

  Rus({
    this.official,
    this.common,
  });

  Rus.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Slk {
  String? official;
  String? common;

  Slk({
    this.official,
    this.common,
  });

  Slk.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Spa {
  String? official;
  String? common;

  Spa({
    this.official,
    this.common,
  });

  Spa.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Swe {
  String? official;
  String? common;

  Swe({
    this.official,
    this.common,
  });

  Swe.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Tur {
  String? official;
  String? common;

  Tur({
    this.official,
    this.common,
  });

  Tur.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Urd {
  String? official;
  String? common;

  Urd({
    this.official,
    this.common,
  });

  Urd.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Zho {
  String? official;
  String? common;

  Zho({
    this.official,
    this.common,
  });

  Zho.fromJson(Map<String, dynamic> json) {
    official = json['official'] as String?;
    common = json['common'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['official'] = official;
    json['common'] = common;
    return json;
  }
}

class Demonyms {
  Eng? eng;
  Fra? fra;

  Demonyms({
    this.eng,
    this.fra,
  });

  Demonyms.fromJson(Map<String, dynamic> json) {
    eng = (json['eng'] as Map<String, dynamic>?) != null
        ? Eng.fromJson(json['eng'] as Map<String, dynamic>)
        : null;
    fra = (json['fra'] as Map<String, dynamic>?) != null
        ? Fra.fromJson(json['fra'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['eng'] = eng?.toJson();
    json['fra'] = fra?.toJson();
    return json;
  }
}

class Eng {
  String? f;
  String? m;

  Eng({
    this.f,
    this.m,
  });

  Eng.fromJson(Map<String, dynamic> json) {
    f = json['f'] as String?;
    m = json['m'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['f'] = f;
    json['m'] = m;
    return json;
  }
}

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({
    this.googleMaps,
    this.openStreetMaps,
  });

  Maps.fromJson(Map<String, dynamic> json) {
    googleMaps = json['googleMaps'] as String?;
    openStreetMaps = json['openStreetMaps'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['googleMaps'] = googleMaps;
    json['openStreetMaps'] = openStreetMaps;
    return json;
  }
}

class Car {
  List<String>? signs;
  String? side;

  Car({
    this.signs,
    this.side,
  });

  Car.fromJson(Map<String, dynamic> json) {
    signs = (json['signs'] as List?)?.map((dynamic e) => e as String).toList();
    side = json['side'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['signs'] = signs;
    json['side'] = side;
    return json;
  }
}

class Flags {
  String? png;
  String? svg;

  Flags({
    this.png,
    this.svg,
  });

  Flags.fromJson(Map<String, dynamic> json) {
    png = json['png'] as String?;
    svg = json['svg'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['png'] = png;
    json['svg'] = svg;
    return json;
  }
}

class CoatOfArms {
  String? png;
  String? svg;

  CoatOfArms({
    this.png,
    this.svg,
  });

  CoatOfArms.fromJson(Map<String, dynamic> json) {
    png = json['png'] as String?;
    svg = json['svg'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['png'] = png;
    json['svg'] = svg;
    return json;
  }
}

class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({
    this.latlng,
  });

  CapitalInfo.fromJson(Map<String, dynamic> json) {
    latlng =
        (json['latlng'] as List?)?.map((dynamic e) => e as double).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['latlng'] = latlng;
    return json;
  }
}

class PostalCode {
  String? format;
  String? regex;

  PostalCode({
    this.format,
    this.regex,
  });

  PostalCode.fromJson(Map<String, dynamic> json) {
    format = json['format'] as String?;
    regex = json['regex'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['format'] = format;
    json['regex'] = regex;
    return json;
  }
}
