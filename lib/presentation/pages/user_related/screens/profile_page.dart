import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:streaming_front_app/presentation/pages/core/widgets/widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _edit = false;

  String nameAndLastName = '';
  String email = '';
  DateTime? dateOfBirth;
  String gender = '';
  final _formKey = GlobalKey<FormState>();
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void makeEditable() {
    setState(() {
      _edit = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          const DefaultBackground(),
          Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: const BackButton(
                color: Colors.white,
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  color: Colors.white,
                  onPressed: () {
                    setState(() {});
                  },
                ),
              ],
            ),
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
              child: Column(
                children: [
                  Container(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Perfil',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.edit_square),
                                  color: Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      _edit = (_edit) ? false : true;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: const Text(
                                    'Nombre y Apellido',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                                TextFormField(
                                  enabled: _edit,
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(80, 151, 151, 151),
                                    border: UnderlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    labelText: '',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: const Text(
                                    'Correo Electrónico',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                                TextFormField(
                                  enabled: _edit,
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor:
                                        const Color.fromARGB(80, 151, 151, 151),
                                    border: UnderlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    labelText: '',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 30),
                              height: 100,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 10),
                                            child: const Text(
                                              'Fecha de Nacimiento',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: TextFormField(
                                                    enabled: _edit,
                                                    style: const TextStyle(
                                                        color: Colors.white),
                                                    decoration: InputDecoration(
                                                      filled: true,
                                                      fillColor:
                                                          const Color.fromARGB(
                                                              80,
                                                              151,
                                                              151,
                                                              151),
                                                      border:
                                                          UnderlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0)),
                                                      labelText: '',
                                                    ),
                                                    readOnly: true,
                                                    onTap: () async {
                                                      _selectDate(context);
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 10),
                                          child: const Text(
                                            'Genero',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Container(
                                          child: DropdownButtonFormField(
                                            style: const TextStyle(
                                                color: Colors.white),
                                            dropdownColor: const Color.fromARGB(
                                                255, 13, 7, 27),
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: const Color.fromARGB(
                                                  80, 151, 151, 151),
                                              border: UnderlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0)),
                                              labelText: '',
                                            ),
                                            icon: const Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.white,
                                            ),
                                            items: const [
                                              DropdownMenuItem(
                                                value: 'Femenino',
                                                child: Text('F'),
                                              ),
                                              DropdownMenuItem(
                                                value: 'Masculino',
                                                child: Text('M'),
                                              ),
                                              DropdownMenuItem(
                                                value: 'Otro',
                                                child: Text('O'),
                                              ),
                                            ],
                                            onChanged:
                                                (_edit) ? (value) => {} : null,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  if (_edit)
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                          backgroundColor: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side:
                                const BorderSide(color: Colors.lightBlueAccent),
                          ),
                        ),
                        child: const Text(
                          'Guardar',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  if (!_edit)
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: const Text(
                              'Si deseas cancelar tu suscripción',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 40),
                            child: RichText(
                              text: TextSpan(
                                text: 'Haz Click Aquí',
                                style: const TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontSize: 16),
                                //style: linkStyle,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('Invitado"');
                                  },
                              ),
                            ),
                          ),
                        ],
                      ),
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
