import 'package:f_sesion6/models/product.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

class DBProduct {
  static const _dbName = 'Example';
  static const _dbVersion = 1;

  static const table = 'Products';

  static const columnId = 'id';
  static const columnName = 'name';
  static const columnCategory = 'category';
  static const columnPriceC = 'priceC';
  static const columnPriceV = 'priceV';
  static const columnStock = 'stock';

  DBProduct._privateConstructor();

  static final DBProduct instance = DBProduct._privateConstructor();

  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await _initDatabase();

    return _database;
  }

  _initDatabase() async {
    String path = p.join(await getDatabasesPath(), _dbName);

    return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $table(
      $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
      $columnName TEXT NOT NULL,
      $columnCategory TEXT NOT NULL,
      $columnPriceC REAL NOT NULL,
      $columnPriceV REAL NOT NULL,
      $columnStock TEXT NOT NULL
    )
  ''');
  }

  Future<int> createProduct(Product product) async {
    Database? db = await instance.database;
    return await db!.insert(table, {
      'name': product.name,
      'category': product.category,
      'priceC': product.priceC,
      'priceV': product.priceV,
      'stock': product.stock,
    });
  }

  Future<List<Map<String, dynamic>>> queryAllProducts() async {
    Database? db = await instance.database;

    return db!.query(table);
  }

  Future<int> delete(int id) async {
    Database? db = await instance.database;
    return await db!.delete(table, where: '$columnId=?', whereArgs: [id]);
  }

  Future deleteRowAll() async {
    Database? db = await instance.database;

    db!.delete(table);
  }

  Future<int?> update(Product product) async {
    Database? db = await instance.database;

    int id = product.toMap()["id"];

    return await db!.update(table, product.toMap(),
        where: '$columnId = ?', whereArgs: [id]);
  }
}
