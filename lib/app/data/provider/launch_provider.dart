import 'package:receitas/app/data/model/launch_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

final String tableLaunch = 'launch';

class LaunchProvider {
  LaunchProvider() {
    db();
  }

  Future<Database> db() async {
    if (!isInitialized) await _init();
    return _db;
  }

  bool isInitialized = false;
  Future _init() async {
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, 'cashIn_app.db');

    open(path);
  }

  Database _db;

  Future open(String path) async {
    _db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
create table $tableLaunch ( 
  $columnId integer primary key autoincrement, 
  $columnTitle text not null,
  $columnDescription text,
  $columnCategory text not null,
  $columnValue real not null,
  $columnDate integer not null)
''');
    });
  }

  Future<LaunchModel> insert(LaunchModel launchModel) async {
    launchModel.id = await _db.insert(tableLaunch, launchModel.toMap());
    return launchModel;
  }

  Future<LaunchModel> getLaunch(int id) async {
    List<Map> maps = await _db.query(tableLaunch,
        columns: [
          columnId,
          columnTitle,
          columnDescription,
          columnCategory,
          columnValue,
          columnDate
        ],
        where: '$columnId = ?',
        whereArgs: [id]);
    if (maps.length > 0) {
      return LaunchModel.fromMap(maps.first);
    }
    return null;
  }

  Future<int> delete(int id) async {
    return await _db
        .delete(tableLaunch, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<int> update(LaunchModel launch) async {
    return await _db.update(tableLaunch, launch.toMap(),
        where: '$columnId = ?', whereArgs: [launch.id]);
  }

  Future close() async => _db.close();
}
