import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
class FeedLinks {
    FeedLinks(
        { required this.timeline,required this.user, this.security_advisories, this.current_user, this.current_user_public, this.current_user_actor, this.current_user_organization, this.current_user_organizations = const [], this.repository_discussions, this.repository_discussions_category,
         }
    );

    factory FeedLinks.fromJson(Map<String, dynamic>
        json) {
        return FeedLinks(
            timeline: Link-with-type.fromJson(json['timeline'] as Map<String, dynamic>) ,
            user: Link-with-type.fromJson(json['user'] as Map<String, dynamic>) ,
            security_advisories: Link-with-type.maybeFromJson(json['security_advisories'] as Map<String, dynamic>?) ,
            current_user: Link-with-type.maybeFromJson(json['current_user'] as Map<String, dynamic>?) ,
            current_user_public: Link-with-type.maybeFromJson(json['current_user_public'] as Map<String, dynamic>?) ,
            current_user_actor: Link-with-type.maybeFromJson(json['current_user_actor'] as Map<String, dynamic>?) ,
            current_user_organization: Link-with-type.maybeFromJson(json['current_user_organization'] as Map<String, dynamic>?) ,
            current_user_organizations: (json['current_user_organizations'] as List?)?.map<Link-with-type>((e) => Link-with-type.fromJson(e as Map<String, dynamic>) ).toList() ,
            repository_discussions: Link-with-type.maybeFromJson(json['repository_discussions'] as Map<String, dynamic>?) ,
            repository_discussions_category: Link-with-type.maybeFromJson(json['repository_discussions_category'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static FeedLinks? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return FeedLinks.fromJson(json);
    }

    final Link-with-type  timeline;
    final Link-with-type  user;
    final  Link-with-type? security_advisories;
    final  Link-with-type? current_user;
    final  Link-with-type? current_user_public;
    final  Link-with-type? current_user_actor;
    final  Link-with-type? current_user_organization;
    final  List<Link-with-type>? current_user_organizations;
    final  Link-with-type? repository_discussions;
    final  Link-with-type? repository_discussions_category;


    Map<String, dynamic> toJson() {
        return {
            'timeline': timeline.toJson(),
            'user': user.toJson(),
            'security_advisories': security_advisories?.toJson(),
            'current_user': current_user?.toJson(),
            'current_user_public': current_user_public?.toJson(),
            'current_user_actor': current_user_actor?.toJson(),
            'current_user_organization': current_user_organization?.toJson(),
            'current_user_organizations': current_user_organizations?.map((e) => e.toJson()).toList(),
            'repository_discussions': repository_discussions?.toJson(),
            'repository_discussions_category': repository_discussions_category?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          timeline,
          user,
          security_advisories,
          current_user,
          current_user_public,
          current_user_actor,
          current_user_organization,
          current_user_organizations,
          repository_discussions,
          repository_discussions_category,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is FeedLinks
            && timeline == other.timeline
            && user == other.user
            && security_advisories == other.security_advisories
            && current_user == other.current_user
            && current_user_public == other.current_user_public
            && current_user_actor == other.current_user_actor
            && current_user_organization == other.current_user_organization
            && listsEqual(current_user_organizations, other.current_user_organizations)
            && repository_discussions == other.repository_discussions
            && repository_discussions_category == other.repository_discussions_category
        ;
    }
}
