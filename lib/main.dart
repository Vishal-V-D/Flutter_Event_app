import 'package:event_app/about.dart';
import 'package:flutter/material.dart';
 // Import the AboutProfile page
import 'package:event_app/calendar.dart';
import 'package:event_app/notification.dart';
import 'package:event_app/Upcoming.dart';
import 'package:event_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Manager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 81, 249, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Event Manager'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this); // Length of 4 to match BottomNavigationBar items
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            onPressed: () {
              if (_tabController.index < _tabController.length) {
                _tabController.animateTo(3); // Switch to the Notifications tab
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: MySearchDelegate());
            },
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Home(),
          CalendarScreen(),
          Upcoming(),
          Notifications(),
        ],
      ),
      drawer: Drawer(
        elevation: 5.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Vishal"),
              accountEmail: Text("w6K4I@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('Pic'),
              ),
            ),
            ListTile(
              title: Text("All events"),
              leading: Icon(Icons.calendar_month),
              onTap: () {
                // Handle navigation to All events page
                Navigator.of(context).pop(); // Close the drawer
              },
            ),
            Divider(height: 0.1),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.info),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AboutProfile()),
                );
              },
            ),
            Divider(height: 0.1),
            ListTile(
              title: Text("Upcoming"),
              leading: Icon(Icons.upcoming),
              onTap: () {
                Navigator.of(context).pop(); // Close the drawer
                _tabController.animateTo(2); // Switch to the Upcoming tab
              },
            ),
            Divider(height: 0.1),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings_suggest_outlined),
              onTap: () {
                // Handle navigation to Settings page
                Navigator.of(context).pop(); // Close the drawer
              },
            ),
            Divider(height: 0.1),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index >= 0 && index < _tabController.length) { // Ensure index is within bounds
            setState(() {
              _currentIndex = index;
              _tabController.animateTo(index);
            });
          }
        },
        selectedItemColor: Color.fromARGB(255, 3, 255, 209),
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: "Events",
            icon: Icon(Icons.calendar_month),
          ),
          BottomNavigationBarItem(
            label: "Upcoming",
            icon: Icon(Icons.upcoming),
          ),
          BottomNavigationBarItem(
            label: "My Events",
            icon: Icon(Icons.bookmark_added),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class MySearchDelegate extends SearchDelegate {
  final List<String> searchItems = [
    "Hackathon",
    "Workshop",
    "Webinar",
    "Conference",
    "Symposium",
    "Seminar",
    "Meetup",
    "Codeathon",
    "Game Jam",
    "Design Sprint",
    "Pitch Competition",
    "Debate",
    "Panel Discussion",
    "Career Fair",
    "Networking Event",
    "Charity Gala",
    "Fundraiser",
    "Art Exhibition",
    "Music Concert",
    "Film Screening",
    "Comedy Show",
    "Poetry Slam",
    "Science Fair",
    "Robotics Competition",
    "Virtual Reality Experience",
    "Tech Talk",
    "Startup Pitch Event",
    "Culinary Competition",
    "Fashion Show",
    "Photography Exhibition"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<String> matchQuery = searchItems
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(matchQuery[index]),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> matchQuery = searchItems
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(matchQuery[index]),
        );
      },
    );
  }
}
