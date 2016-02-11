part of api;


class UserVariableRelationshipApi {
  String basePath = "https://app.quantimo.do/api/v2";
  ApiClient apiClient = ApiClient.defaultApiClient;

  UserVariableRelationshipApi([ApiClient apiClient]) {
    if (apiClient != null) {
      this.apiClient = apiClient;
    }
  }

  
  /// Get all UserVariableRelationships
  ///
  /// Get all UserVariableRelationships
  Future<InlineResponse2008> userVariableRelationshipsGet(String accessToken, int id, String confidenceLevel, Number confidenceScore, String direction, int durationOfAction, String errorMessage, int onsetDelay, int outcomeVariableId, int predictorVariableId, int predictorUnitId, Number sinnRank, String strengthLevel, Number strengthScore, int userId, String vote, Number valuePredictingHighOutcome, Number valuePredictingLowOutcome, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/userVariableRelationships".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != id)
      queryParams["id"] = id is List ? id.join(',') : id;
    if("null" != confidenceLevel)
      queryParams["confidence_level"] = confidenceLevel is List ? confidenceLevel.join(',') : confidenceLevel;
    if("null" != confidenceScore)
      queryParams["confidence_score"] = confidenceScore is List ? confidenceScore.join(',') : confidenceScore;
    if("null" != direction)
      queryParams["direction"] = direction is List ? direction.join(',') : direction;
    if("null" != durationOfAction)
      queryParams["duration_of_action"] = durationOfAction is List ? durationOfAction.join(',') : durationOfAction;
    if("null" != errorMessage)
      queryParams["error_message"] = errorMessage is List ? errorMessage.join(',') : errorMessage;
    if("null" != onsetDelay)
      queryParams["onset_delay"] = onsetDelay is List ? onsetDelay.join(',') : onsetDelay;
    if("null" != outcomeVariableId)
      queryParams["outcome_variable_id"] = outcomeVariableId is List ? outcomeVariableId.join(',') : outcomeVariableId;
    if("null" != predictorVariableId)
      queryParams["predictor_variable_id"] = predictorVariableId is List ? predictorVariableId.join(',') : predictorVariableId;
    if("null" != predictorUnitId)
      queryParams["predictor_unit_id"] = predictorUnitId is List ? predictorUnitId.join(',') : predictorUnitId;
    if("null" != sinnRank)
      queryParams["sinn_rank"] = sinnRank is List ? sinnRank.join(',') : sinnRank;
    if("null" != strengthLevel)
      queryParams["strength_level"] = strengthLevel is List ? strengthLevel.join(',') : strengthLevel;
    if("null" != strengthScore)
      queryParams["strength_score"] = strengthScore is List ? strengthScore.join(',') : strengthScore;
    if("null" != userId)
      queryParams["user_id"] = userId is List ? userId.join(',') : userId;
    if("null" != vote)
      queryParams["vote"] = vote is List ? vote.join(',') : vote;
    if("null" != valuePredictingHighOutcome)
      queryParams["value_predicting_high_outcome"] = valuePredictingHighOutcome is List ? valuePredictingHighOutcome.join(',') : valuePredictingHighOutcome;
    if("null" != valuePredictingLowOutcome)
      queryParams["value_predicting_low_outcome"] = valuePredictingLowOutcome is List ? valuePredictingLowOutcome.join(',') : valuePredictingLowOutcome;
    if("null" != limit)
      queryParams["limit"] = limit is List ? limit.join(',') : limit;
    if("null" != offset)
      queryParams["offset"] = offset is List ? offset.join(',') : offset;
    if("null" != sort)
      queryParams["sort"] = sort is List ? sort.join(',') : sort;
    
    

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["quantimodo_oauth2"];

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
        return ApiClient.deserialize(response.body, InlineResponse2008);
      }
      else {
        return null;
      }
    });
  }
  
  /// Store UserVariableRelationship
  ///
  /// Store UserVariableRelationship
  Future<InlineResponse20029> userVariableRelationshipsPost(String accessToken, UserVariableRelationship body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/userVariableRelationships".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    
    

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["quantimodo_oauth2"];

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
        return ApiClient.deserialize(response.body, InlineResponse20029);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get UserVariableRelationship
  ///
  /// Get UserVariableRelationship
  Future<InlineResponse20029> userVariableRelationshipsIdGet(int id, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/userVariableRelationships/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    
    

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["quantimodo_oauth2"];

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
        return ApiClient.deserialize(response.body, InlineResponse20029);
      }
      else {
        return null;
      }
    });
  }
  
  /// Update UserVariableRelationship
  ///
  /// Update UserVariableRelationship
  Future<InlineResponse2002> userVariableRelationshipsIdPut(int id, String accessToken, UserVariableRelationship body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/userVariableRelationships/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    
    

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["quantimodo_oauth2"];

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
  
  /// Delete UserVariableRelationship
  ///
  /// Delete UserVariableRelationship
  Future<InlineResponse2002> userVariableRelationshipsIdDelete(int id, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/userVariableRelationships/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    
    

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["quantimodo_oauth2"];

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
