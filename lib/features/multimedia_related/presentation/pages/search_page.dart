import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchQueryController = TextEditingController();
  String _searchText = '';
  final List<String> _recentSearches = [];

  @override
  void dispose() {
    _searchQueryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 42, 25, 94),
              Color.fromARGB(255, 13, 7, 27),
              Color.fromARGB(255, 42, 25, 94),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            Container(
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: const Text(
                  'Buscar artista o tema ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Add your logic here to handle the back button press
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                width: 380,
                height: 70,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 63, 40, 103).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: TextField(
                    controller: _searchQueryController,
                    onChanged: (value) {
                      setState(() {
                        _searchText = value;
                      });
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 25.0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: '¿Qué deseas escuchar?',
                      hintStyle:
                          const TextStyle(color: Colors.grey, height: 1.5),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.clear,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _recentSearches.add(_searchText);
                            _searchQueryController.clear();
                            _searchText = '';
                          });
                        },
                      ),
                    ),
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 254, 254), height: 1.5),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
