class ApiService {
  // Mock function for demonstration purposes
  Future<List<String>> fetchTherapies() async {
    await Future.delayed(Duration(seconds: 2));
    return ['Art Therapy', 'CB Therapy', 'Catharsis Therapy'];
  }
}
