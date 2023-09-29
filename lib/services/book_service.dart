import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nabeey_app/model/book_model.dart';

class BookService {
  static Future<BookModel> fetchBooks() async {
    final headers = {
      'Accept': 'application/json',
    };
    //const BASE = 'thejama.uz';
   // const getAllBooks = '/api/books/get-all';
    final response = await http.get(Uri.parse('https://thejama.uz/api/books/get-all'));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return bookModelFromJson(jsonData);
    } else {
      throw Exception('Malumotlarni olishda xatolik yuz berdi: ${response.statusCode}');
    }
  }
}