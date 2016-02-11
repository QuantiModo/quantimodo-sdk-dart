part of api;


class CommonVariableRelationshipApi {
  String basePath = "https://app.quantimo.do/api/v2";
  ApiClient apiClient = ApiClient.defaultApiClient;

  CommonVariableRelationshipApi([ApiClient apiClient]) {
    if (apiClient != null) {
      this.apiClient = apiClient;
    }
  }

  
  /// Get all CommonVariableRelationships
  ///
  /// Get all CommonVariableRelationships
  Future<InlineResponse20012> commonVariableRelationshipsGet(String accessToken, int id, String confidenceLevel, Number confidenceScore, String direction, int durationOfAction, String errorMessage, int onsetDelay, int outcomeVariableId, int predictorVariableId, int predictorUnitId, Number sinnRank, Number strengthScore, String strengthLevel, int upVotes, int downVotes, Number valuePredictingHighOutcome, Number valuePredictingLowOutcome, int numberOfUsers, String dataSource, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/commonVariableRelationships".replaceAll("{format}","json");

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
    if("null" != strengthScore)
      queryParams["strength_score"] = strengthScore is List ? strengthScore.join(',') : strengthScore;
    if("null" != strengthLevel)
      queryParams["strength_level"] = strengthLevel is List ? strengthLevel.join(',') : strengthLevel;
    if("null" != upVotes)
      queryParams["up_votes"] = upVotes is List ? upVotes.join(',') : upVotes;
    if("null" != downVotes)
      queryParams["down_votes"] = downVotes is List ? downVotes.join(',') : downVotes;
    if("null" != valuePredictingHighOutcome)
      queryParams["value_predicting_high_outcome"] = valuePredictingHighOutcome is List ? valuePredictingHighOutcome.join(',') : valuePredictingHighOutcome;
    if("null" != valuePredictingLowOutcome)
      queryParams["value_predicting_low_outcome"] = valuePredictingLowOutcome is List ? valuePredictingLowOutcome.join(',') : valuePredictingLowOutcome;
    if("null" != numberOfUsers)
      queryParams["number_of_users"] = numberOfUsers is List ? numberOfUsers.join(',') : numberOfUsers;
    if("null" != dataSource)
      queryParams["data_source"] = dataSource is List ? dataSource.join(',') : dataSource;
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
        return ApiClient.deserialize(response.body, InlineResponse20012);
      }
      else {
        return null;
      }
    });
  }
  
  /// Store CommonVariableRelationship
  ///
  /// Store CommonVariableRelationship
  Future<InlineResponse20013> commonVariableRelationshipsPost(String accessToken, CommonVariableRelationship body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/commonVariableRelationships".replaceAll("{format}","json");

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
        return ApiClient.deserialize(response.body, InlineResponse20013);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get CommonVariableRelationship
  ///
  /// Get CommonVariableRelationship
  Future<InlineResponse20013> commonVariableRelationshipsIdGet(int id, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/commonVariableRelationships/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
        return ApiClient.deserialize(response.body, InlineResponse20013);
      }
      else {
        return null;
      }
    });
  }
  
  /// Update CommonVariableRelationship
  ///
  /// Update CommonVariableRelationship
  Future<InlineResponse2002> commonVariableRelationshipsIdPut(int id, String accessToken, CommonVariableRelationship body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/commonVariableRelationships/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  
  /// Delete CommonVariableRelationship
  ///
  /// Delete CommonVariableRelationship
  Future<InlineResponse2002> commonVariableRelationshipsIdDelete(int id, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/commonVariableRelationships/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
