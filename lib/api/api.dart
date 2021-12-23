library api;

import 'dart:html';

import 'package:http/http.dart' as http;

class Signin {
  final String email;
  final String password;
  final String fname;
  final String lname;
  final String id;

  Signin({
    required this.email,
    required this.password,
    required this.fname,
    required this.lname,
    required this.id,
  });

  String toString() {
    return '{email: ${this.email}, password:${this.password}, fname:${this.fname}, lname:${this.lname}, id:${this.id}}';
  }

  factory Signin.fromJson(Map<String, dynamic> json) {
    return Signin(
        email: json['Email'],
        password: json['Password'],
        fname: json['Firstname'],
        lname: json['Lastname'],
        id: json['Id']);
  }
}

class Customise {
  final String scheme;
  final String id;

  @override
  String toString() {
    return '{colorscheme: ${this.scheme}, id: ${this.id}}';
  }

  Customise({required this.scheme, required this.id});

  factory Customise.fromJson(Map<String, dynamic> json) {
    return Customise(scheme: json['Colorscheme'], id: json['Id']);
  }
}

class Account {
  final Signin signin;
  final Customise cust;

  Account({required this.signin, required this.cust});

  @override
  String toString() {
    return '{signin: ${this.signin.toString()}, customise: ${this.cust.toString()}}';
  }

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      signin: Signin.fromJson(json['Signin']),
      cust: Customise.fromJson(json['Cust']),
    );
  }
}

class Response {
  final int code;
  final Account account;

  Response({
    required this.code,
    required this.account,
  });

  @override
  String toString() {
    return 'Response: {Code: ${this.code}, Account: ${this.account.toString()}}';
  }

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      code: json['Code'],
      account: Account.fromJson(json['Account']),
    );
  }
}

class Request {
  Future<http.Response> sendPost(url, headers, payload) async {
    http.Response response = await http.post(
      url,
      headers: headers,
      body: payload,
    );

    return response;
  }
}
