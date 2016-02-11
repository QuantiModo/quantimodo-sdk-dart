part of api;


@Entity()
class Correlation {
  /* id */
  int id = null;
  
  /* Time at which correlation was calculated */
  int timestamp = null;
  
  /* ID of user that owns this correlation */
  int userId = null;
  
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
  
  /* QM Score */
  num qmScore = null;
  
  /* error */
  String error = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  /* Correlation when cause and effect are reversed. For any causal relationship, the forward correlation should exceed the reverse correlation */
  num reversePearsonCorrelationCoefficient = null;
  
  /* Predictive Pearson Correlation Coefficient */
  num predictivePearsonCorrelationCoefficient = null;
  
  
  Correlation();

  @override
  String toString()  {
    return 'Correlation[id=$id, timestamp=$timestamp, userId=$userId, correlation=$correlation, causeId=$causeId, effectId=$effectId, onsetDelay=$onsetDelay, durationOfAction=$durationOfAction, numberOfPairs=$numberOfPairs, valuePredictingHighOutcome=$valuePredictingHighOutcome, valuePredictingLowOutcome=$valuePredictingLowOutcome, optimalPearsonProduct=$optimalPearsonProduct, vote=$vote, statisticalSignificance=$statisticalSignificance, causeUnit=$causeUnit, causeUnitId=$causeUnitId, causeChanges=$causeChanges, effectChanges=$effectChanges, qmScore=$qmScore, error=$error, createdAt=$createdAt, updatedAt=$updatedAt, reversePearsonCorrelationCoefficient=$reversePearsonCorrelationCoefficient, predictivePearsonCorrelationCoefficient=$predictivePearsonCorrelationCoefficient, ]';
  }

}

