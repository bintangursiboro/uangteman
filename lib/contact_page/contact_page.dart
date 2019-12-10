import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uangteman/contact_page/bloc/contact_bloc.dart';
import 'package:uangteman/contact_page/bloc/contact_event.dart';
import 'package:uangteman/contact_page/bloc/contact_state.dart';
import 'package:uangteman/contact_page/contact_page_view.dart';

class ContactPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContactPageState();
  }
}

class _ContactPageState extends State<ContactPage> {
  ContactBloc _bloc = ContactBloc();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetContactData());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, ContactState state) {
        return ContactPageView(
          isLoading: (state is ContactStateLoading),
          dataModel: (state is ContactStateLoaded) ? state.dataModel : [],
          isError: (state is ContactStateError),
        );
      },
    );
  }
}
