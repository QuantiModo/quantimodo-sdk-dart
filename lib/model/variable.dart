part of api;


@Entity()
class Variable {
  /* id */
  int id = null;
  
  /* client_id */
  String clientId = null;
  
  /* parent_id */
  int parentId = null;
  
  /* Name of the variable */
  String name = null;
  
  /* Category of the variable */
  int variableCategoryId = null;
  
  /* ID of the default unit of measurement to use for this variable */
  int defaultUnitId = null;
  
  /* How to combine values of this variable (for instance, to see a summary of the values over a month) 0 for sum OR 1 for mean */
  String combinationOperation = null;
  
  /* filling_value */
  num fillingValue = null;
  
  /* maximum_allowed_value */
  num maximumAllowedValue = null;
  
  /* minimum_allowed_value */
  num minimumAllowedValue = null;
  
  /* onset_delay */
  int onsetDelay = null;
  
  /* duration_of_action */
  int durationOfAction = null;
  
  /* public */
  int public = null;
  
  /* cause_only */
  bool causeOnly = null;
  
  /* most_common_value */
  num mostCommonValue = null;
  
  /* most_common_unit_id */
  int mostCommonUnitId = null;
  
  /* standard_deviation */
  num standardDeviation = null;
  
  /* variance */
  num variance = null;
  
  /* mean */
  num mean = null;
  
  /* median */
  num median = null;
  
  /* number_of_measurements */
  num numberOfMeasurements = null;
  
  /* number_of_unique_values */
  num numberOfUniqueValues = null;
  
  /* skewness */
  num skewness = null;
  
  /* kurtosis */
  num kurtosis = null;
  
  /* status */
  String status = null;
  
  /* error_message */
  String errorMessage = null;
  
  /* last_successful_update_time */
  DateTime lastSuccessfulUpdateTime = null;
  
  /* created_at */
  DateTime createdAt = null;
  
  /* updated_at */
  DateTime updatedAt = null;
  
  /* product_url */
  String productUrl = null;
  
  /* image_url */
  String imageUrl = null;
  
  /* price */
  num price = null;
  
  /* number_of_user_variables */
  int numberOfUserVariables = null;
  
  /* outcome */
  bool outcome = null;
  
  /* minimum_recorded_value */
  num minimumRecordedValue = null;
  
  /* maximum_recorded_value */
  num maximumRecordedValue = null;
  
  
  Variable();

  @override
  String toString()  {
    return 'Variable[id=$id, clientId=$clientId, parentId=$parentId, name=$name, variableCategoryId=$variableCategoryId, defaultUnitId=$defaultUnitId, combinationOperation=$combinationOperation, fillingValue=$fillingValue, maximumAllowedValue=$maximumAllowedValue, minimumAllowedValue=$minimumAllowedValue, onsetDelay=$onsetDelay, durationOfAction=$durationOfAction, public=$public, causeOnly=$causeOnly, mostCommonValue=$mostCommonValue, mostCommonUnitId=$mostCommonUnitId, standardDeviation=$standardDeviation, variance=$variance, mean=$mean, median=$median, numberOfMeasurements=$numberOfMeasurements, numberOfUniqueValues=$numberOfUniqueValues, skewness=$skewness, kurtosis=$kurtosis, status=$status, errorMessage=$errorMessage, lastSuccessfulUpdateTime=$lastSuccessfulUpdateTime, createdAt=$createdAt, updatedAt=$updatedAt, productUrl=$productUrl, imageUrl=$imageUrl, price=$price, numberOfUserVariables=$numberOfUserVariables, outcome=$outcome, minimumRecordedValue=$minimumRecordedValue, maximumRecordedValue=$maximumRecordedValue, ]';
  }

}

