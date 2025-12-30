// =======================
// Root Response
// =======================

class BookModel {
  final String? kind;
  final int? totalItems;
  final List<BookItem> items;

  BookModel({this.kind, this.totalItems, required this.items});

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json['kind'],
      totalItems: json['totalItems'],
      items: (json['items'] as List)
          .map((e) => BookItem.fromJson(e))
          .toList(),
    );
  }
}

// =======================
// Book Item
// =======================

class BookItem {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;

  BookItem({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
  });

  factory BookItem.fromJson(Map<String, dynamic> json) {
    return BookItem(
      kind: json['kind'],
      id: json['id'],
      etag: json['etag'],
      selfLink: json['selfLink'],
      volumeInfo: json['volumeInfo'] != null
          ? VolumeInfo.fromJson(json['volumeInfo'])
          : null,
      saleInfo: json['saleInfo'] != null
          ? SaleInfo.fromJson(json['saleInfo'])
          : null,
      accessInfo: json['accessInfo'] != null
          ? AccessInfo.fromJson(json['accessInfo'])
          : null,
    );
  }
}

// =======================
// Volume Info
// =======================

class VolumeInfo {
  final String? title;
  final String? subtitle;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final double? averageRating;
  final int? ratingsCount;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  VolumeInfo({
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.averageRating,
    this.ratingsCount,
    this.maturityRating,
    this.allowAnonLogging,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      subtitle: json['subtitle'],
      authors: (json['authors'] as List?)?.cast<String>(),
      publisher: json['publisher'],
      publishedDate: json['publishedDate'],
      description: json['description'],
      industryIdentifiers: (json['industryIdentifiers'] as List?)
          ?.map((e) => IndustryIdentifier.fromJson(e))
          .toList(),
      readingModes: json['readingModes'] != null
          ? ReadingModes.fromJson(json['readingModes'])
          : null,
      pageCount: json['pageCount'],
      printType: json['printType'],
      categories: (json['categories'] as List?)?.cast<String>(),
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      ratingsCount: json['ratingsCount'],
      maturityRating: json['maturityRating'],
      allowAnonLogging: json['allowAnonLogging'],
      imageLinks: json['imageLinks'] != null
          ? ImageLinks.fromJson(json['imageLinks'])
          : null,
      language: json['language'],
      previewLink: json['previewLink'],
      infoLink: json['infoLink'],
      canonicalVolumeLink: json['canonicalVolumeLink'],
    );
  }
}

// =======================
// Sub Models
// =======================

class IndustryIdentifier {
  final String? type;
  final String? identifier;

  IndustryIdentifier({this.type, this.identifier});

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'],
      identifier: json['identifier'],
    );
  }
}

class ReadingModes {
  final bool? text;
  final bool? image;

  ReadingModes({this.text, this.image});

  factory ReadingModes.fromJson(Map<String, dynamic> json) {
    return ReadingModes(text: json['text'], image: json['image']);
  }
}

class ImageLinks {
  final String? smallThumbnail;
  final String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json['smallThumbnail'],
      thumbnail: json['thumbnail'],
    );
  }
}

// =======================
// Sale Info
// =======================

class SaleInfo {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final Price? listPrice;
  final Price? retailPrice;
  final String? buyLink;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'],
      saleability: json['saleability'],
      isEbook: json['isEbook'],
      listPrice: json['listPrice'] != null
          ? Price.fromJson(json['listPrice'])
          : null,
      retailPrice: json['retailPrice'] != null
          ? Price.fromJson(json['retailPrice'])
          : null,
      buyLink: json['buyLink'],
    );
  }
}

class Price {
  final double? amount;
  final String? currencyCode;

  Price({this.amount, this.currencyCode});

  factory Price.fromJson(Map<String, dynamic> json) {
    return Price(
      amount: (json['amount'] as num?)?.toDouble(),
      currencyCode: json['currencyCode'],
    );
  }
}

// =======================
// Access Info
// =======================

class AccessInfo {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final FormatAvailability? epub;
  final FormatAvailability? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      country: json['country'],
      viewability: json['viewability'],
      embeddable: json['embeddable'],
      publicDomain: json['publicDomain'],
      textToSpeechPermission: json['textToSpeechPermission'],
      epub: json['epub'] != null
          ? FormatAvailability.fromJson(json['epub'])
          : null,
      pdf: json['pdf'] != null
          ? FormatAvailability.fromJson(json['pdf'])
          : null,
      webReaderLink: json['webReaderLink'],
      accessViewStatus: json['accessViewStatus'],
      quoteSharingAllowed: json['quoteSharingAllowed'],
    );
  }
}

class FormatAvailability {
  final bool? isAvailable;
  final String? acsTokenLink;

  FormatAvailability({this.isAvailable, this.acsTokenLink});

  factory FormatAvailability.fromJson(Map<String, dynamic> json) {
    return FormatAvailability(
      isAvailable: json['isAvailable'],
      acsTokenLink: json['acsTokenLink'],
    );
  }
}
