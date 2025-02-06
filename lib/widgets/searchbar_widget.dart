import 'package:flutter/material.dart';
import 'package:paynet_clone/models/contact_model.dart';

class SearchBarWidget extends StatefulWidget {
  final String title;
  const SearchBarWidget({super.key, required this.title});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final List<Contact> _allContacts = [
    Contact(name: 'Ayyubxon', phoneNumber: '+998 88 123 45 67'),
    Contact(name: 'Sardor', phoneNumber: '+998 90 987 65 43'),
    Contact(name: 'Dilshod', phoneNumber: '+998 93 456 78 90'),
    Contact(name: 'Komil', phoneNumber: '+998 99 234 56 78'),
    Contact(name: 'Shaxzod', phoneNumber: '+998 94 567 89 01'),
  ];

  List<Contact> _filteredContacts = [];

  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredContacts = _allContacts;
    _searchController.addListener(_filterContacts);
  }

  void _filterContacts() {
    setState(() {
      _filteredContacts = _allContacts.where((contact) {
        final nameMatch = contact.name
            .toLowerCase()
            .contains(_searchController.text.toLowerCase());
        final phoneMatch = contact.phoneNumber
            .contains(_searchController.text); // Allow phone number search
        return nameMatch || phoneMatch;
      }).toList();
    });
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 16,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Diqqat!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Bu yerda sizning xabaringiz bo\'ladi.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Yopish'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller:
                _phoneNumberController, // Use the controller for the phone number
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: widget.title,
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 87, 84, 84)),
              filled: true,
              fillColor: const Color.fromARGB(255, 231, 228, 228),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none,
              ),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.person),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 16,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    controller: _searchController,
                                    decoration: InputDecoration(
                                      hintText: 'Kontaktlarni qidirish...',
                                      prefixIcon: const Icon(Icons.search),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    width: double.maxFinite,
                                    height: 300,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: _filteredContacts.length,
                                      itemBuilder: (context, index) {
                                        final contact =
                                            _filteredContacts[index];
                                        return ListTile(
                                          leading: CircleAvatar(
                                            child: Text(contact.name[0]),
                                          ),
                                          title: Text(contact.name),
                                          subtitle: Text(contact.phoneNumber),
                                          trailing: IconButton(
                                            icon:
                                                const Icon(Icons.navigate_next),
                                            onPressed: () {
                                              // Update the phone number in the main field
                                              _phoneNumberController.text =
                                                  contact.phoneNumber;
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  IconButton(
                    icon: const ImageIcon(AssetImage("assets/icons/scan.png")),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
