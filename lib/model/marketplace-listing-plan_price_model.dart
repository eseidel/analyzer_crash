import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
enum Marketplace-listing-planPriceModel {
    free._('FREE'),
    flatRate._('FLAT_RATE'),
    perUnit._('PER_UNIT'),
    ;

    const Marketplace-listing-planPriceModel._(this.value);

    factory Marketplace-listing-planPriceModel.fromJson(String json) {
        return Marketplace-listing-planPriceModel.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Marketplace-listing-planPriceModel value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Marketplace-listing-planPriceModel? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Marketplace-listing-planPriceModel.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
