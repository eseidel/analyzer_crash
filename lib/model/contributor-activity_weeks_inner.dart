import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/contributor-activity_weeks_inner.dart';
import 'package:github/model/contributor-activity_weeks_inner.dart';
@immutable
class Contributor-activityWeeksInner {
    Contributor-activityWeeksInner(
        {  this.w, this.a, this.d, this.c,
         }
    );

    factory Contributor-activityWeeksInner.fromJson(Map<String, dynamic>
        json) {
        return Contributor-activityWeeksInner(
            w: (json['w'] as int?).toInt() ,
            a: (json['a'] as int?).toInt() ,
            d: (json['d'] as int?).toInt() ,
            c: (json['c'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Contributor-activityWeeksInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Contributor-activityWeeksInner.fromJson(json);
    }

    final  int? w;
    final  int? a;
    final  int? d;
    final  int? c;


    Map<String, dynamic> toJson() {
        return {
            'w': w,
            'a': a,
            'd': d,
            'c': c,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          w,
          a,
          d,
          c,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Contributor-activityWeeksInner
            && w == other.w
            && a == other.a
            && d == other.d
            && c == other.c
        ;
    }
}
