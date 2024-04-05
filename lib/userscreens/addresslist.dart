import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddressList extends StatefulWidget {
  @override
  _AddressListState createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
  List<String> addresses = [];
  int _selectedIndex = -1;

  @override
  void initState() {
    super.initState();
    _loadAddresses();
  }

  void _loadAddresses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      addresses = prefs.getStringList('addresses') ?? [];
    });
  }

  void _saveAddresses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('addresses', addresses);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Text(
            'Address',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.red,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddAddressPage(),
                  ),
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      addresses.add(value);
                      _saveAddresses();
                    });
                  }
                });
              },
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: addresses.length,
        itemBuilder: (context, index) {
          // Split the address into components
          List<String> addressComponents = addresses[index].split(', ');

          // Extract name and phone number
          String name = addressComponents[0];
          String phoneNumber = addressComponents[1];

          // Join other details into a paragraph-like format separated by commas
          String otherDetails = addressComponents.sublist(2, addressComponents.length - 1).join(', ');

          // Extract the work type
          String workType = addressComponents.last;

          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Colors.grey.shade300, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Radio(
                        value: index,
                        groupValue: _selectedIndex,
                        onChanged: (int? value) {
                          setState(() {
                            _selectedIndex = value!;
                          });
                        },
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name: $name',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Text(
                              'Phone: $phoneNumber',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            SizedBox(height: 8),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    otherDetails,
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddAddressPage(
                                address: addresses[index],
                              ),
                            ),
                          ).then((updatedAddress) {
                            if (updatedAddress != null) {
                              setState(() {
                                addresses[index] = updatedAddress;
                              });
                            }
                          });
                        },
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        workType,
                        style: TextStyle(fontSize: 12.0, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );

        },
      ),
    );
  }
}

class AddAddressPage extends StatefulWidget {
  final String? address;

  AddAddressPage({this.address});

  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController altPhoneController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController houseNumberController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  String? addressType = 'Home';

  bool isAltPhoneVisible = false;

  @override
  void initState() {
    super.initState();
    if (widget.address != null) {
      List<String> addressComponents = widget.address!.split(', ');
      fullNameController.text = addressComponents[0];
      phoneController.text = addressComponents[1];
      stateController.text = addressComponents[2];
      districtController.text = addressComponents[3];
      houseNumberController.text = addressComponents[4];
      pincodeController.text = addressComponents[5];
      addressController.text = addressComponents[6];
      if (addressComponents.length > 7) {
        altPhoneController.text = addressComponents[7];
      }
      addressType = addressComponents.last;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Add Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full Name',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              TextField(
                controller: fullNameController,
                decoration: InputDecoration(
                  hintText: 'Enter your full name',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Phone Number',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter your phone number',
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isAltPhoneVisible = !isAltPhoneVisible;
                  });
                },
                child: Text(
                  '+ Add alternative phone number',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              if (isAltPhoneVisible) ...[
                SizedBox(height: 20),
                Text(
                  'Alternative Phone Number',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                TextField(
                  controller: altPhoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Enter alternative phone number',
                  ),
                ),
              ],
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'State',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: TextFormField(
                            controller: stateController,
                            decoration: InputDecoration(
                              hintText: 'Enter your State',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'District',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: TextFormField(
                            controller: districtController,
                            decoration: InputDecoration(
                              hintText: 'Enter your District',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'House No',
                          style: TextStyle(

                            color: Colors.red,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: TextFormField(
                            controller: houseNumberController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(

                              hintText: 'Enter your House Number',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pin Code',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: TextFormField(
                            controller: pincodeController,
                            decoration: InputDecoration(
                              hintText: 'Enter your Pincode',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        TextField(
                          controller: addressController,
                          decoration: InputDecoration(
                            hintText: 'Enter your full address',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Type of Address',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            addressType = 'Home';
                          });
                        },
                        child: Row(
                          children: [
                            Radio(
                              value: 'Home',
                              groupValue: addressType,
                              onChanged: (value) {
                                setState(() {
                                  addressType = value;
                                });
                              },
                            ),
                            Text('Home'),
                            Icon(Icons.home),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            addressType = 'Work';
                          });
                        },
                        child: Row(
                          children: [
                            Radio(
                              value: 'Work',
                              groupValue: addressType,
                              onChanged: (value) {
                                setState(() {
                                  addressType = value;
                                });
                              },
                            ),
                            Text('Work'),
                            Icon(Icons.work),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 150.0, bottom: 80),
                child: ElevatedButton(
                  onPressed: () {
                    String fullName = fullNameController.text.trim();
                    String phone = phoneController.text.trim();
                    String altPhone = altPhoneController.text.trim();
                    String state = stateController.text.trim();
                    String district = districtController.text.trim();
                    String houseNumber = houseNumberController.text.trim();
                    String pincode = pincodeController.text.trim();
                    String address = addressController.text.trim();
                    if (fullName.isNotEmpty &&
                        phone.isNotEmpty &&
                        state.isNotEmpty &&
                        district.isNotEmpty &&
                        houseNumber.isNotEmpty &&
                        pincode.isNotEmpty &&
                        address.isNotEmpty) {
                      address = '$fullName, $phone, $address, $houseNumber, $district, $state, $pincode';
                      if (altPhone.isNotEmpty) {
                        address += ', $altPhone';
                      }
                      address += ', $addressType';
                      Navigator.pop(context, address);
                    } else {
                      // Handle validation/error
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                  ),
                  child: Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AddressList(),
  ));
}
