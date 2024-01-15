import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:streaming_front_app/domain/enums/enums.dart';

import '../../../../application/auth/states/states.dart';
import '../../../../application/user_related/use_cases/uses_cases.dart';
import '../../../../domain/auth/data_presentation/data_presentation.dart';
import '../../../../infrastructure/core/util/util.dart';
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
  DateTime? _selectedDate;

  Future<void> _selectDate(
    BuildContext context,
    TextEditingController dateOfBirthController,
  ) async {
    // get today date
    DateTime todayDate = DateTime.now();
    // get the date from user
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900, 1),
      lastDate: DateTime(2101),
    );
    // update the date
    if (pickedDate != null &&
        pickedDate != _selectedDate &&
        todayDate.isAfter(pickedDate)) {
      setState(() {
        _selectedDate = pickedDate;
      });
      dateOfBirthController.text = DateFormatter.formatDate(pickedDate);
    }
  }

  void makeEditable() {
    setState(() {
      _edit = true;
    });
  }

  void handleUpdateStatus(UserModifyEnum updateState) async {
    if (updateState != UserModifyEnum.unChange) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Resultado'),
            content: Text((updateState == UserModifyEnum.error)
                ? 'Error no se pudo actualizar'
                : 'Exitoso, se actualizaron sus datos'),
            actions: <Widget>[
              TextButton(
                child: const Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
      // if updated close the edit
      _edit = false;
    }
  }

  void handleClick({
    required String? name,
    required String? email,
    required DateTime? birthdate,
    required String? gender,
  }) async {
    // call the option from the provider
    await ref.read(modifyUserInfoProvider.notifier).modifyUserInfo(
          name: name,
          email: email,
          birthdate: birthdate,
          gender: gender,
        );
  }

  @override
  Widget build(BuildContext context) {
    // get the user
    final authState = ref.watch(authProvider.notifier);
    final updateState = ref.watch(modifyUserInfoProvider);
    UserPresentation userInfo = authState.getUserInfoToShow();
    // controllers from react hooks
    final nameController = useTextEditingController(text: userInfo.name);
    final emailController = useTextEditingController(text: userInfo.email);
    final dateOfBirthController = useTextEditingController(
      text: userInfo.birthday,
    );
    final genderController = useTextEditingController(text: userInfo.gender);

    // verify the state of the update
    //handleUpdateStatus(updateState);

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
          fillColor: const Color.fromARGB(
            255,
            75,
            56,
            109,
          ),
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
            value: 'F',
            child: Text('F'),
          ),
          DropdownMenuItem(
            value: 'M',
            child: Text('M'),
          ),
        ],
        onChanged: (_edit)
            ? (String? value) {
                genderController.text = value as String;
              }
            : null,
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
                                            'Género',
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
                  if (_edit) ...[
                    if (updateState != UserModifyEnum.unChange) ...[
                      const SizedBox(height: 25),
                      const ErrorInputMessage(
                        message: 'No se pudo actualizar los datos',
                        iconData: Icons.error,
                      ),
                    ],
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: ElevatedButton(
                        onPressed: () {
                          handleClick(
                            name: nameController.text,
                            email: emailController.text,
                            birthdate: _selectedDate,
                            gender: genderController.text,
                          );
                        },
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
                  ],
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
