import 'package:flutter/material.dart';

class CountryList extends StatefulWidget {
  CountryList({Key? key}) : super(key: key);

  @override
  State<CountryList> createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                hintText: 'Search with country name',
                suffixIcon: searchController.text.isEmpty
                    ? const Icon(Icons.search)
                    : GestureDetector(
                        onTap: () {
                          searchController.text = "";
                          setState(() {});
                        },
                        child: Icon(Icons.clear)),
              ),
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          Expanded(
            child: FutureBuilder(
              builder: ((context, AsyncSnapshot<List<dynamic>> snapshot) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [],
                    );
                  },
                );
              }),
            ),
          )
        ]),
      ),
    );
  }
}
