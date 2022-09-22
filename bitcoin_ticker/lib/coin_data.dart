//2. Import the required packages.
import 'dart:convert';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = '6770A635-1CDB-4851-8DED-5E63C4BC5AD6';
const bitcoinAverageURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  //3: Update getCoinData to take the selectedCurrency as an input.
  Future getCoinData(String selectedCurrency) async {

    //4: Update the URL to use the selectedCurrency input.
    String requestURL =
        '$bitcoinAverageURL/BTC/$selectedCurrency?apikey=$apiKey';
    http.Response response = await http.get(Uri.parse(requestURL));
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      return lastPrice;
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }
}
