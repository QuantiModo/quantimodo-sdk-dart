part of api;


@Entity()
class Variable {
  /* id */
  int id = null;
  
  /* client_id */
  String clientId = null;
  
  /* ID of the parent variable if this variable has any parent */
  int parentId = null;
  
  /* User-defined variable display name */
  String name = null;
  
  /* Variable category ID */
  int variableCategoryId = null;
  
  /* ID of the default unit of measurement to use for this variable */
  int defaultUnitId = null;
  
  /* How to combine values of this variable (for instance, to see a summary of the values over a month) SUM or MEAN */
  String combinationOperation = null;
  
  /* Value for replacing null measurements */
  num fillingValue = null;
  
  /* Maximum reasonable value for this variable (uses default unit) */
  num maximumAllowedValue = null;
  
  /* Minimum reasonable value for this variable (uses default unit) */
  num minimumAllowedValue = null;
  
  /* How long it takes for a measurement in this variable to take effect */
  int onsetDelay = null;
  
  /* How long the effect of a measurement in this variable lasts */
  int durationOfAction = null;
  
  /* Is variable public */
  int public = null;
  
  /* A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user */
  bool causeOnly = null;
  
  /* Most common value */
  num mostCommonValue = null;
  
  /* Most common Unit */
  int mostCommonUnitId = null;
  
  /* Standard Deviation */
  num standardDeviation = null;
  
  /* Variance */
  num variance = null;
  
  /* Mean */
  num mean = null;
  
  /* Median */
  num median = null;
  
  /* Number of measurements */
  num numberOfMeasurements = null;
  
  /* Number of unique values */
  num numberOfUniqueValues = null;
  
  /* Skewness */
  num skewness = null;
  
  /* Kurtosis */
  num kurtosis = null;
  
  /* status */
  String status = null;
  
  /* error_message */
  String errorMessage = null;
  
  /* When this variable or its settings were last updated */
  DateTime lastSuccessfulUpdateTime = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  /* Product URL */
  String productUrl = null;
  
  /* Image URL */
  String imageUrl = null;
  
  /* Price */
  num price = null;
  
  /* Number of variables */
  int numberOfUserVariables = null;
  
  /* Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables. */
  bool outcome = null;
  
  /* Minimum recorded value of this variable */
  num minimumRecordedValue = null;
  
  /* Maximum recorded value of this variable */
  num maximumRecordedValue = null;
  
  
  Variable();

  @override
  String toString()  {
    return 'Variable[id=$id, clientId=$clientId, parentId=$parentId, name=$name, variableCategoryId=$variableCategoryId, defaultUnitId=$defaultUnitId, combinationOperation=$combinationOperation, fillingValue=$fillingValue, maximumAllowedValue=$maximumAllowedValue, minimumAllowedValue=$minimumAllowedValue, onsetDelay=$onsetDelay, durationOfAction=$durationOfAction, public=$public, causeOnly=$causeOnly, mostCommonValue=$mostCommonValue, mostCommonUnitId=$mostCommonUnitId, standardDeviation=$standardDeviation, variance=$variance, mean=$mean, median=$median, numberOfMeasurements=$numberOfMeasurements, numberOfUniqueValues=$numberOfUniqueValues, skewness=$skewness, kurtosis=$kurtosis, status=$status, errorMessage=$errorMessage, lastSuccessfulUpdateTime=$lastSuccessfulUpdateTime, createdAt=$createdAt, updatedAt=$updatedAt, productUrl=$productUrl, imageUrl=$imageUrl, price=$price, numberOfUserVariables=$numberOfUserVariables, outcome=$outcome, minimumRecordedValue=$minimumRecordedValue, maximumRecordedValue=$maximumRecordedValue, ]';
  }

}

