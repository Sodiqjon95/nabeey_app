// To parse this JSON data, do
//
//     final books = booksFromJson(jsonString);

import 'dart:convert';

Books booksFromJson(String str) => Books.fromJson(json.decode(str));

String booksToJson(Books data) => json.encode(data.toJson());

class Books {
  int statusCode;
  String message;
  Data data;

  Books({
    required this.statusCode,
    required this.message,
    required this.data,
  });

  factory Books.fromJson(Map<String, dynamic> json) => Books(
    statusCode: json["statusCode"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  int id;
  String title;
  String author;
  String description;
  FileClass file;
  FileClass image;

  Data({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.file,
    required this.image,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    title: json["title"],
    author: json["author"],
    description: json["description"],
    file: FileClass.fromJson(json["file"]),
    image: FileClass.fromJson(json["image"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "author": author,
    "description": description,
    "file": file.toJson(),
    "image": image.toJson(),
  };
}

class FileClass {
  int id;
  String fileName;
  String filePath;

  FileClass({
    required this.id,
    required this.fileName,
    required this.filePath,
  });

  factory FileClass.fromJson(Map<String, dynamic> json) => FileClass(
    id: json["id"],
    fileName: json["fileName"],
    filePath: json["filePath"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "fileName": fileName,
    "filePath": filePath,
  };
}
