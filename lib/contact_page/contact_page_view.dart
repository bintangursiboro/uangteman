import 'package:flutter/material.dart';
import 'package:uangteman/contact_page/model/contact_model.dart';

class ContactPageView extends StatelessWidget {
  final bool isError;
  final List<ContactModel> dataModel;
  final bool isLoading;

  ContactPageView({
    this.dataModel,
    this.isError,
    this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: (isLoading)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: dataModel.length,
              itemBuilder: (BuildContext context, int index) {
                return ContactCard(
                  contact: dataModel[index],
                );
              },
            ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final ContactModel contact;
  ContactCard({this.contact});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: <Widget>[
          Image.network(contact.photo),
          Text(contact.firstName + ' ' + contact.lastName),
          Text('${contact.age}'),
          Text(contact.id)
        ],
      ),
    );
  }
}
