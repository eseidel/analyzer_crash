import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/order.dart';
import 'package:github/model/order.dart';

enum Order {
  desc._('desc'),
  asc._('asc');

  const Order._(this.value);

  factory Order.fromJson(String json) {
    return Order.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown Order value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Order? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return Order.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
