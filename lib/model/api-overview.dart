import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/api-overview.dart';
import 'package:github/model/api-overview_ssh_key_fingerprints.dart';
import 'package:github/model/api-overview_domains.dart';
import 'package:github/model/api-overview_domains_actions_inbound.dart';
import 'package:github/model/api-overview_domains_artifact_attestations.dart';
import 'package:github/model/api-overview.dart';
import 'package:github/model/api-overview_ssh_key_fingerprints.dart';
import 'package:github/model/api-overview_domains.dart';
import 'package:github/model/api-overview_domains_actions_inbound.dart';
import 'package:github/model/api-overview_domains_artifact_attestations.dart';
@immutable
class Api-overview {
    Api-overview(
        { required this.verifiable_password_authentication, this.ssh_key_fingerprints, this.ssh_keys = const [], this.hooks = const [], this.github_enterprise_importer = const [], this.web = const [], this.api = const [], this.git = const [], this.packages = const [], this.pages = const [], this.importer = const [], this.actions = const [], this.actions_macos = const [], this.codespaces = const [], this.dependabot = const [], this.copilot = const [], this.domains,
         }
    );

    factory Api-overview.fromJson(Map<String, dynamic>
        json) {
        return Api-overview(
            verifiable_password_authentication: (json['verifiable_password_authentication'] as bool) ,
            ssh_key_fingerprints: Api-overviewSshKeyFingerprints.maybeFromJson(json['ssh_key_fingerprints'] as Map<String, dynamic>?) ,
            ssh_keys: (json['ssh_keys'] as List?)?.cast<String>() ,
            hooks: (json['hooks'] as List?)?.cast<String>() ,
            github_enterprise_importer: (json['github_enterprise_importer'] as List?)?.cast<String>() ,
            web: (json['web'] as List?)?.cast<String>() ,
            api: (json['api'] as List?)?.cast<String>() ,
            git: (json['git'] as List?)?.cast<String>() ,
            packages: (json['packages'] as List?)?.cast<String>() ,
            pages: (json['pages'] as List?)?.cast<String>() ,
            importer: (json['importer'] as List?)?.cast<String>() ,
            actions: (json['actions'] as List?)?.cast<String>() ,
            actions_macos: (json['actions_macos'] as List?)?.cast<String>() ,
            codespaces: (json['codespaces'] as List?)?.cast<String>() ,
            dependabot: (json['dependabot'] as List?)?.cast<String>() ,
            copilot: (json['copilot'] as List?)?.cast<String>() ,
            domains: Api-overviewDomains.maybeFromJson(json['domains'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Api-overview? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Api-overview.fromJson(json);
    }

    final bool  verifiable_password_authentication;
    final  Api-overviewSshKeyFingerprints? ssh_key_fingerprints;
    final  List<String>? ssh_keys;
    final  List<String>? hooks;
    final  List<String>? github_enterprise_importer;
    final  List<String>? web;
    final  List<String>? api;
    final  List<String>? git;
    final  List<String>? packages;
    final  List<String>? pages;
    final  List<String>? importer;
    final  List<String>? actions;
    final  List<String>? actions_macos;
    final  List<String>? codespaces;
    final  List<String>? dependabot;
    final  List<String>? copilot;
    final  Api-overviewDomains? domains;


    Map<String, dynamic> toJson() {
        return {
            'verifiable_password_authentication': verifiable_password_authentication,
            'ssh_key_fingerprints': ssh_key_fingerprints?.toJson(),
            'ssh_keys': ssh_keys,
            'hooks': hooks,
            'github_enterprise_importer': github_enterprise_importer,
            'web': web,
            'api': api,
            'git': git,
            'packages': packages,
            'pages': pages,
            'importer': importer,
            'actions': actions,
            'actions_macos': actions_macos,
            'codespaces': codespaces,
            'dependabot': dependabot,
            'copilot': copilot,
            'domains': domains?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          verifiable_password_authentication,
          ssh_key_fingerprints,
          ssh_keys,
          hooks,
          github_enterprise_importer,
          web,
          api,
          git,
          packages,
          pages,
          importer,
          actions,
          actions_macos,
          codespaces,
          dependabot,
          copilot,
          domains,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Api-overview
            && verifiable_password_authentication == other.verifiable_password_authentication
            && ssh_key_fingerprints == other.ssh_key_fingerprints
            && listsEqual(ssh_keys, other.ssh_keys)
            && listsEqual(hooks, other.hooks)
            && listsEqual(github_enterprise_importer, other.github_enterprise_importer)
            && listsEqual(web, other.web)
            && listsEqual(api, other.api)
            && listsEqual(git, other.git)
            && listsEqual(packages, other.packages)
            && listsEqual(pages, other.pages)
            && listsEqual(importer, other.importer)
            && listsEqual(actions, other.actions)
            && listsEqual(actions_macos, other.actions_macos)
            && listsEqual(codespaces, other.codespaces)
            && listsEqual(dependabot, other.dependabot)
            && listsEqual(copilot, other.copilot)
            && domains == other.domains
        ;
    }
}
