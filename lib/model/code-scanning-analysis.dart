import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-analysis.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-commit-sha.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-analysis-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-analysis-url.dart';
import 'package:github/model/code-scanning-analysis-sarif-id.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
import 'package:github/model/code-scanning-analysis.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-analysis-commit-sha.dart';
import 'package:github/model/code-scanning-analysis-analysis-key.dart';
import 'package:github/model/code-scanning-analysis-environment.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-analysis-url.dart';
import 'package:github/model/code-scanning-analysis-sarif-id.dart';
import 'package:github/model/code-scanning-analysis-tool.dart';
import 'package:github/model/code-scanning-analysis-tool-name.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-guid.dart';
@immutable
class Code-scanning-analysis {
    Code-scanning-analysis(
        { required this.ref,required this.commit_sha,required this.analysis_key,required this.environment, this.category,required this.error,required this.created_at,required this.results_count,required this.rules_count,required this.id,required this.url,required this.sarif_id,required this.tool,required this.deletable,required this.warning,
         }
    );

    factory Code-scanning-analysis.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-analysis(
            ref: Code-scanning-ref((json['ref'] as String) ),
            commit_sha: Code-scanning-analysis-commit-sha((json['commit_sha'] as String) ),
            analysis_key: Code-scanning-analysis-analysis-key((json['analysis_key'] as String) ),
            environment: Code-scanning-analysis-environment((json['environment'] as String) ),
            category: Code-scanning-analysis-category((json['category'] as String?) ),
            error: json['error'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            results_count: (json['results_count'] as int).toInt() ,
            rules_count: (json['rules_count'] as int).toInt() ,
            id: (json['id'] as int).toInt() ,
            url: Code-scanning-analysis-url((json['url'] as String) ),
            sarif_id: Code-scanning-analysis-sarif-id((json['sarif_id'] as String) ),
            tool: Code-scanning-analysis-tool.fromJson(json['tool'] as Map<String, dynamic>) ,
            deletable: (json['deletable'] as bool) ,
            warning: json['warning'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-analysis? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-analysis.fromJson(json);
    }

    final Code-scanning-ref  ref;
    final Code-scanning-analysis-commit-sha  commit_sha;
    final Code-scanning-analysis-analysis-key  analysis_key;
    final Code-scanning-analysis-environment  environment;
    final  Code-scanning-analysis-category? category;
    final String  error;
    final DateTime  created_at;
    final int  results_count;
    final int  rules_count;
    final int  id;
    final Code-scanning-analysis-url  url;
    final Code-scanning-analysis-sarif-id  sarif_id;
    final Code-scanning-analysis-tool  tool;
    final bool  deletable;
    final String  warning;


    Map<String, dynamic> toJson() {
        return {
            'ref': ref.toJson(),
            'commit_sha': commit_sha.toJson(),
            'analysis_key': analysis_key.toJson(),
            'environment': environment.toJson(),
            'category': category?.toJson(),
            'error': error,
            'created_at': created_at.toIso8601String(),
            'results_count': results_count,
            'rules_count': rules_count,
            'id': id,
            'url': url.toJson(),
            'sarif_id': sarif_id.toJson(),
            'tool': tool.toJson(),
            'deletable': deletable,
            'warning': warning,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ref,
          commit_sha,
          analysis_key,
          environment,
          category,
          error,
          created_at,
          results_count,
          rules_count,
          id,
          url,
          sarif_id,
          tool,
          deletable,
          warning,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-analysis
            && ref == other.ref
            && commit_sha == other.commit_sha
            && analysis_key == other.analysis_key
            && environment == other.environment
            && category == other.category
            && error == other.error
            && created_at == other.created_at
            && results_count == other.results_count
            && rules_count == other.rules_count
            && id == other.id
            && url == other.url
            && sarif_id == other.sarif_id
            && tool == other.tool
            && deletable == other.deletable
            && warning == other.warning
        ;
    }
}
