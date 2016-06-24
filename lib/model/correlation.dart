part of api;


@Entity()
class Correlation {
  /* Pearson correlation coefficient between cause and effect measurements */
  @Property(name: 'correlationCoefficient')
  Number correlationCoefficient = null;
  
/* ORIGINAL variable name of the cause variable for which the user desires correlations. */
  @Property(name: 'cause')
  String cause = null;
  
/* original name of the cause. */
  @Property(name: 'originalCause')
  String originalCause = null;
  
/* ORIGINAL variable name of the effect variable for which the user desires correlations. */
  @Property(name: 'effect')
  String effect = null;
  
/* effect variable original name. */
  @Property(name: 'originalEffect')
  String originalEffect = null;
  
/* User estimated or default time after cause measurement before a perceivable effect is observed */
  @Property(name: 'onsetDelay')
  double onsetDelay = null;
  
/* Time over which the cause is expected to produce a perceivable effect following the onset delay */
  @Property(name: 'durationOfAction')
  Number durationOfAction = null;
  
/* Number of points that went into the correlation calculation */
  @Property(name: 'numberOfPairs')
  Number numberOfPairs = null;
  
/* Magnitude of the effects of a cause indicating whether it's practically meaningful. */
  @Property(name: 'effectSize')
  String effectSize = null;
  
/* A function of the effect size and sample size */
  @Property(name: 'statisticalSignificance')
  String statisticalSignificance = null;
  
/* Time at which correlation was calculated */
  @Property(name: 'timestamp')
  Number timestamp = null;
  
/* Correlation when cause and effect are reversed. For any causal relationship, the forward correlation should exceed the reverse correlation. */
  @Property(name: 'reverseCorrelation')
  Number reverseCorrelation = null;
  
/*  */
  @Property(name: 'causalityFactor')
  Number causalityFactor = null;
  
/* Variable category of the cause variable. */
  @Property(name: 'causeCategory')
  String causeCategory = null;
  
/* Variable category of the effect variable. */
  @Property(name: 'effectCategory')
  String effectCategory = null;
  
/* cause value that predicts an above average effect value (in default unit for cause variable) */
  @Property(name: 'valuePredictingHighOutcome')
  Number valuePredictingHighOutcome = null;
  
/* cause value that predicts a below average effect value (in default unit for cause variable) */
  @Property(name: 'valuePredictingLowOutcome')
  Number valuePredictingLowOutcome = null;
  
/* Optimal Pearson Product */
  @Property(name: 'optimalPearsonProduct')
  Number optimalPearsonProduct = null;
  
/* Average Vote */
  @Property(name: 'averageVote')
  Number averageVote = null;
  
/* User Vote */
  @Property(name: 'userVote')
  Number userVote = null;
  
/* Unit of the predictor variable */
  @Property(name: 'causeUnit')
  String causeUnit = null;
  
/* Unit Id of the predictor variable */
  @Property(name: 'causeUnitId')
  int causeUnitId = null;
  
  Correlation();

  @override
  String toString()  {
    return 'Correlation[correlationCoefficient=$correlationCoefficient, cause=$cause, originalCause=$originalCause, effect=$effect, originalEffect=$originalEffect, onsetDelay=$onsetDelay, durationOfAction=$durationOfAction, numberOfPairs=$numberOfPairs, effectSize=$effectSize, statisticalSignificance=$statisticalSignificance, timestamp=$timestamp, reverseCorrelation=$reverseCorrelation, causalityFactor=$causalityFactor, causeCategory=$causeCategory, effectCategory=$effectCategory, valuePredictingHighOutcome=$valuePredictingHighOutcome, valuePredictingLowOutcome=$valuePredictingLowOutcome, optimalPearsonProduct=$optimalPearsonProduct, averageVote=$averageVote, userVote=$userVote, causeUnit=$causeUnit, causeUnitId=$causeUnitId, ]';
  }

}

