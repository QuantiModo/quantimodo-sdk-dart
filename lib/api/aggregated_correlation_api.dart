part of api;


class AggregatedCorrelationApi {
  String basePath = "https://app.quantimo.do/api/v2";
  ApiClient apiClient = ApiClient.defaultApiClient;

  AggregatedCorrelationApi([ApiClient apiClient]) {
    if (apiClient != null) {
      this.apiClient = apiClient;
    }
  }

  
  /// Get all AggregatedCorrelations
  ///
  /// Get all AggregatedCorrelations
  Future<InlineResponse200> aggregatedCorrelationsGet(Number correlation, int causeId, int effectId, int onsetDelay, int durationOfAction, int numberOfPairs, Number valuePredictingHighOutcome, Number valuePredictingLowOutcome, Number optimalPearsonProduct, Number vote, int numberOfUsers, int numberOfCorrelations, Number statisticalSignificance, String causeUnit, int causeUnitId, int causeChanges, int effectChanges, Number aggregateQmScore, String createdAt, String updatedAt, String status, String errorMessage, String lastSuccessfulUpdateTime, Number reversePearsonCorrelationCoefficient, Number predictivePearsonCorrelationCoefficient, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/aggregatedCorrelations".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != correlation)
      queryParams["correlation"] = correlation is List ? correlation.join(',') : correlation;
    if("null" != causeId)
      queryParams["cause_id"] = causeId is List ? causeId.join(',') : causeId;
    if("null" != effectId)
      queryParams["effect_id"] = effectId is List ? effectId.join(',') : effectId;
    if("null" != onsetDelay)
      queryParams["onset_delay"] = onsetDelay is List ? onsetDelay.join(',') : onsetDelay;
    if("null" != durationOfAction)
      queryParams["duration_of_action"] = durationOfAction is List ? durationOfAction.join(',') : durationOfAction;
    if("null" != numberOfPairs)
      queryParams["number_of_pairs"] = numberOfPairs is List ? numberOfPairs.join(',') : numberOfPairs;
    if("null" != valuePredictingHighOutcome)
      queryParams["value_predicting_high_outcome"] = valuePredictingHighOutcome is List ? valuePredictingHighOutcome.join(',') : valuePredictingHighOutcome;
    if("null" != valuePredictingLowOutcome)
      queryParams["value_predicting_low_outcome"] = valuePredictingLowOutcome is List ? valuePredictingLowOutcome.join(',') : valuePredictingLowOutcome;
    if("null" != optimalPearsonProduct)
      queryParams["optimal_pearson_product"] = optimalPearsonProduct is List ? optimalPearsonProduct.join(',') : optimalPearsonProduct;
    if("null" != vote)
      queryParams["vote"] = vote is List ? vote.join(',') : vote;
    if("null" != numberOfUsers)
      queryParams["number_of_users"] = numberOfUsers is List ? numberOfUsers.join(',') : numberOfUsers;
    if("null" != numberOfCorrelations)
      queryParams["number_of_correlations"] = numberOfCorrelations is List ? numberOfCorrelations.join(',') : numberOfCorrelations;
    if("null" != statisticalSignificance)
      queryParams["statistical_significance"] = statisticalSignificance is List ? statisticalSignificance.join(',') : statisticalSignificance;
    if("null" != causeUnit)
      queryParams["cause_unit"] = causeUnit is List ? causeUnit.join(',') : causeUnit;
    if("null" != causeUnitId)
      queryParams["cause_unit_id"] = causeUnitId is List ? causeUnitId.join(',') : causeUnitId;
    if("null" != causeChanges)
      queryParams["cause_changes"] = causeChanges is List ? causeChanges.join(',') : causeChanges;
    if("null" != effectChanges)
      queryParams["effect_changes"] = effectChanges is List ? effectChanges.join(',') : effectChanges;
    if("null" != aggregateQmScore)
      queryParams["aggregate_qm_score"] = aggregateQmScore is List ? aggregateQmScore.join(',') : aggregateQmScore;
    if("null" != createdAt)
      queryParams["created_at"] = createdAt is List ? createdAt.join(',') : createdAt;
    if("null" != updatedAt)
      queryParams["updated_at"] = updatedAt is List ? updatedAt.join(',') : updatedAt;
    if("null" != status)
      queryParams["status"] = status is List ? status.join(',') : status;
    if("null" != errorMessage)
      queryParams["error_message"] = errorMessage is List ? errorMessage.join(',') : errorMessage;
    if("null" != lastSuccessfulUpdateTime)
      queryParams["last_successful_update_time"] = lastSuccessfulUpdateTime is List ? lastSuccessfulUpdateTime.join(',') : lastSuccessfulUpdateTime;
    if("null" != reversePearsonCorrelationCoefficient)
      queryParams["reverse_pearson_correlation_coefficient"] = reversePearsonCorrelationCoefficient is List ? reversePearsonCorrelationCoefficient.join(',') : reversePearsonCorrelationCoefficient;
    if("null" != predictivePearsonCorrelationCoefficient)
      queryParams["predictive_pearson_correlation_coefficient"] = predictivePearsonCorrelationCoefficient is List ? predictivePearsonCorrelationCoefficient.join(',') : predictivePearsonCorrelationCoefficient;
    if("null" != limit)
      queryParams["limit"] = limit is List ? limit.join(',') : limit;
    if("null" != offset)
      queryParams["offset"] = offset is List ? offset.join(',') : offset;
    if("null" != sort)
      queryParams["sort"] = sort is List ? sort.join(',') : sort;
    
    

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
      
    }

