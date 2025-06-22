import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/feed.dart';
import 'package:github/model/feed_links.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/feed.dart';
import 'package:github/model/feed_links.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';
import 'package:github/model/link-with-type.dart';

@immutable
class Feed {
  Feed({
    required this.timeline_url,
    required this.user_url,
    this.current_user_public_url,
    this.current_user_url,
    this.current_user_actor_url,
    this.current_user_organization_url,
    this.current_user_organization_urls = const [],
    this.security_advisories_url,
    this.repository_discussions_url,
    this.repository_discussions_category_url,
    required this._links,
  });

  factory Feed.fromJson(Map<String, dynamic> json) {
    return Feed(
      timeline_url: json['timeline_url'] as String,
      user_url: json['user_url'] as String,
      current_user_public_url: json['current_user_public_url'] as String?,
      current_user_url: json['current_user_url'] as String?,
      current_user_actor_url: json['current_user_actor_url'] as String?,
      current_user_organization_url:
          json['current_user_organization_url'] as String?,
      current_user_organization_urls:
          (json['current_user_organization_urls'] as List?)?.cast<String>(),
      security_advisories_url: json['security_advisories_url'] as String?,
      repository_discussions_url: json['repository_discussions_url'] as String?,
      repository_discussions_category_url:
          json['repository_discussions_category_url'] as String?,
      _links: FeedLinks.fromJson(json['_links'] as Map<String, dynamic>),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Feed? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Feed.fromJson(json);
  }

  final String timeline_url;
  final String user_url;
  final String? current_user_public_url;
  final String? current_user_url;
  final String? current_user_actor_url;
  final String? current_user_organization_url;
  final List<String>? current_user_organization_urls;
  final String? security_advisories_url;
  final String? repository_discussions_url;
  final String? repository_discussions_category_url;
  final FeedLinks _links;

  Map<String, dynamic> toJson() {
    return {
      'timeline_url': timeline_url,
      'user_url': user_url,
      'current_user_public_url': current_user_public_url,
      'current_user_url': current_user_url,
      'current_user_actor_url': current_user_actor_url,
      'current_user_organization_url': current_user_organization_url,
      'current_user_organization_urls': current_user_organization_urls,
      'security_advisories_url': security_advisories_url,
      'repository_discussions_url': repository_discussions_url,
      'repository_discussions_category_url':
          repository_discussions_category_url,
      '_links': _links.toJson(),
    };
  }

  @override
  int get hashCode => Object.hash(
    timeline_url,
    user_url,
    current_user_public_url,
    current_user_url,
    current_user_actor_url,
    current_user_organization_url,
    current_user_organization_urls,
    security_advisories_url,
    repository_discussions_url,
    repository_discussions_category_url,
    _links,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Feed &&
        timeline_url == other.timeline_url &&
        user_url == other.user_url &&
        current_user_public_url == other.current_user_public_url &&
        current_user_url == other.current_user_url &&
        current_user_actor_url == other.current_user_actor_url &&
        current_user_organization_url == other.current_user_organization_url &&
        listsEqual(
          current_user_organization_urls,
          other.current_user_organization_urls,
        ) &&
        security_advisories_url == other.security_advisories_url &&
        repository_discussions_url == other.repository_discussions_url &&
        repository_discussions_category_url ==
            other.repository_discussions_category_url &&
        _links == other._links;
  }
}
