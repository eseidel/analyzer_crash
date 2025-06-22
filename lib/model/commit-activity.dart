import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/commit-activity.dart';
import 'package:github/model/commit-activity.dart';
@immutable
class Commit-activity {
    Commit-activity(
        {  this.days = const [],required this.total,required this.week,
         }
    );

    factory Commit-activity.fromJson(Map<String, dynamic>
        json) {
        return Commit-activity(
            days: (json['days'] as List).cast<int>() ,
            total: (json['total'] as int).toInt() ,
            week: (json['week'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Commit-activity? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Commit-activity.fromJson(json);
    }

    final List<int>  days;
    final int  total;
    final int  week;


    Map<String, dynamic> toJson() {
        return {
            'days': days,
            'total': total,
            'week': week,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          days,
          total,
          week,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Commit-activity
            && listsEqual(days, other.days)
            && total == other.total
            && week == other.week
        ;
    }
}
