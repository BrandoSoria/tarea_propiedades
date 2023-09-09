import 'package:flutter/material.dart';
import 'package:tarea_propiedades/pages/alert_dialog2.dart';
import 'package:tarea_propiedades/pages/cardex.dart';
import 'package:tarea_propiedades/pages/checkbox.dart';
import 'package:tarea_propiedades/pages/child_scroll_view.dart';
import 'package:tarea_propiedades/pages/form.dart';
import 'package:tarea_propiedades/pages/form_field.dart';
import 'package:tarea_propiedades/pages/radio.dart';
import 'package:tarea_propiedades/pages/show_date_picker.dart';

class ScaffoldTest extends StatefulWidget {
  const ScaffoldTest({Key? key}) : super(key: key);

  @override
  State<ScaffoldTest> createState() => _ScaffoldTestState();
}

class _ScaffoldTestState extends State<ScaffoldTest> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOption = <Widget>[
    Text('Home', style: optionStyle),
    Text('Peoples', style: optionStyle),
    Text('School', style: optionStyle),
    Text('Admin', style: optionStyle),
  ];

  void _onItemTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//llamada desde un void hacia el contenido de la pantalla cardex.dart
  void _openCardScreen() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return const CardExample();
      },
    ));
  }

//llamada a checkbox.dart
  void _openCheckboxs() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return const CheckExam();
      },
    ));
  }

//llamada a showdata.dart
  void _openShowDatePicker() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return const DatePickerApp();
      },
    ));
  }

//llamada a form.dart
  void _openForm() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return const FormExampleApp();
      },
    ));
  }

//llamada a form_field.dart
  void _openFormField() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return const TextFieldExampleApp();
      },
    ));
  }

//llamada a list_view.dart
  void _openListView() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return ListView();
      },
    ));
  }

  void _openRadio() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return const RadioExampleApp();
      },
    ));
  }

  void _childScroll() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return const SingleChildScrollViewExampleApp();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tarea Components By Inge Soria'),
        backgroundColor: Colors.deepOrangeAccent[100],
        elevation: 15,
        shadowColor: Colors.orangeAccent,
        actionsIconTheme: const IconThemeData(color: Colors.white, size: 30),
        actions: const [
          Icon(Icons.more_vert),
        ],
      ),
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      drawerScrimColor: Colors.red,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Peoples',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            label: 'School',
            backgroundColor: Colors.orangeAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings),
            label: 'Admin',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amberAccent,
        onTap: _onItemTab,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        focusElevation: 300,
        onPressed: _openCardScreen,
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Mis Componentes"),
              accountEmail: Text("Brandon Antonio Soria Gomez"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/1564398871996174336/M-hffw5a_400x400.jpg'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const ScreenTest();
                  },
                ));
              },
              child: const ListTile(
                title: Text("Componente Alert Dialog"),
                leading: Icon(Icons.warning),
              ),
            ),
            const Divider(
              height: 0.1,
            ),

            //list title del drawer menu card
            ListTile(
              title: const Text("Card"),
              leading: const Icon(Icons.card_travel),
              //llamada al metodo void con un onTap
              onTap: _openCardScreen,
            ),
            const Divider(
              height: 0.1,
            ),

            //checkbox
            ListTile(
              title: const Text("Checkbox"),
              leading: const Icon(Icons.check_box),
              onTap: _openCheckboxs,
            ),
            const Divider(
              height: 0.1,
            ),
            //form
            ListTile(
              title: const Text("Form"),
              leading: const Icon(Icons.text_fields_outlined),
              onTap: _openForm,
            ),
            const Divider(
              height: 0.1,
            ),

            //formField
            ListTile(
              title: const Text("Form Field"),
              leading: const Icon(Icons.text_fields_outlined),
              onTap: _openFormField,
            ),
            const Divider(
              height: 0.1,
            ),

            //list view
            ListTile(
              title: const Text("list view"),
              leading: const Icon(Icons.list),
              onTap: _openListView,
            ),
            const Divider(
              height: 0.1,
            ),

            //radio
            ListTile(
              title: const Text("radio"),
              leading: const Icon(Icons.radio_button_checked_outlined),
              onTap: _openRadio,
            ),
            const Divider(
              height: 0.1,
            ),

//child scroll view
            ListTile(
              title: const Text("child scroll view"),
              leading: const Icon(Icons.signal_cellular_alt_outlined),
              onTap: _childScroll,
            ),
            const Divider(
              height: 0.1,
            ),

            ListTile(
              title: const Text("showDatePicker"),
              leading: const Icon(Icons.date_range_outlined),
              onTap: _openShowDatePicker,
            )
          ],
        ),
      ),
    );
  }
}
