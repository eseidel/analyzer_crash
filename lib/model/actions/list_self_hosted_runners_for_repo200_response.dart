import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/list_self_hosted_runners_for_repo200_response.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions/list_self_hosted_runners_for_repo200_response.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
@immutable
class Actions&#x2F;listSelfHostedRunnersForRepo200Response {
    Actions&#x2F;listSelfHostedRunnersForRepo200Response(
        { required this.total_count, this.runners = const [],
         }
    );

    factory Actions&#x2F;listSelfHostedRunnersForRepo200Response.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;listSelfHostedRunnersForRepo200Response(
            total_count: (json['total_count'] as int).toInt() ,
            runners: (json['runners'] as List).map<Runner>((e) => Runner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;listSelfHostedRunnersForRepo200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;listSelfHostedRunnersForRepo200Response.fromJson(json);
    }

    final int  total_count;
    final List<Runner>  runners;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'runners': runners.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          runners,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;listSelfHostedRunnersForRepo200Response
            && total_count == other.total_count
            && listsEqual(runners, other.runners)
        ;
    }
}
