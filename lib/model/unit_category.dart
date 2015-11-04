part of api;


@Entity()
class UnitCategory {
  /* id */
  int id = null;
  
  /* Unit category name */
  String name = null;
  
  /* created_at */
  DateTime createdAt = null;
  
  /* updated_at */
  DateTime updatedAt = null;
  
  
  UnitCategory();

  @override
  String toString()  {
    return 'UnitCategory[id=$id, name=$name, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

