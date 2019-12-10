import 'package:equatable/equatable.dart';

abstract class ContactEvent extends Equatable {
  ContactEvent([List props = const []]) : super([props]);
}

class GetContactData extends ContactEvent {}
