part of api;


@Entity()
class Unit {
  /* id */
  int id = null;
  
  /* client_id */
  String clientId = null;
  
  /* Unit name */
  String name = null;
  
  /* Unit abbreviation */
  String abbreviatedName = null;
  
  /* Unit category ID */
  int categoryId = null;
  
  /* Minimum value permitted for this unit */
  num minimumValue = null;
  
  /* Maximum value permitted for this unit */
  num maximumValue = null;
  
  /* updated */
  int updated = null;
  
  /* ID of default unit for this units category */
  int defaultUnitId = null;
  
  /* Value multiplied to convert to default unit in this unit category */
  num multiply = null;
  
  /* Value which should be added to convert to default unit */
  num add = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  
  Unit();

  @override
  String toString()  {
    return 'Unit[id=$id, clientId=$clientId, name=$name, abbreviatedName=$abbreviatedName, categoryId=$categoryId, minimumValue=$minimumValue, maximumValue=$maximumValue, updated=$updated, defaultUnitId=$defaultUnitId, multiply=$multiply, add=$add, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

