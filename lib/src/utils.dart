
final Map<String, Type> _typeRegistry = {};

void registerType(String typeName, Type type) {
  _typeRegistry[typeName] = type;
}

Type getType(String typeName){
  if(_typeRegistry.containsKey(typeName)){
    return _typeRegistry[typeName]!;
  }
  throw Exception("Type $typeName is not registered");
}

String getTypeName(Type type){
  return type.toString();
}
