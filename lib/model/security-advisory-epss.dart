import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/security-advisory-epss.dart';
import 'package:github/model/security-advisory-epss.dart';
@immutable
class Security-advisory-epss {
    Security-advisory-epss(
        {  this.percentage, this.percentile,
         }
    );

    factory Security-advisory-epss.fromJson(Map<String, dynamic>
        json) {
        return Security-advisory-epss(
            percentage: (json['percentage'] as num?).toDouble() ,
            percentile: (json['percentile'] as num?).toDouble() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Security-advisory-epss? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Security-advisory-epss.fromJson(json);
    }

    final  double? percentage;
    final  double? percentile;


    Map<String, dynamic> toJson() {
        return {
            'percentage': percentage,
            'percentile': percentile,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          percentage,
          percentile,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Security-advisory-epss
            && percentage == other.percentage
            && percentile == other.percentile
        ;
    }
}
