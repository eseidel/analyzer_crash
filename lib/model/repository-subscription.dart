import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-subscription.dart';
import 'package:github/model/repository-subscription.dart';
@immutable
class Repository-subscription {
    Repository-subscription(
        { required this.subscribed,required this.ignored,required this.reason,required this.created_at,required this.url,required this.repository_url,
         }
    );

    factory Repository-subscription.fromJson(Map<String, dynamic>
        json) {
        return Repository-subscription(
            subscribed: (json['subscribed'] as bool) ,
            ignored: (json['ignored'] as bool) ,
            reason: json['reason'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            url: json['url'] as String ,
            repository_url: json['repository_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-subscription? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-subscription.fromJson(json);
    }

    final bool  subscribed;
    final bool  ignored;
    final String  reason;
    final DateTime  created_at;
    final String  url;
    final String  repository_url;


    Map<String, dynamic> toJson() {
        return {
            'subscribed': subscribed,
            'ignored': ignored,
            'reason': reason,
            'created_at': created_at.toIso8601String(),
            'url': url,
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
          repository_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-subscription
            && subscribed == other.subscribed
            && ignored == other.ignored
            && reason == other.reason
            && created_at == other.created_at
            && url == other.url
            && repository_url == other.repository_url
        ;
    }
}
