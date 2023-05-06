// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wc_session_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCSessionUpdateResponse _$WCSessionUpdateResponseFromJson(
        Map<String, dynamic> json) =>
    WCSessionUpdateResponse(
      approved: json['approved'] as bool? ?? false,
      chainId: json['chainId'] == null
          ? 0
          : const IntConverter().fromJson(json['chainId']),
      accounts: json['accounts'] == null
          ? []
          : const StringListConverter().fromJson(json['accounts']),
      networkId: json['networkId'] == null
          ? 0
          : const IntConverter().fromJson(json['networkId']),
      rpcUrl: json['rpcUrl'] as String? ?? '',
    );

Map<String, dynamic> _$WCSessionUpdateResponseToJson(
        WCSessionUpdateResponse instance) =>
    <String, dynamic>{
      'approved': instance.approved,
      'chainId': const IntConverter().toJson(instance.chainId),
      'accounts': const StringListConverter().toJson(instance.accounts),
      'networkId': const IntConverter().toJson(instance.networkId),
      'rpcUrl': instance.rpcUrl,
    };
