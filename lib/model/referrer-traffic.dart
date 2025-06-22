import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/referrer-traffic.dart';
import 'package:github/model/referrer-traffic.dart';
@immutable
class Referrer-traffic {
    Referrer-traffic(
        { required this.referrer,required this.count,required this.uniques,
         }
    );

    factory Referrer-traffic.fromJson(Map<String, dynamic>
        json) {
        return Referrer-traffic(
            referrer: json['referrer'] as String ,
            count: (json['count'] as int).toInt() ,
            uniques: (json['uniques'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Referrer-traffic? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Referrer-traffic.fromJson(json);
    }

    final String  referrer;
    final int  count;
    final int  uniques;


    Map<String, dynamic> toJson() {
        return {
            'referrer': referrer,
            'count': count,
            'uniques': uniques,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          referrer,
          count,
          uniques,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Referrer-traffic
            && referrer == other.referrer
            && count == other.count
            && uniques == other.uniques
        ;
    }
}
