```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
      final jsonData = jsonDecode(response.body);
      // ...
    } else {
      // Handle non-200 status codes appropriately
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions; don't just print and ignore
    print('Error fetching data: $e');
    // rethrow to allow handling higher up
    rethrow; 
  }
}
```