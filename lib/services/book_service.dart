import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/book_model.dart';

class BookService {
  Future<Books?> fetchBook(int bookId) async {
    final response = await http.get(Uri.parse('https://thejama.uz/api/books/get/$bookId'));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final book = Books.fromJson(jsonData);
      return book;
    } else {
      throw Exception('Malumotlarni olishda xatolik yuz berdi: ${response.statusCode}');
    }
  }
}