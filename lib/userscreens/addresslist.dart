import 'package:flutter/material.dart';

class AddressList extends StatefulWidget {
  @override
  _AddressListState createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
  List<String> addresses = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blueGrey,
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
          return ListTile(
            title: Text(addresses[index]),
          );
        },
      ),
    );
  }
}

class AddAddressPage extends StatefulWidget {
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

  String? addressType = 'Home'; // Added for selecting address type

  bool isAltPhoneVisible = false;

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
                  color: Colors.red, // Required asterisk color
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
                  color: Colors.red, // Required asterisk color
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
                    color: Colors.red, // Required asterisk color
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
                            color: Colors.red, // Required asterisk color
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: TextFormField(
                            controller: fullNameController,
                            decoration: InputDecoration(
                              hintText: 'Enter your State',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        // Other fields follow the same pattern
                        // Repeat the structure for other fields such as Phone Number, etc.
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
                            color: Colors.red, // Required asterisk color
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: TextFormField(
                            controller: fullNameController,
                            decoration: InputDecoration(
                              hintText: 'Enter your District',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        // Other fields follow the same pattern
                        // Repeat the structure for other fields such as Phone Number, etc.
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
                            color: Colors.red, // Required asterisk color
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: TextFormField(
                            controller: fullNameController,
                            decoration: InputDecoration(
                              hintText: 'Enter your House Number',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        // Other fields follow the same pattern
                        // Repeat the structure for other fields such as Phone Number, etc.
                      ],
                    ),

                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pin Code',
                          style: TextStyle(
                            color: Colors.red, // Required asterisk color
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: TextFormField(
                            controller: fullNameController,
                            decoration: InputDecoration(
                              hintText: 'Enter your Pincode',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        // Other fields follow the same pattern
                        // Repeat the structure for other fields such as Phone Number, etc.
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
                            color: Colors.red, // Required asterisk color
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
            color: Colors.red, // Required asterisk color
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
                padding: const EdgeInsets. only(left: 150.0, bottom: 80),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate and save address
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
                      address += ', $houseNumber, $district, $state, $pincode';
                      if (altPhone.isNotEmpty) {
                        address += ', $altPhone';
                      }
                      address += ', $addressType'; // Append address type
                      Navigator.pop(context, address);
                    } else {
                      // Show error message or handle validation
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Background color
                    onPrimary: Colors.white, // Text color
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


