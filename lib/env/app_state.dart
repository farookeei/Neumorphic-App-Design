import 'dart:developer';

enum AppStateType { dev, production }

class ServerState {
  static const productionServers = 'http://35.226.138.241:3000/v1.0/';
  static const testingServers = 'http://35.226.138.241:3000/v1.0/';
}

class PaymentState {
  static const productionGateway = '';
  static const testingGateway = '';
}

class APPState {
  static AppStateType appState = AppStateType.production;
}

class StateHandler {
  static String serversType = ServerState.productionServers;
  static String paymnetType = PaymentState.productionGateway;
  String arg;

  StateHandler(this.arg);

  void init() {
    if (arg == 'dev') {
      log('App is running of dev state');
      APPState.appState = AppStateType.dev;
    } else {
      log('App is running on production state');
    }
    servershandler();
    paymentHandler();
  }

  void servershandler() {
    if (arg == 'dev') {
      serversType = ServerState.testingServers;
    }
  }

  void paymentHandler() {
    if (arg == 'dev') {
      paymnetType = PaymentState.testingGateway;
    }
  }

  static dynamic errorHandler(e) {
    if (APPState.appState == AppStateType.dev) {
      return e;
    }
    return 'Error Occured';
  }
}
