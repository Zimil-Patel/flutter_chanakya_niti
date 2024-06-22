class ChapterModel {
  String chapterId;
  List<QuoteModel> quoteList;

  ChapterModel({required this.chapterId, required this.quoteList});

  factory ChapterModel.fromJson(List json, String chapterId) => ChapterModel(
        chapterId: chapterId,
        quoteList: json.map((e) => QuoteModel.fromJson(e)).toList(),
      );
}

class QuoteModel {
  String id;
  QuoteLanguage quote;
  bool isFavourite = false;
  bool isBookmarked = false;

  QuoteModel({required this.id, required this.quote});

  factory QuoteModel.fromJson(Map json) => QuoteModel(
        id: json['verse_id'],
        quote: QuoteLanguage.fromJson(
          json['text'],
          json['gujarati'],
          json['hindi'],
        ),
      );
}

class QuoteLanguage {
  String english, gujarati, hindi;

  QuoteLanguage(
      {required this.english, required this.gujarati, required this.hindi});

  factory QuoteLanguage.fromJson(
    String eng,
    String guj,
    String hin,
  ) =>
      QuoteLanguage(
        english: eng,
        gujarati: guj,
        hindi: hin,
      );
}
