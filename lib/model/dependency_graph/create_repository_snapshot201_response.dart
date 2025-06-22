import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependency_graph/create_repository_snapshot201_response.dart';
import 'package:github/model/dependency_graph/create_repository_snapshot201_response.dart';
@immutable
class DependencyGraph&#x2F;createRepositorySnapshot201Response {
    DependencyGraph&#x2F;createRepositorySnapshot201Response(
        { required this.id,required this.created_at,required this.result,required this.message,
         }
    );

    factory DependencyGraph&#x2F;createRepositorySnapshot201Response.fromJson(Map<String, dynamic>
        json) {
        return DependencyGraph&#x2F;createRepositorySnapshot201Response(
            id: (json['id'] as int).toInt() ,
            created_at: json['created_at'] as String ,
            result: json['result'] as String ,
            message: json['message'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static DependencyGraph&#x2F;createRepositorySnapshot201Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return DependencyGraph&#x2F;createRepositorySnapshot201Response.fromJson(json);
    }

    final int  id;
    final String  created_at;
    final String  result;
    final String  message;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'created_at': created_at,
            'result': result,
            'message': message,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          created_at,
          result,
          message,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is DependencyGraph&#x2F;createRepositorySnapshot201Response
            && id == other.id
            && created_at == other.created_at
            && result == other.result
            && message == other.message
        ;
    }
}
