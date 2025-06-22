import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-params-status-check-configuration.dart';
import 'package:github/model/repository-rule-params-status-check-configuration.dart';
@immutable
class Repository-rule-params-status-check-configuration {
    Repository-rule-params-status-check-configuration(
        { required this.context, this.integration_id,
         }
    );

    factory Repository-rule-params-status-check-configuration.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-params-status-check-configuration(
            context: json['context'] as String ,
            integration_id: (json['integration_id'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-params-status-check-configuration? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-params-status-check-configuration.fromJson(json);
    }

    final String  context;
    final  int? integration_id;


    Map<String, dynamic> toJson() {
        return {
            'context': context,
            'integration_id': integration_id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          context,
          integration_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-params-status-check-configuration
            && context == other.context
            && integration_id == other.integration_id
        ;
    }
}
