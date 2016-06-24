part of api;


@Entity()
class Variable {
  /* Variable ID */
  @Property(name: 'id')
  int id = null;
  
/* User-defined variable display name. */
  @Property(name: 'name')
  String name = null;
  
/* Name used when the variable was originally created in the `variables` table. */
  @Property(name: 'originalName')
  String originalName = null;
  
/* Variable category like Mood, Sleep, Physical Activity, Treatment, Symptom, etc. */
  @Property(name: 'category')
  String category = null;
  
/* Abbreviated name of the default unit for the variable */
  @Property(name: 'abbreviatedUnitName')
  String abbreviatedUnitName = null;
  
/* Id of the default unit for the variable */
  @Property(name: 'abbreviatedUnitId')
  int abbreviatedUnitId = null;
  
/* Comma-separated list of source names to limit variables to those sources */
  @Property(name: 'sources')
  String sources = null;
  
/* Minimum reasonable value for this variable (uses default unit) */
  @Property(name: 'minimumValue')
  double minimumValue = null;
  
/* Maximum reasonable value for this variable (uses default unit) */
  @Property(name: 'maximumValue')
  double maximumValue = null;
  
/* Way to aggregate measurements over time. Options are \"MEAN\" or \"SUM\".  SUM should be used for things like minutes of exercise.  If you use MEAN for exercise, then a person might exercise more minutes in one day but add separate measurements that were smaller.  So when we are doing correlational analysis, we would think that the person exercised less that day even though they exercised more.  Conversely, we must use MEAN for things such as ratings which cannot be SUMMED. */
  @Property(name: 'combinationOperation')
  String combinationOperation = null;
  //enum combinationOperationEnum {  MEAN,  SUM,  };
/* Value for replacing null measurements */
  @Property(name: 'fillingValue')
  double fillingValue = null;
  
/* The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables. */
  @Property(name: 'joinWith')
  String joinWith = null;
  
/* Array of Variables that are joined with this Variable */
  @Property(name: 'joinedVariables')
  List<Variable> joinedVariables = [];
  
/* Id of the parent variable if this variable has any parent */
  @Property(name: 'parent')
  int parent = null;
  
/* Array of Variables that are sub variables to this Variable */
  @Property(name: 'subVariables')
  List<Variable> subVariables = [];
  
/* How long it takes for a measurement in this variable to take effect */
  @Property(name: 'onsetDelay')
  int onsetDelay = null;
  
/* How long the effect of a measurement in this variable lasts */
  @Property(name: 'durationOfAction')
  int durationOfAction = null;
  
/* Earliest measurement time */
  @Property(name: 'earliestMeasurementTime')
  int earliestMeasurementTime = null;
  
/* Latest measurement time */
  @Property(name: 'latestMeasurementTime')
  int latestMeasurementTime = null;
  
/* When this variable or its settings were last updated */
  @Property(name: 'updated')
  int updated = null;
  
/* A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user. */
  @Property(name: 'causeOnly')
  int causeOnly = null;
  
/* Number of correlations */
  @Property(name: 'numberOfCorrelations')
  int numberOfCorrelations = null;
  
/* Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables. */
  @Property(name: 'outcome')
  int outcome = null;
  
/* The number of measurements that a given user had for this variable the last time a correlation calculation was performed. Generally correlation values are only updated once the current number of measurements for a variable is more than 10% greater than the measurementsAtLastAnalysis.  This avoids a computationally-demanding recalculation when there's not enough new data to make a significant difference in the correlation. */
  @Property(name: 'measurementsAtLastAnalysis')
  int measurementsAtLastAnalysis = null;
  
/* Number of measurements */
  @Property(name: 'numberOfMeasurements')
  int numberOfMeasurements = null;
  
/* Last unit */
  @Property(name: 'lastUnit')
  String lastUnit = null;
  
/* Last value */
  @Property(name: 'lastValue')
  int lastValue = null;
  
/* Most common value */
  @Property(name: 'mostCommonValue')
  int mostCommonValue = null;
  
/* Most common unit */
  @Property(name: 'mostCommonUnit')
  String mostCommonUnit = null;
  
/* Last source */
  @Property(name: 'lastSource')
  int lastSource = null;
  
  Variable();

  @override
  String toString()  {
    return 'Variable[id=$id, name=$name, originalName=$originalName, category=$category, abbreviatedUnitName=$abbreviatedUnitName, abbreviatedUnitId=$abbreviatedUnitId, sources=$sources, minimumValue=$minimumValue, maximumValue=$maximumValue, combinationOperation=$combinationOperation, fillingValue=$fillingValue, joinWith=$joinWith, joinedVariables=$joinedVariables, parent=$parent, subVariables=$subVariables, onsetDelay=$onsetDelay, durationOfAction=$durationOfAction, earliestMeasurementTime=$earliestMeasurementTime, latestMeasurementTime=$latestMeasurementTime, updated=$updated, causeOnly=$causeOnly, numberOfCorrelations=$numberOfCorrelations, outcome=$outcome, measurementsAtLastAnalysis=$measurementsAtLastAnalysis, numberOfMeasurements=$numberOfMeasurements, lastUnit=$lastUnit, lastValue=$lastValue, mostCommonValue=$mostCommonValue, mostCommonUnit=$mostCommonUnit, lastSource=$lastSource, ]';
  }

}

