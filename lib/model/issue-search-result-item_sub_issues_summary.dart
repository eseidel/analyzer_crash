import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issue-search-result-item_sub_issues_summary.dart';
import 'package:github/model/issue-search-result-item_sub_issues_summary.dart';
@immutable
class Issue-search-result-itemSubIssuesSummary {
    Issue-search-result-itemSubIssuesSummary(
        { required this.total,required this.completed,required this.percent_completed,
         }
    );

    factory Issue-search-result-itemSubIssuesSummary.fromJson(Map<String, dynamic>
        json) {
        return Issue-search-result-itemSubIssuesSummary(
            total: (json['total'] as int).toInt() ,
            completed: (json['completed'] as int).toInt() ,
            percent_completed: (json['percent_completed'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issue-search-result-itemSubIssuesSummary? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issue-search-result-itemSubIssuesSummary.fromJson(json);
    }

    final int  total;
    final int  completed;
    final int  percent_completed;


    Map<String, dynamic> toJson() {
        return {
            'total': total,
            'completed': completed,
            'percent_completed': percent_completed,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total,
          completed,
          percent_completed,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issue-search-result-itemSubIssuesSummary
            && total == other.total
            && completed == other.completed
            && percent_completed == other.percent_completed
        ;
    }
}
