import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/review-comment_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/review-comment_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
@immutable
class Review-commentLinks {
    Review-commentLinks(
        { required this.self,required this.html,required this.pull_request,
         }
    );

    factory Review-commentLinks.fromJson(Map<String, dynamic>
        json) {
        return Review-commentLinks(
            self: Link.fromJson(json['self'] as Map<String, dynamic>) ,
            html: Link.fromJson(json['html'] as Map<String, dynamic>) ,
            pull_request: Link.fromJson(json['pull_request'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Review-commentLinks? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Review-commentLinks.fromJson(json);
    }

    final Link  self;
    final Link  html;
    final Link  pull_request;


    Map<String, dynamic> toJson() {
        return {
            'self': self.toJson(),
            'html': html.toJson(),
            'pull_request': pull_request.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          self,
          html,
          pull_request,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Review-commentLinks
            && self == other.self
            && html == other.html
            && pull_request == other.pull_request
        ;
    }
}