    return apiClient.invokeAPI(basePath, path, 'GET', queryParams, postBody, headerParams, formParams, contentType, authNames).then((response) {
      if(response.statusCode >= 400) {
        throw new ApiException(response.statusCode, response.body);
      }
      else if(response.body != null){
        return ApiClient.deserialize(response.body, InlineResponse200);
      }
      else {
        return null;
      }
    });
  }
  
  /// Store AggregatedCorrelation
  ///
  /// Store AggregatedCorrelation
  Future<InlineResponse2001> aggregatedCorrelationsPost(AggregatedCorrelation body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/aggregatedCorrelations".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
      
    }

    return apiClient.invokeAPI(basePath, path, 'POST', queryParams, postBody, headerParams, formParams, contentType, authNames).then((response) {
      if(response.statusCode >= 400) {
        throw new ApiException(response.statusCode, response.body);
      }
      else if(response.body != null){
        return ApiClient.deserialize(response.body, InlineResponse2001);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get AggregatedCorrelation
  ///
  /// Get AggregatedCorrelation
  Future<InlineResponse2001> aggregatedCorrelationsIdGet(int id) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/aggregatedCorrelations/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
      
    }

    return apiClient.invokeAPI(basePath, path, 'GET', queryParams, postBody, headerParams, formParams, contentType, authNames).then((response) {
      if(response.statusCode >= 400) {
        throw new ApiException(response.statusCode, response.body);
      }
      else if(response.body != null){
        return ApiClient.deserialize(response.body, InlineResponse2001);
      }
      else {
        return null;
      }
    });
  }
  
  /// Update AggregatedCorrelation
  ///
  /// Update AggregatedCorrelation
  Future<InlineResponse2002> aggregatedCorrelationsIdPut(int id, AggregatedCorrelation body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/aggregatedCorrelations/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
      
    }

    return apiClient.invokeAPI(basePath, path, 'PUT', queryParams, postBody, headerParams, formParams, contentType, authNames).then((response) {
      if(response.statusCode >= 400) {
        throw new ApiException(response.statusCode, response.body);
      }
      else if(response.body != null){
        return ApiClient.deserialize(response.body, InlineResponse2002);
      }
      else {
        return null;
      }
    });
  }
  
  /// Delete AggregatedCorrelation
  ///
  /// Delete AggregatedCorrelation
  Future<InlineResponse2002> aggregatedCorrelationsIdDelete(int id) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/aggregatedCorrelations/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
      
    }

    return apiClient.invokeAPI(basePath, path, 'DELETE', queryParams, postBody, headerParams, formParams, contentType, authNames).then((response) {
      if(response.statusCode >= 400) {
        throw new ApiException(response.statusCode, response.body);
      }
      else if(response.body != null){
        return ApiClient.deserialize(response.body, InlineResponse2002);
      }
      else {
        return null;
      }
    });
  }
  
}
