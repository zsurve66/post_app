import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';

class ApiService {
  static const String baseUrl = 'https://dummyjson.com/posts';

  static Future<List<PostModel>> fetchPosts() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body)['posts'];
      return data.map((e) => PostModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }

  static Future<PostModel> createPost(PostModel post) async {
    final response = await http.post(
      Uri.parse('$baseUrl/add'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(post.toJson()),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return PostModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create post');
    }
  }

  static Future<void> deletePost(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/$id'));
    if (response.statusCode != 200) {
      throw Exception('Failed to delete post');
    }
  }
}
