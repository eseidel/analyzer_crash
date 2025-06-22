import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/page-build.dart';
import 'package:github/model/page-build_error.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/page-build.dart';
import 'package:github/model/page-build_error.dart';
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Page-build {
    Page-build(
        { required this.url,required this.status,required this.error,required this.pusher,required this.commit,required this.duration,required this.created_at,required this.updated_at,
         }
    );

    factory Page-build.fromJson(Map<String, dynamic>
        json) {
        return Page-build(
            url: json['url'] as String ,
            status: json['status'] as String ,
            error: Page-buildError.fromJson(json['error'] as Map<String, dynamic>) ,
            pusher: Nullable-simple-user.fromJson(json['pusher'] as Map<String, dynamic>) ,
            commit: json['commit'] as String ,
            duration: (json['duration'] as int).toInt() ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Page-build? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Page-build.fromJson(json);
    }

    final String  url;
    final String  status;
    final Page-buildError  error;
    final Nullable-simple-user  pusher;
    final String  commit;
    final int  duration;
    final DateTime  created_at;
    final DateTime  updated_at;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'status': status,
            'error': error.toJson(),
            'pusher': pusher.toJson(),
            'commit': commit,
            'duration': duration,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          status,
          error,
          pusher,
          commit,
          duration,
          created_at,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Page-build
            && url == other.url
            && status == other.status
            && error == other.error
            && pusher == other.pusher
            && commit == other.commit
            && duration == other.duration
            && created_at == other.created_at
            && updated_at == other.updated_at
        ;
    }
}
