class ItemArrayAzkar {
  int id;
  String text;
  int count;
  String audio;
  String fileName;

  ItemArrayAzkar({
    required this.id,
    required this.text,
    required this.count,
    required this.audio,
    required this.fileName,
  });
}
class Azkar {
  int id;
  String category;
  String audio;
  String filename;
  List<ItemArrayAzkar> array;

  Azkar({
    required this.id,
    required this.category,
    required this.audio,
    required this.filename,
    required this.array,
  });
}



class ItemArrayQuran {
  int id;
  String ar;
  String path;
  ItemArrayQuran({
    required this.id,
    required this.ar,
    required this.path,
  });
}
class Quran {
  int id;
  String name;
  String ar;
  List<ItemArrayQuran> array;

  Quran({
    required this.id,
    required this.name,
    required this.ar,
    required this.array,

  });
}
