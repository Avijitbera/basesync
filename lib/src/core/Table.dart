
abstract class Table {
  int get id;

  /// Registry for factory methods
  static final Map<Type, Table Function(Map<String, dynamic>)> _factoryRegistry = {};

  Map<String , dynamic> toMap();

  static Table fromMap(Type tableType, Map<String , dynamic> map) {
    var factory = _factoryRegistry[tableType];
    if(factory != null){
      return factory(map);
    }
    throw Exception("Table $tableType is not registered");
  }



  static void registerFactory(Type tableType, Table Function(Map<String, dynamic>) factory) {
    _factoryRegistry[tableType] = factory;
  }
}
