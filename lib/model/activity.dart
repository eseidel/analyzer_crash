import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/activity.dart';
import 'package:github/model/activity_activity_type.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/activity.dart';
import 'package:github/model/activity_activity_type.dart';
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Activity {
    Activity(
        { required this.id,required this.node_id,required this.before,required this.after,required this.ref,required this.timestamp,required this.activity_type,required this.actor,
         }
    );

    factory Activity.fromJson(Map<String, dynamic>
        json) {
        return Activity(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            before: json['before'] as String ,
            after: json['after'] as String ,
            ref: json['ref'] as String ,
            timestamp: DateTime.parse(json['timestamp'] as String),
            activity_type: ActivityActivityType.fromJson(json['activity_type'] as String) ,
            actor: Nullable-simple-user.fromJson(json['actor'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Activity? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Activity.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final String  before;
    final String  after;
    final String  ref;
    final DateTime  timestamp;
    final ActivityActivityType  activity_type;
    final Nullable-simple-user  actor;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'before': before,
            'after': after,
            'ref': ref,
            'timestamp': timestamp.toIso8601String(),
            'activity_type': activity_type.toJson(),
            'actor': actor.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          before,
          after,
          ref,
          timestamp,
          activity_type,
          actor,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Activity
            && id == other.id
            && node_id == other.node_id
            && before == other.before
            && after == other.after
            && ref == other.ref
            && timestamp == other.timestamp
            && activity_type == other.activity_type
            && actor == other.actor
        ;
    }
}
