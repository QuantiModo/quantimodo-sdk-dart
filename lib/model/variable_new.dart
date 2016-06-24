part of api;


@Entity()
class VariableNew {
  /* User-defined variable display name. */
  @Property(name: 'name')
  String name = null;
  
/* Variable category like Mood, Sleep, Physical Activity, Treatment, Symptom, etc. */
  @Property(name: 'category')
  String category = null;
  
/* Abbreviated name of the default unit for the variable */
  @Property(name: 'unit')
  String unit = null;
  
/* Way to aggregate measurements over time. Options are \"MEAN\" or \"SUM\".  SUM should be used for things like minutes of exercise.  If you use MEAN for exercise, then a person might exercise more minutes in one day but add separate measurements that were smaller.  So when we are doing correlational analysis, we would think that the person exercised less that day even though they exercised more.  Conversely, we must use MEAN for things such as ratings which cannot be SUMMED. */
  @Property(name: 'combinationOperation')
  String combinationOperation = null;
  //enum combinationOperationEnum {  MEAN,  SUM,  };
/* Parent */
  @Property(name: 'parent')
  String parent = null;
  
  VariableNew();

  @override
  String toString()  {
    return 'VariableNew[name=$name, category=$category, unit=$unit, combinationOperation=$combinationOperation, parent=$parent, ]';
  }

}

