import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class Secret {
  final String apikey;

  Secret({this.apikey=""});

  factory Secret.fromJson(Map<String, dynamic>jsonMap){
    return new Secret(apikey:jsonMap["api_key"]);
  }
}


class SecretLoader {
  final String secretPath;

  SecretLoader({this.secretPath});
  Future<Secret> load() {
    return rootBundle.loadStructuredData<Secret>(this.secretPath,
            (jsonStr) async {
          final secret = Secret.fromJson(json.decode(jsonStr));
          return secret;

        });
  }
