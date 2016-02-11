part of api;


@Entity()
class UnitCategory {
  /* id */
  int id = null;
  
  /* Unit category name */
  String name = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  
  UnitCategory();

  @override
  String toString()  {
    return 'UnitCategory[id=$id, name=$name, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

