part of api;


@Entity()
class UserVariable {
  /* ID of the parent variable if this variable has any parent */
  @Property(name: 'parent_id')
  int parentId = null;
  
/* User ID */
  @Property(name: 'user_id')
  int userId = null;
  
/* client_id */
  @Property(name: 'client_id')
  String clientId = null;
  
/* ID of variable */
  @Property(name: 'variable_id')
  int variableId = null;
  
/* ID of unit to use for this variable */
  @Property(name: 'default_unit_id')
  int defaultUnitId = null;
  
/* Minimum reasonable value for this variable (uses default unit) */
  @Property(name: 'minimum_allowed_value')
  double minimumAllowedValue = null;
  
/* Maximum reasonable value for this variable (uses default unit) */
  @Property(name: 'maximum_allowed_value')
  double maximumAllowedValue = null;
  
/* Value for replacing null measurements */
  @Property(name: 'filling_value')
  double fillingValue = null;
  
/* The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables */
  @Property(name: 'join_with')
  int joinWith = null;
  
/* How long it takes for a measurement in this variable to take effect */
  @Property(name: 'onset_delay')
  int onsetDelay = null;
  
/* Estimated duration of time following the onset delay in which a stimulus produces a perceivable effect */
  @Property(name: 'duration_of_action')
  int durationOfAction = null;
  
/* ID of variable category */
  @Property(name: 'variable_category_id')
  int variableCategoryId = null;
  
/* updated */
  @Property(name: 'updated')
  int updated = null;
  
/* Is variable public */
  @Property(name: 'public')
  int public = null;
  
/* A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user */
  @Property(name: 'cause_only')
  bool causeOnly = null;
  
/* 0 -> No filling, 1 -> Use filling-value */
  @Property(name: 'filling_type')
  String fillingType = null;
  
/* Number of measurements */
  @Property(name: 'number_of_measurements')
  int numberOfMeasurements = null;
  
/* Number of processed measurements */
  @Property(name: 'number_of_processed_measurements')
  int numberOfProcessedMeasurements = null;
  
/* Number of measurements at last analysis */
  @Property(name: 'measurements_at_last_analysis')
  int measurementsAtLastAnalysis = null;
  
/* ID of last Unit */
  @Property(name: 'last_unit_id')
  int lastUnitId = null;
  
/* ID of last original Unit */
  @Property(name: 'last_original_unit_id')
  int lastOriginalUnitId = null;
  
/* Last Value */
  @Property(name: 'last_value')
  double lastValue = null;
  
/* Last original value which is stored */
  @Property(name: 'last_original_value')
  int lastOriginalValue = null;
  
/* ID of last source */
  @Property(name: 'last_source_id')
  int lastSourceId = null;
  
/* Number of correlations for this variable */
  @Property(name: 'number_of_correlations')
  int numberOfCorrelations = null;
  
/* status */
  @Property(name: 'status')
  String status = null;
  
/* error_message */
  @Property(name: 'error_message')
  String errorMessage = null;
  
/* When this variable or its settings were last updated */
  @Property(name: 'last_successful_update_time')
  DateTime lastSuccessfulUpdateTime = null;
  
/* Standard deviation */
  @Property(name: 'standard_deviation')
  double standardDeviation = null;
  
/* Variance */
  @Property(name: 'variance')
  double variance = null;
  
/* Minimum recorded value of this variable */
  @Property(name: 'minimum_recorded_value')
  double minimumRecordedValue = null;
  
/* Maximum recorded daily value of this variable */
  @Property(name: 'maximum_recorded_daily_value')
  double maximumRecordedDailyValue = null;
  
/* Mean */
  @Property(name: 'mean')
  double mean = null;
  
/* Median */
  @Property(name: 'median')
  double median = null;
  
/* Most common Unit ID */
  @Property(name: 'most_common_unit_id')
  int mostCommonUnitId = null;
  
/* Most common value */
  @Property(name: 'most_common_value')
  double mostCommonValue = null;
  
/* Number of unique daily values */
  @Property(name: 'number_of_unique_daily_values')
  double numberOfUniqueDailyValues = null;
  
/* Number of changes */
  @Property(name: 'number_of_changes')
  int numberOfChanges = null;
  
/* Skewness */
  @Property(name: 'skewness')
  double skewness = null;
  
/* Kurtosis */
  @Property(name: 'kurtosis')
  double kurtosis = null;
  
/* Latitude */
  @Property(name: 'latitude')
  double latitude = null;
  
/* Longitude */
  @Property(name: 'longitude')
  double longitude = null;
  
/* Location */
  @Property(name: 'location')
  String location = null;
  
/* Earliest measurement start_time to be used in analysis. Use ISO 8601 datetime format */
  @Property(name: 'experiment_start_time')
  DateTime experimentStartTime = null;
  
/* Latest measurement start_time to be used in analysis. Use ISO 8601 datetime format */
  @Property(name: 'experiment_end_time')
  DateTime experimentEndTime = null;
  
/* When the record was first created. Use ISO 8601 datetime format */
  @Property(name: 'created_at')
  DateTime createdAt = null;
  
/* When the record in the database was last updated. Use ISO 8601 datetime format */
  @Property(name: 'updated_at')
  DateTime updatedAt = null;
  
/* Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables */
  @Property(name: 'outcome')
  bool outcome = null;
  
/* Comma-separated list of source names to limit variables to those sources */
  @Property(name: 'sources')
  String sources = null;
  
/* Earliest source time */
  @Property(name: 'earliest_source_time')
  int earliestSourceTime = null;
  
/* Latest source time */
  @Property(name: 'latest_source_time')
  int latestSourceTime = null;
  
/* Earliest measurement time */
  @Property(name: 'earliest_measurement_time')
  int earliestMeasurementTime = null;
  
/* Latest measurement time */
  @Property(name: 'latest_measurement_time')
  int latestMeasurementTime = null;
  
/* Earliest filling time */
  @Property(name: 'earliest_filling_time')
  int earliestFillingTime = null;
  
/* Latest filling time */
  @Property(name: 'latest_filling_time')
  int latestFillingTime = null;
  
