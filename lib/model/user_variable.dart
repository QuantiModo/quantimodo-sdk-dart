part of api;


@Entity()
class UserVariable {
  /* ID of the parent variable if this variable has any parent */
  int parentId = null;
  
  /* User ID */
  int userId = null;
  
  /* client_id */
  String clientId = null;
  
  /* ID of variable */
  int variableId = null;
  
  /* ID of unit to use for this variable */
  int defaultUnitId = null;
  
  /* Minimum reasonable value for this variable (uses default unit) */
  num minimumAllowedValue = null;
  
  /* Maximum reasonable value for this variable (uses default unit) */
  num maximumAllowedValue = null;
  
  /* Value for replacing null measurements */
  num fillingValue = null;
  
  /* The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables */
  int joinWith = null;
  
  /* How long it takes for a measurement in this variable to take effect */
  int onsetDelay = null;
  
  /* Estimated duration of time following the onset delay in which a stimulus produces a perceivable effect */
  int durationOfAction = null;
  
  /* ID of variable category */
  int variableCategoryId = null;
  
  /* updated */
  int updated = null;
  
  /* Is variable public */
  int public = null;
  
  /* A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user */
  bool causeOnly = null;
  
  /* 0 -> No filling, 1 -> Use filling-value */
  String fillingType = null;
  
  /* Number of measurements */
  int numberOfMeasurements = null;
  
  /* Number of processed measurements */
  int numberOfProcessedMeasurements = null;
  
  /* Number of measurements at last analysis */
  int measurementsAtLastAnalysis = null;
  
  /* ID of last Unit */
  int lastUnitId = null;
  
  /* ID of last original Unit */
  int lastOriginalUnitId = null;
  
  /* Last Value */
  num lastValue = null;
  
  /* Last original value which is stored */
  int lastOriginalValue = null;
  
  /* ID of last source */
  int lastSourceId = null;
  
  /* Number of correlations for this variable */
  int numberOfCorrelations = null;
  
  /* status */
  String status = null;
  
  /* error_message */
  String errorMessage = null;
  
  /* When this variable or its settings were last updated */
  DateTime lastSuccessfulUpdateTime = null;
  
  /* Standard deviation */
  num standardDeviation = null;
  
  /* Variance */
  num variance = null;
  
  /* Minimum recorded value of this variable */
  num minimumRecordedValue = null;
  
  /* Maximum recorded daily value of this variable */
  num maximumRecordedDailyValue = null;
  
  /* Mean */
  num mean = null;
  
  /* Median */
  num median = null;
  
  /* Most common Unit ID */
  int mostCommonUnitId = null;
  
  /* Most common value */
  num mostCommonValue = null;
  
  /* Number of unique daily values */
  num numberOfUniqueDailyValues = null;
  
  /* Number of changes */
  int numberOfChanges = null;
  
  /* Skewness */
  num skewness = null;
  
  /* Kurtosis */
  num kurtosis = null;
  
  /* Latitude */
  num latitude = null;
  
  /* Longitude */
  num longitude = null;
  
  /* Location */
  String location = null;
  
  /* Earliest measurement start_time to be used in analysis. Use ISO 8601 datetime format */
  DateTime experimentStartTime = null;
  
  /* Latest measurement start_time to be used in analysis. Use ISO 8601 datetime format */
  DateTime experimentEndTime = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  /* Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables */
  bool outcome = null;
  
  /* Comma-separated list of source names to limit variables to those sources */
  String sources = null;
  
  /* Earliest source time */
  int earliestSourceTime = null;
  
  /* Latest source time */
  int latestSourceTime = null;
  
  /* Earliest measurement time */
  int earliestMeasurementTime = null;
  
  /* Latest measurement time */
  int latestMeasurementTime = null;
  
  /* Earliest filling time */
  int earliestFillingTime = null;
  
  /* Latest filling time */
  int latestFillingTime = null;
  
  
  UserVariable();

  @override
  String toString()  {
    return 'UserVariable[parentId=$parentId, userId=$userId, clientId=$clientId, variableId=$variableId, defaultUnitId=$defaultUnitId, minimumAllowedValue=$minimumAllowedValue, maximumAllowedValue=$maximumAllowedValue, fillingValue=$fillingValue, joinWith=$joinWith, onsetDelay=$onsetDelay, durationOfAction=$durationOfAction, variableCategoryId=$variableCategoryId, updated=$updated, public=$public, causeOnly=$causeOnly, fillingType=$fillingType, numberOfMeasurements=$numberOfMeasurements, numberOfProcessedMeasurements=$numberOfProcessedMeasurements, measurementsAtLastAnalysis=$measurementsAtLastAnalysis, lastUnitId=$lastUnitId, lastOriginalUnitId=$lastOriginalUnitId, lastValue=$lastValue, lastOriginalValue=$lastOriginalValue, lastSourceId=$lastSourceId, numberOfCorrelations=$numberOfCorrelations, status=$status, errorMessage=$errorMessage, lastSuccessfulUpdateTime=$lastSuccessfulUpdateTime, standardDeviation=$standardDeviation, variance=$variance, minimumRecordedValue=$minimumRecordedValue, maximumRecordedDailyValue=$maximumRecordedDailyValue, mean=$mean, median=$median, mostCommonUnitId=$mostCommonUnitId, mostCommonValue=$mostCommonValue, numberOfUniqueDailyValues=$numberOfUniqueDailyValues, numberOfChanges=$numberOfChanges, skewness=$skewness, kurtosis=$kurtosis, latitude=$latitude, longitude=$longitude, location=$location, experimentStartTime=$experimentStartTime, experimentEndTime=$experimentEndTime, createdAt=$createdAt, updatedAt=$updatedAt, outcome=$outcome, sources=$sources, earliestSourceTime=$earliestSourceTime, latestSourceTime=$latestSourceTime, earliestMeasurementTime=$earliestMeasurementTime, latestMeasurementTime=$latestMeasurementTime, earliestFillingTime=$earliestFillingTime, latestFillingTime=$latestFillingTime, ]';
  }

}

