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
  
  /* Unit minimum value */
  num minimumValue = null;
  
  /* Unit maximum value */
  num maximumValue = null;
  
  /* updated */
  int updated = null;
  
  /* ID of default unit */
  int defaultUnitId = null;
  
  /* Value multiplied to */
  num multiply = null;
  
  /* Value which should be added to convert to default unit */
  num add = null;
  
  /* created_at */
  DateTime createdAt = null;
  
  /* updated_at */
  DateTime updatedAt = null;
  
  
  Unit();

  @override
  String toString()  {
    return 'Unit[id=$id, clientId=$clientId, name=$name, abbreviatedName=$abbreviatedName, categoryId=$categoryId, minimumValue=$minimumValue, maximumValue=$maximumValue, updated=$updated, defaultUnitId=$defaultUnitId, multiply=$multiply, add=$add, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

