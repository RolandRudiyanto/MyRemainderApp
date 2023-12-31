import 'dart:async';

import 'package:uas/Database/database_helper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:uas/Model/user.dart';

class UserOprations{

  Future<int> insertUser(User user) async {
    Database db = await DatabaseHelper.instance.database;
    return await db.insert('user', user.toMap());
  }

  Future<User?> signIn(String email, String password) async {
    Database db = await DatabaseHelper.instance.database;
    List<Map<String, dynamic>> maps = await db.query('user',
        where: 'email = ? AND password = ?', whereArgs: [email, password]);

    if (maps.isNotEmpty) {
      return User.fromMap(maps.first);
    }

    return null;
  }

  Future<int> updateUser(User user) async{
    Database db = await DatabaseHelper.instance.database;
    return await db.update('user', user.toMap(), where: 'userId = ?', whereArgs: [user.userId]);
  }

  Future<List<User>> getUser() async {
    Database db = await DatabaseHelper.instance.database;
    List<Map<String, dynamic>> allUser = await db.query('user');
    List<User> users = allUser.map((user)=> User.fromMap(user)).toList();
    return users;
  }

}