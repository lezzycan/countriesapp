// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_null_in_if_null_operators
import 'dart:convert';

CountryError countryErrorFromJson(String str) => CountryError.fromJson(json.decode(str));

String countryErrorToJson(CountryError data) => json.encode(data.toJson());

class CountryError {
  String? message;
  int? code;
  CountryError({
    this.message,
    this.code,
  });

  factory CountryError.fromJson(Map<String, dynamic> json) => CountryError(
        message: json['message'] ?? null,
        code: json["code"] ?? null,
      );

  Map<String, dynamic> toJson() => {
        "message": message ?? null,
        "code": code ?? null,
      };
}
