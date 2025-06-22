import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/contributor-activity.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/contributor-activity_weeks_inner.dart';
import 'package:github/model/contributor-activity.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/contributor-activity_weeks_inner.dart';
@immutable
class Contributor-activity {
    Contributor-activity(
        { required this.author,required this.total, this.weeks = const [],
         }
    );

    factory Contributor-activity.fromJson(Map<String, dynamic>
        json) {
        return Contributor-activity(
            author: Nullable-simple-user.fromJson(json['author'] as Map<String, dynamic>) ,
            total: (json['total'] as int).toInt() ,
            weeks: (json['weeks'] as List).map<Contributor-activityWeeksInner>((e) => Contributor-activityWeeksInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Contributor-activity? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Contributor-activity.fromJson(json);
    }

    final Nullable-simple-user  author;
    final int  total;
    final List<Contributor-activityWeeksInner>  weeks;


    Map<String, dynamic> toJson() {
        return {
            'author': author.toJson(),
            'total': total,
            'weeks': weeks.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          author,
          total,
          weeks,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Contributor-activity
            && author == other.author
            && total == other.total
            && listsEqual(weeks, other.weeks)
        ;
    }
}
