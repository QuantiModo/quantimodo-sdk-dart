part of api;


@Entity()
class MeasurementSet {
  /* Array of timestamps, values, and optional notes */
  @Property(name: 'measurements')
  List<ValueObject> measurements = [];
  
/* ORIGINAL name of the variable for which we are creating the measurement records */
  @Property(name: 'variableName')
  String variableName = null;
  
/* Name of the application or device used to record the measurement values */
  @Property(name: 'sourceName')
  String sourceName = null;
  
/* Variable category name */
  @Property(name: 'variableCategoryName')
  String variableCategoryName = null;
  
/* Way to aggregate measurements over time. Options are \"MEAN\" or \"SUM\".  SUM should be used for things like minutes of exercise.  If you use MEAN for exercise, then a person might exercise more minutes in one day but add separate measurements that were smaller.  So when we are doing correlational analysis, we would think that the person exercised less that day even though they exercised more.  Conversely, we must use MEAN for things such as ratings which cannot be SUMMED. */
  @Property(name: 'combinationOperation')
  String combinationOperation = null;
  //enum combinationOperationEnum {  MEAN,  SUM,  };
/* Unit of measurement */
  @Property(name: 'abbreviatedUnitName')
  String abbreviatedUnitName = null;
  
  MeasurementSet();

  @override
  String toString()  {
    return 'MeasurementSet[measurements=$measurements, variableName=$variableName, sourceName=$sourceName, variableCategoryName=$variableCategoryName, combinationOperation=$combinationOperation, abbreviatedUnitName=$abbreviatedUnitName, ]';
  }

}

