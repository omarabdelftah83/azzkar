import '../../domain/entity/azkar.dart';

class ItemModel extends ItemArrayAzkar {
  ItemModel({
    required int id,
    required String text,
    required int count,
    required String audio,
    required String fileName,
  }) : super(
          id: id,
          text: text,
          count: count,
          audio: audio,
          fileName: fileName,
        );

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      id: json['id'] ?? 0,
      text: json['text'] ?? "",
      count: json['count'] ?? 0,
      fileName: json['filename'] ?? "",
      audio: json['audio'] ?? "",
    );
  }
}

class AzkarModel extends Azkar {
  AzkarModel({
    required int id,
    required String category,
    required String audio,
    required String filename,
    required List<ItemArrayAzkar> array,
  }) : super(
          id: id,
          category: category,
          audio: audio,
          filename: filename,
          array: array,
        );

  factory AzkarModel.fromJson(Map<String, dynamic> json) {
    List<ItemArrayAzkar> item = [];

    json['array'].forEach((v) => item.add(ItemModel.fromJson(v)));
    return AzkarModel(
      id: json['id'] ?? 0,
      category: json['category'] ?? "",
      audio: json['audio'] ?? "",
      filename: json['filename'] ?? "",
      array: item,
    );
  }
}









class ItemQuranModel extends ItemArrayQuran {
  ItemQuranModel({
    required int id,
    required String ar,
    required String path,
  }) : super(
          id: id,
          ar: ar,
    path: path
        );

  factory ItemQuranModel.fromJson(Map<String, dynamic> json) {
    return ItemQuranModel(
        id: json['id'] ?? 0,
        ar: json['ar'] ?? '',
        path: json['path'] ?? ''
    );
  }
}

///quran ....//////////
class QuranModel extends Quran {
  QuranModel({
    required int id,
    required String name,
    required String ar,
    required List<ItemArrayQuran> array,
  }) : super(id: id, name: name, array: array,ar: ar);

  factory QuranModel.fromJson(Map<String, dynamic> json) {
    List<ItemArrayQuran> item = [];
    json['array'].forEach((v) => item.add(ItemQuranModel.fromJson(v)));
    return QuranModel(
        id: json['id'] ?? 0,
        name: json['name'] ?? '',
        ar: json['ar'] ?? '',
        array: item);
  }
}
