import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/thread-subscription.dart';
import 'package:github/model/thread-subscription.dart';
@immutable
class Thread-subscription {
    Thread-subscription(
        { required this.subscribed,required this.ignored,required this.reason,required this.created_at,required this.url, this.thread_url, this.repository_url,
         }
    );

    factory Thread-subscription.fromJson(Map<String, dynamic>
        json) {
        return Thread-subscription(
            subscribed: (json['subscribed'] as bool) ,
            ignored: (json['ignored'] as bool) ,
            reason: json['reason'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            url: json['url'] as String ,
            thread_url: json['thread_url'] as String? ,
            repository_url: json['repository_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Thread-subscription? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Thread-subscription.fromJson(json);
    }

    final bool  subscribed;
    final bool  ignored;
    final String  reason;
    final DateTime  created_at;
    final String  url;
    final  String? thread_url;
    final  String? repository_url;


    Map<String, dynamic> toJson() {
        return {
            'subscribed': subscribed,
            'ignored': ignored,
            'reason': reason,
            'created_at': created_at.toIso8601String(),
            'url': url,
            'thread_url': thread_url,
            'repository_url': repository_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          subscribed,
          ignored,
          reason,
          created_at,
          url,
          thread_url,
          repository_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Thread-subscription
            && subscribed == other.subscribed
            && ignored == other.ignored
            && reason == other.reason
            && created_at == other.created_at
            && url == other.url
            && thread_url == other.thread_url
            && repository_url == other.repository_url
        ;
    }
}
