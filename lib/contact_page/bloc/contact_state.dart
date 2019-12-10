import 'package:equatable/equatable.dart';
import 'package:uangteman/contact_page/model/contact_model.dart';

abstract class ContactState extends Equatable {
  ContactState([List props = const []]) : super([props]);
}

class ContactStateLoading extends ContactState {}

class ContactStateLoaded extends ContactState {
  List<ContactModel> dataModel;
  ContactStateLoaded({this.dataModel}) : super([dataModel]);
}

class ContactStateError extends ContactState {}
