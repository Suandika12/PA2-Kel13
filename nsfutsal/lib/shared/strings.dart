const baseUrl = 'http://192.168.106.120/api_numero_sada/public';
const baseUrlApi = '$baseUrl/api';
const baseUrlImage = baseUrl;

extension ParseUrlImage on String {
  String get parseBaseUrlImage {
    return replaceAll('http://localhost', baseUrlImage);
  }
}
