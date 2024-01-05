import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:streaming_front_app/main.dart';

class FirebaseApi {
  //Crear una instancia de Firebase messaging
  final _firebaseMessaging = FirebaseMessaging.instance;

  //Funcion para inicializar las notificaciones
  Future<void> initNotifications() async{
    //Pide permiso del usuario
    await _firebaseMessaging.requestPermission();

    //Recupera el token FCM del dispositivo
    final fCMToken = await _firebaseMessaging.getToken();

    //Imprime el token
    //print('Token: $fCMToken'); //ESTO NO DEBE SEGUIR PARA PRODUCCION

    //Inicializa ajustes para notificaciones push
    initPushNotifications();
  }

  //Funcion para manejar mensajes recibidos
  void handleMessage(RemoteMessage? message){
    //Si el mensaje es nulo, no se hace nada.
    if (message == null) return;

    //Navegar a la pantalla relacionada a la notificacion
    navigatorKey.currentState?.pushNamed(
      '/home'
    );
  }
  
  //Función para inicializar la configuración del primer plano y fondo.
  Future initPushNotifications() async {
    //Maneja las notificaciones si la app fue terminada y desoues abierta
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    //Adjunta listeners cuando una notificacion abre la aplicacion
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}