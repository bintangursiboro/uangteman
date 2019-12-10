import 'package:bloc/bloc.dart';
import 'package:uangteman/contact_page/bloc/contact_event.dart';
import 'package:uangteman/contact_page/bloc/contact_state.dart';
import 'package:uangteman/contact_page/service/contact_service.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  @override
  ContactState get initialState => ContactStateLoading();

  @override
  Stream<ContactState> mapEventToState(ContactEvent event) async* {
    ContactService service = ContactService();
    yield ContactStateLoading();
    try {
      yield await service.fetchDataFromService().then((model) {
        return ContactStateLoaded(dataModel: model);
      });
    } catch (e) {
      yield ContactStateError();
    }
  }
}
