import 'dart:convert';

dynamic handleResponse(dynamic data) {
  if (data is Map<String, dynamic>) {
    return data;
  }
  if (data is List) {
    return data;
  }
  if (data is String) {
    if (data.trim().startsWith('<!DOCTYPE html')) {
      throw Exception(
        'Server returned HTML instead of JSON (check endpoint or auth)',
      );
    }
    final decoded = jsonDecode(data);
    return decoded;
  }
  throw Exception('Unexpected response type: ${data.runtimeType}');
}
