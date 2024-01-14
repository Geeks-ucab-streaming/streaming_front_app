import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:streaming_front_app/domain/auth/data_presentation/data_presentation.dart';

import '../../../../application/auth/states/states.dart';
import '../../core/widgets/widgets.dart';

class ProfilePage extends StatefulHookConsumerWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  // form key
  final _formKey = GlobalKey<FormState>();
  // is editable
  bool _edit = false;
  // local variables
  DateTime _selectedDate = DateTime.now();
  String _gender = '';

  Future<void> _selectDate(
    BuildContext context,
    TextEditingController dateOfBirthController,
  ) async {
    // get the date from user
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    // update the date
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
      dateOfBirthController.text = pickedDate.toIso8601String();
    }
  }

  void makeEditable() {
    setState(() {
      _edit = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // get the user
    final authState = ref.watch(authProvider.notifier);
    UserPresentation userInfo = authState.getUserInfoToShow();
    // controllers from react hooks
    final nameController = useTextEditingController(text: userInfo.name);
    final emailController = useTextEditingController(text: userInfo.email);
    final dateOfBirthController = useTextEditingController(
      text: userInfo.birthday,
    );
    //final genderController = useTextEditingController(text: userInfo.gender);

    var genderSelector = SizedBox(
      child: DropdownButtonFormField(
        style: const TextStyle(color: Colors.white),
        dropdownColor: const Color.fromARGB(
          255,
          13,
          7,
          27,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(80, 151, 151, 151),
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
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
        ],
        onChanged: (_edit) ? (value) => {} : null,
      ),
    );

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
                  onPressed: () {},
                ),
              ],
            ),
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
              child: Column(
                children: [
                  SizedBox(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Perfil',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                                IconButton(
                                  icon: (_edit)
                                      ? const Icon(Icons.edit_square)
                                      : const Icon(Icons.edit),
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
                                CustomTextFormField(
                                  hintText: 'Your name is empty',
                                  controller: nameController,
                                  isEnable: _edit,
                                )
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
                                CustomTextFormField(
                                  hintText: 'Your email is empty',
                                  controller: emailController,
                                  isEnable: _edit,
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
                                          SizedBox(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: CustomTextFormField(
                                                    hintText: 'Empty',
                                                    controller:
                                                        dateOfBirthController,
                                                    iconSuffixData:
                                                        Icons.arrow_drop_down,
                                                    isEnable: _edit,
                                                    isReadOnly: true,
                                                    actionToDo: () async {
                                                      _selectDate(
                                                        context,
                                                        dateOfBirthController,
                                                      );
                                                    },
                                                  ), /*TextFormField(
                                                    enabled: _edit,
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                    decoration: InputDecoration(
                                                      filled: true,
                                                      fillColor:
                                                          const Color.fromARGB(
                                                        80,
                                                        151,
                                                        151,
                                                        151,
                                                      ),
                                                      border:
                                                          UnderlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                      ),
                                                      labelText: '',
                                                    ),
                                                    readOnly: true,
                                                    onTap: () async {
                                                      _selectDate(context);
                                                    },
                                                  ),*/
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
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                        genderSelector
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
                                  fontSize: 16,
                                ),
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
