// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wc_session_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCSessionUpdateResponse _$WCSessionUpdateResponseFromJson(
        Map<String, dynamic> json) =>
    WCSessionUpdateResponse(
      approved: json['approved'] as bool? ?? false,
      chainId: const IntConverter().fromJson(json['chainId']),
      accounts: (json['accounts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      networkId: const IntConverter().fromJson(json['networkId']),
      rpcUrl: json['rpcUrl'] as String? ?? '',
    );

Map<String, dynamic> _$WCSessionUpdateResponseToJson(
        WCSessionUpdateResponse instance) =>
    <String, dynamic>{
      'approved': instance.approved,
      'chainId': instance.chainId,
      'accounts': instance.accounts,
      'networkId': instance.networkId,
      'rpcUrl': instance.rpcUrl,
    };
