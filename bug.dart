```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
      final jsonData = jsonDecode(response.body);
      // ...
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error fetching data: $e');
    rethrow; // Re-throw to allow upper layers to handle the error
  }
}
```