import '../../../module/module.dart';
import '../program/program_model.dart';

class AlertModel extends GetModel {
  const AlertModel({
    required this.alertsWithDetails,
  });

  factory AlertModel.empty() => _empty;

  factory AlertModel.dummy() => _dummy;

  factory AlertModel.fromJson(json) => json is Map
      ? _empty.copyWith(
          alertsWithDetails: Iterable.castFrom(json['alertsWithDetails'] ?? const Iterable.empty()).map(ProgramModel.fromJson),
        )
      : _empty;

  final Iterable<ProgramModel> alertsWithDetails;

  static const AlertModel _empty = AlertModel(
    alertsWithDetails: Iterable.empty(),
  );

  static final AlertModel _dummy = AlertModel(
    alertsWithDetails: ProgramModel.dummys(),
  );

  @override
  bool get isEmpty => this == _empty;

  @override
  AlertModel copyWith({
    Iterable<ProgramModel>? alertsWithDetails,
  }) =>
      AlertModel(
        alertsWithDetails: alertsWithDetails ?? this.alertsWithDetails,
      );

  @override
  List<Object?> get props => [alertsWithDetails];

  @override
  String toString() => 'alertsWithDetails: $alertsWithDetails';
}
