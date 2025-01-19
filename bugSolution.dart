```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    print('Invalid JSON format: $e');
  } on SocketException catch (e) {
    print('Network error: $e');
  } on TimeoutException catch (e) {
    print('Request timed out: $e');
  } on Exception catch (e) {
    print('An unexpected error occurred: $e');
  } catch (e) {
    print('An unknown error occurred: $e');
  }
}
```