  UserVariable();

  @override
  String toString()  {
    return 'UserVariable[parentId=$parentId, userId=$userId, clientId=$clientId, variableId=$variableId, defaultUnitId=$defaultUnitId, minimumAllowedValue=$minimumAllowedValue, maximumAllowedValue=$maximumAllowedValue, fillingValue=$fillingValue, joinWith=$joinWith, onsetDelay=$onsetDelay, durationOfAction=$durationOfAction, variableCategoryId=$variableCategoryId, updated=$updated, public=$public, causeOnly=$causeOnly, fillingType=$fillingType, numberOfMeasurements=$numberOfMeasurements, numberOfProcessedMeasurements=$numberOfProcessedMeasurements, measurementsAtLastAnalysis=$measurementsAtLastAnalysis, lastUnitId=$lastUnitId, lastOriginalUnitId=$lastOriginalUnitId, lastValue=$lastValue, lastOriginalValue=$lastOriginalValue, lastSourceId=$lastSourceId, numberOfCorrelations=$numberOfCorrelations, status=$status, errorMessage=$errorMessage, lastSuccessfulUpdateTime=$lastSuccessfulUpdateTime, standardDeviation=$standardDeviation, variance=$variance, minimumRecordedValue=$minimumRecordedValue, maximumRecordedDailyValue=$maximumRecordedDailyValue, mean=$mean, median=$median, mostCommonUnitId=$mostCommonUnitId, mostCommonValue=$mostCommonValue, numberOfUniqueDailyValues=$numberOfUniqueDailyValues, numberOfChanges=$numberOfChanges, skewness=$skewness, kurtosis=$kurtosis, latitude=$latitude, longitude=$longitude, location=$location, experimentStartTime=$experimentStartTime, experimentEndTime=$experimentEndTime, createdAt=$createdAt, updatedAt=$updatedAt, outcome=$outcome, sources=$sources, earliestSourceTime=$earliestSourceTime, latestSourceTime=$latestSourceTime, earliestMeasurementTime=$earliestMeasurementTime, latestMeasurementTime=$latestMeasurementTime, earliestFillingTime=$earliestFillingTime, latestFillingTime=$latestFillingTime, ]';
  }

}

