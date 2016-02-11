part of api;


@Entity()
class AggregatedCorrelation {
  /* id */
  int id = null;
  
  /* Pearson correlation coefficient between cause and effect measurements */
  num correlation = null;
  
  /* variable ID of the cause variable for which the user desires correlations */
  int causeId = null;
  
  /* variable ID of the effect variable for which the user desires correlations */
  int effectId = null;
  
  /* User estimated or default time after cause measurement before a perceivable effect is observed */
  int onsetDelay = null;
  
  /* Time over which the cause is expected to produce a perceivable effect following the onset delay */
  int durationOfAction = null;
  
  /* Number of points that went into the correlation calculation */
  int numberOfPairs = null;
  
  /* cause value that predicts an above average effect value (in default unit for cause variable) */
  num valuePredictingHighOutcome = null;
  
  /* cause value that predicts a below average effect value (in default unit for cause variable) */
  num valuePredictingLowOutcome = null;
  
  /* Optimal Pearson Product */
  num optimalPearsonProduct = null;
  
  /* Vote */
  num vote = null;
  
  /* Number of Users by which correlation is aggregated */
  int numberOfUsers = null;
  
  /* Number of Correlations by which correlation is aggregated */
  int numberOfCorrelations = null;
  
  /* A function of the effect size and sample size */
  num statisticalSignificance = null;
  
  /* Unit of the predictor variable */
  String causeUnit = null;
  
  /* Unit ID of the predictor variable */
  int causeUnitId = null;
  
  /* Cause changes */
  int causeChanges = null;
  
  /* Effect changes */
  int effectChanges = null;
  
  /* Aggregated QM Score */
  num aggregateQmScore = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  /* Status */
  String status = null;
  
  /* Error Message */
  String errorMessage = null;
  
  /* Last Successful update time */
  DateTime lastSuccessfulUpdateTime = null;
  
  /* Correlation when cause and effect are reversed. For any causal relationship, the forward correlation should exceed the reverse correlation */
  num reversePearsonCorrelationCoefficient = null;
  
  /* Predictive Pearson Correlation Coefficient */
  num predictivePearsonCorrelationCoefficient = null;
  
  /* Source of data for this correlation */
  String dataSource = null;
  
  
  AggregatedCorrelation();

  @override
  String toString()  {
    return 'AggregatedCorrelation[id=$id, correlation=$correlation, causeId=$causeId, effectId=$effectId, onsetDelay=$onsetDelay, durationOfAction=$durationOfAction, numberOfPairs=$numberOfPairs, valuePredictingHighOutcome=$valuePredictingHighOutcome, valuePredictingLowOutcome=$valuePredictingLowOutcome, optimalPearsonProduct=$optimalPearsonProduct, vote=$vote, numberOfUsers=$numberOfUsers, numberOfCorrelations=$numberOfCorrelations, statisticalSignificance=$statisticalSignificance, causeUnit=$causeUnit, causeUnitId=$causeUnitId, causeChanges=$causeChanges, effectChanges=$effectChanges, aggregateQmScore=$aggregateQmScore, createdAt=$createdAt, updatedAt=$updatedAt, status=$status, errorMessage=$errorMessage, lastSuccessfulUpdateTime=$lastSuccessfulUpdateTime, reversePearsonCorrelationCoefficient=$reversePearsonCorrelationCoefficient, predictivePearsonCorrelationCoefficient=$predictivePearsonCorrelationCoefficient, dataSource=$dataSource, ]';
  }

}

