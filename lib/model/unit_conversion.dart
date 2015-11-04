part of api;


@Entity()
class UnitConversion {
  /* unit_id */
  int unitId = null;
  
  /* step in the conversion process */
  bool stepNumber = null;
  
  /* 0 is add and 1 is multiply */
  bool operation = null;
  
  /* number used in the operation */
  num value = null;
  
  /* created_at */
  DateTime createdAt = null;
  
  /* updated_at */
  DateTime updatedAt = null;
  
  
  UnitConversion();

  @override
  String toString()  {
    return 'UnitConversion[unitId=$unitId, stepNumber=$stepNumber, operation=$operation, value=$value, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

