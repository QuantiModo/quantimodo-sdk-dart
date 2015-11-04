part of api;


@Entity()
class AggregatedCorrelation {
  /* id */
  int id = null;
  
  /* correlation */
  num correlation = null;
  
  /* cause_id */
  int causeId = null;
  
  /* effect_id */
  int effectId = null;
  
  /* onset_delay */
  int onsetDelay = null;
  
  /* duration_of_action */
  int durationOfAction = null;
  
  /* number_of_pairs */
  int numberOfPairs = null;
  
  /* value_predicting_high_outcome */
  num valuePredictingHighOutcome = null;
  
  /* value_predicting_low_outcome */
  num valuePredictingLowOutcome = null;
  
  /* optimal_pearson_product */
  num optimalPearsonProduct = null;
  
  /* vote */
  num vote = null;
  
  /* number_of_users */
  int numberOfUsers = null;
  
  /* number_of_correlations */
  int numberOfCorrelations = null;
  
  /* statistical_significance */
  num statisticalSignificance = null;
  
  /* cause_unit */
  String causeUnit = null;
  
  /* cause_unit_id */
  int causeUnitId = null;
  
  /* cause_changes */
  int causeChanges = null;
  
  /* effect_changes */
  int effectChanges = null;
  
  /* aggregate_qm_score */
  num aggregateQmScore = null;
  
  /* created_at */
  DateTime createdAt = null;
  
  /* updated_at */
  DateTime updatedAt = null;
  
  /* status */
  String status = null;
  
  /* error_message */
  String errorMessage = null;
  
  /* last_successful_update_time */
  DateTime lastSuccessfulUpdateTime = null;
  
  /* reverse_pearson_correlation_coefficient */
  num reversePearsonCorrelationCoefficient = null;
  
  /* predictive_pearson_correlation_coefficient */
  num predictivePearsonCorrelationCoefficient = null;
  
  
  AggregatedCorrelation();

  @override
  String toString()  {
    return 'AggregatedCorrelation[id=$id, correlation=$correlation, causeId=$causeId, effectId=$effectId, onsetDelay=$onsetDelay, durationOfAction=$durationOfAction, numberOfPairs=$numberOfPairs, valuePredictingHighOutcome=$valuePredictingHighOutcome, valuePredictingLowOutcome=$valuePredictingLowOutcome, optimalPearsonProduct=$optimalPearsonProduct, vote=$vote, numberOfUsers=$numberOfUsers, numberOfCorrelations=$numberOfCorrelations, statisticalSignificance=$statisticalSignificance, causeUnit=$causeUnit, causeUnitId=$causeUnitId, causeChanges=$causeChanges, effectChanges=$effectChanges, aggregateQmScore=$aggregateQmScore, createdAt=$createdAt, updatedAt=$updatedAt, status=$status, errorMessage=$errorMessage, lastSuccessfulUpdateTime=$lastSuccessfulUpdateTime, reversePearsonCorrelationCoefficient=$reversePearsonCorrelationCoefficient, predictivePearsonCorrelationCoefficient=$predictivePearsonCorrelationCoefficient, ]';
  }

}

