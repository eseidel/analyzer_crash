import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
@immutable
class Code-scanning-analysis-tool {
    Code-scanning-analysis-tool(
        {  this.name, this.version, this.guid,
         }
    );

    factory Code-scanning-analysis-tool.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-analysis-tool(
            name: Code-scanning-analysis-tool-name((json['name'] as String?) ),
            version: Code-scanning-analysis-tool-version((json['version'] as String?) ),
            guid: Code-scanning-analysis-tool-guid((json['guid'] as String?) ),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-analysis-tool? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-analysis-tool.fromJson(json);
    }

    final  Code-scanning-analysis-tool-name? name;
    final  Code-scanning-analysis-tool-version? version;
    final  Code-scanning-analysis-tool-guid? guid;


    Map<String, dynamic> toJson() {
        return {
            'name': name?.toJson(),
            'version': version?.toJson(),
            'guid': guid?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          version,
          guid,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-analysis-tool
            && name == other.name
            && version == other.version
            && guid == other.guid
        ;
    }
}
