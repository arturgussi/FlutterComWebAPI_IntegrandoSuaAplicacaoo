import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_webapi_first_course/helpers/logout.dart';
import 'package:flutter_webapi_first_course/screens/commom/exception_dialog.dart';
import 'package:flutter_webapi_first_course/screens/home_screen/widgets/home_screen_list.dart';
import 'package:flutter_webapi_first_course/services/journal_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/journal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // O último dia apresentado na lista
  DateTime currentDay = DateTime.now();

  // Tamanho da lista
  int windowPage = 10;
  int? userId;
  String? userToken;

  // A base de dados mostrada na lista
  Map<String, Journal> database = {};

  final ScrollController _listScrollController = ScrollController();

  JournalService service = JournalService();

  @override
  void initState() {
    refresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Título basado no dia atual
        title: Text(
          "${currentDay.day}  |  ${currentDay.month}  |  ${currentDay.year}",
        ),
        actions: [
          IconButton(
              onPressed: () {
                refresh();
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: (userId != null && userToken != null)
          ? ListView(
              controller: _listScrollController,
              children: generateListJournalCards(
                  refreshFunction: refresh,
                  windowPage: windowPage,
                  currentDay: currentDay,
                  database: database,
                  userId: userId!,
                  token: userToken!),
            )
          : const Center(child: CircularProgressIndicator()),
      drawer: Drawer(
          child: ListView(
        children: [
          ListTile(
            onTap: () {
              logout(context);
            },
            title: const Text("Sair"),
            leading: const Icon(Icons.logout),
          )
        ],
      )),
    );
  }

  void refresh() async {
    SharedPreferences.getInstance().then((prefs) {
      String? token = prefs.getString('accessToken');
      String? email = prefs.getString('email');
      int? id = prefs.getInt('id');

      if (token != null && email != null && id != null) {
        setState(() {
          userId = id;
          userToken = token;
        });
        service
            .getAll(id: id.toString(), token: userToken!)
            .then((List<Journal> listJournal) {
          setState(() {
            database = {};
            for (Journal journal in listJournal) {
              database[journal.id] = journal;
            }
          });
        });
      } else {
        Navigator.pushReplacementNamed(context, 'login');
      }
    }).catchError((error) {
      logout(context);
    }, test: (error) => error is TokenNotValidException).catchError((error) {
      var innerError = error as HttpException;
      showExceptionDialog(context, content: innerError.message);
    }, test: (error) => error is HttpException);
  }
}
