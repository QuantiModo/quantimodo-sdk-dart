part of api;


class ApplicationEndpointsApi {
  String basePath = "https://app.quantimo.do/api/v2";
  ApiClient apiClient = ApiClient.defaultApiClient;

  ApplicationEndpointsApi([ApiClient apiClient]) {
    if (apiClient != null) {
      this.apiClient = apiClient;
    }
  }

  
  /// Get all Connections
  ///
  /// Get all Connections
  Future<InlineResponse2003> applicationConnectionsGet(String accessToken, int connectorId, String connectStatus, String connectError, String updateRequestedAt, String updateStatus, String updateError, String lastSuccessfulUpdatedAt, String createdAt, String updatedAt, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/application/connections".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != connectorId)
      queryParams["connector_id"] = connectorId is List ? connectorId.join(',') : connectorId;
    if("null" != connectStatus)
      queryParams["connect_status"] = connectStatus is List ? connectStatus.join(',') : connectStatus;
    if("null" != connectError)
      queryParams["connect_error"] = connectError is List ? connectError.join(',') : connectError;
    if("null" != updateRequestedAt)
      queryParams["update_requested_at"] = updateRequestedAt is List ? updateRequestedAt.join(',') : updateRequestedAt;
    if("null" != updateStatus)
      queryParams["update_status"] = updateStatus is List ? updateStatus.join(',') : updateStatus;
    if("null" != updateError)
      queryParams["update_error"] = updateError is List ? updateError.join(',') : updateError;
    if("null" != lastSuccessfulUpdatedAt)
      queryParams["last_successful_updated_at"] = lastSuccessfulUpdatedAt is List ? lastSuccessfulUpdatedAt.join(',') : lastSuccessfulUpdatedAt;
    if("null" != createdAt)
      queryParams["created_at"] = createdAt is List ? createdAt.join(',') : createdAt;
    if("null" != updatedAt)
      queryParams["updated_at"] = updatedAt is List ? updatedAt.join(',') : updatedAt;
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
        return ApiClient.deserialize(response.body, InlineResponse2003);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get all Credentials
  ///
  /// Get all Credentials
  Future<InlineResponse2004> applicationCredentialsGet(String accessToken, int connectorId, String attrKey, String attrValue, String createdAt, String updatedAt, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/application/credentials".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != connectorId)
      queryParams["connector_id"] = connectorId is List ? connectorId.join(',') : connectorId;
    if("null" != attrKey)
      queryParams["attr_key"] = attrKey is List ? attrKey.join(',') : attrKey;
    if("null" != attrValue)
      queryParams["attr_value"] = attrValue is List ? attrValue.join(',') : attrValue;
    if("null" != createdAt)
      queryParams["created_at"] = createdAt is List ? createdAt.join(',') : createdAt;
    if("null" != updatedAt)
      queryParams["updated_at"] = updatedAt is List ? updatedAt.join(',') : updatedAt;
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
        return ApiClient.deserialize(response.body, InlineResponse2004);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get measurements for all users using your application
  ///
  /// Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten.
  Future<InlineResponse2005> applicationMeasurementsGet(String accessToken, String clientId, int connectorId, int variableId, int sourceId, String startTime, Number value, int unitId, Number originalValue, int originalUnitId, int duration, String note, Number latitude, Number longitude, String location, String createdAt, String updatedAt, String error, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/application/measurements".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != clientId)
      queryParams["client_id"] = clientId is List ? clientId.join(',') : clientId;
    if("null" != connectorId)
      queryParams["connector_id"] = connectorId is List ? connectorId.join(',') : connectorId;
    if("null" != variableId)
      queryParams["variable_id"] = variableId is List ? variableId.join(',') : variableId;
    if("null" != sourceId)
      queryParams["source_id"] = sourceId is List ? sourceId.join(',') : sourceId;
    if("null" != startTime)
      queryParams["start_time"] = startTime is List ? startTime.join(',') : startTime;
    if("null" != value)
      queryParams["value"] = value is List ? value.join(',') : value;
    if("null" != unitId)
      queryParams["unit_id"] = unitId is List ? unitId.join(',') : unitId;
    if("null" != originalValue)
      queryParams["original_value"] = originalValue is List ? originalValue.join(',') : originalValue;
    if("null" != originalUnitId)
      queryParams["original_unit_id"] = originalUnitId is List ? originalUnitId.join(',') : originalUnitId;
    if("null" != duration)
      queryParams["duration"] = duration is List ? duration.join(',') : duration;
    if("null" != note)
      queryParams["note"] = note is List ? note.join(',') : note;
    if("null" != latitude)
      queryParams["latitude"] = latitude is List ? latitude.join(',') : latitude;
    if("null" != longitude)
      queryParams["longitude"] = longitude is List ? longitude.join(',') : longitude;
    if("null" != location)
      queryParams["location"] = location is List ? location.join(',') : location;
    if("null" != createdAt)
      queryParams["created_at"] = createdAt is List ? createdAt.join(',') : createdAt;
    if("null" != updatedAt)
      queryParams["updated_at"] = updatedAt is List ? updatedAt.join(',') : updatedAt;
    if("null" != error)
      queryParams["error"] = error is List ? error.join(',') : error;
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
        return ApiClient.deserialize(response.body, InlineResponse2005);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get tracking reminders
  ///
  /// Get the variable id, frequency, and default value for the user tracking reminders
  Future<InlineResponse2006> applicationTrackingRemindersGet(String accessToken, String clientId, String createdAt, String updatedAt, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/application/trackingReminders".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != clientId)
      queryParams["client_id"] = clientId is List ? clientId.join(',') : clientId;
    if("null" != createdAt)
      queryParams["created_at"] = createdAt is List ? createdAt.join(',') : createdAt;
    if("null" != updatedAt)
      queryParams["updated_at"] = updatedAt is List ? updatedAt.join(',') : updatedAt;
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
        return ApiClient.deserialize(response.body, InlineResponse2006);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get all Updates
  ///
  /// Get all Updates
  Future<InlineResponse2007> applicationUpdatesGet(String accessToken, int connectorId, int numberOfMeasurements, bool success, String message, String createdAt, String updatedAt, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/application/updates".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != connectorId)
      queryParams["connector_id"] = connectorId is List ? connectorId.join(',') : connectorId;
    if("null" != numberOfMeasurements)
      queryParams["number_of_measurements"] = numberOfMeasurements is List ? numberOfMeasurements.join(',') : numberOfMeasurements;
    if("null" != success)
      queryParams["success"] = success is List ? success.join(',') : success;
    if("null" != message)
      queryParams["message"] = message is List ? message.join(',') : message;
    if("null" != createdAt)
      queryParams["created_at"] = createdAt is List ? createdAt.join(',') : createdAt;
    if("null" != updatedAt)
      queryParams["updated_at"] = updatedAt is List ? updatedAt.join(',') : updatedAt;
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
        return ApiClient.deserialize(response.body, InlineResponse2007);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get all UserVariableRelationships
  ///
  /// Get all UserVariableRelationships
  Future<InlineResponse2008> applicationUserVariableRelationshipsGet(String accessToken, int id, String confidenceLevel, Number confidenceScore, String direction, int durationOfAction, String errorMessage, int onsetDelay, int outcomeVariableId, int predictorVariableId, int predictorUnitId, Number sinnRank, String strengthLevel, Number strengthScore, String vote, Number valuePredictingHighOutcome, Number valuePredictingLowOutcome, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/application/userVariableRelationships".replaceAll("{format}","json");

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
        return ApiClient.deserialize(response.body, InlineResponse2008);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get all UserVariables
  ///
  /// Get all UserVariables
  Future<InlineResponse2009> applicationUserVariablesGet(String accessToken, String clientId, int parentId, int variableId, int defaultUnitId, Number minimumAllowedValue, Number maximumAllowedValue, Number fillingValue, int joinWith, int onsetDelay, int durationOfAction, int variableCategoryId, int updated, int public, bool causeOnly, String fillingType, int numberOfMeasurements, int numberOfProcessedMeasurements, int measurementsAtLastAnalysis, int lastUnitId, int lastOriginalUnitId, int lastOriginalValue, Number lastValue, Number lastOriginalValue2, int lastSourceId, int numberOfCorrelations, String status, String errorMessage, String lastSuccessfulUpdateTime, Number standardDeviation, Number variance, Number minimumRecordedValue, Number maximumRecordedValue, Number mean, Number median, int mostCommonUnitId, Number mostCommonValue, Number numberOfUniqueDailyValues, int numberOfChanges, Number skewness, Number kurtosis, Number latitude, Number longitude, String location, String createdAt, String updatedAt, bool outcome, String sources, int earliestSourceTime, int latestSourceTime, int earliestMeasurementTime, int latestMeasurementTime, int earliestFillingTime, int latestFillingTime, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/application/userVariables".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != clientId)
      queryParams["client_id"] = clientId is List ? clientId.join(',') : clientId;
    if("null" != parentId)
      queryParams["parent_id"] = parentId is List ? parentId.join(',') : parentId;
    if("null" != variableId)
      queryParams["variable_id"] = variableId is List ? variableId.join(',') : variableId;
    if("null" != defaultUnitId)
      queryParams["default_unit_id"] = defaultUnitId is List ? defaultUnitId.join(',') : defaultUnitId;
    if("null" != minimumAllowedValue)
      queryParams["minimum_allowed_value"] = minimumAllowedValue is List ? minimumAllowedValue.join(',') : minimumAllowedValue;
    if("null" != maximumAllowedValue)
      queryParams["maximum_allowed_value"] = maximumAllowedValue is List ? maximumAllowedValue.join(',') : maximumAllowedValue;
    if("null" != fillingValue)
      queryParams["filling_value"] = fillingValue is List ? fillingValue.join(',') : fillingValue;
    if("null" != joinWith)
      queryParams["join_with"] = joinWith is List ? joinWith.join(',') : joinWith;
    if("null" != onsetDelay)
      queryParams["onset_delay"] = onsetDelay is List ? onsetDelay.join(',') : onsetDelay;
    if("null" != durationOfAction)
      queryParams["duration_of_action"] = durationOfAction is List ? durationOfAction.join(',') : durationOfAction;
    if("null" != variableCategoryId)
      queryParams["variable_category_id"] = variableCategoryId is List ? variableCategoryId.join(',') : variableCategoryId;
    if("null" != updated)
      queryParams["updated"] = updated is List ? updated.join(',') : updated;
    if("null" != public)
      queryParams["public"] = public is List ? public.join(',') : public;
    if("null" != causeOnly)
      queryParams["cause_only"] = causeOnly is List ? causeOnly.join(',') : causeOnly;
    if("null" != fillingType)
      queryParams["filling_type"] = fillingType is List ? fillingType.join(',') : fillingType;
    if("null" != numberOfMeasurements)
      queryParams["number_of_measurements"] = numberOfMeasurements is List ? numberOfMeasurements.join(',') : numberOfMeasurements;
    if("null" != numberOfProcessedMeasurements)
      queryParams["number_of_processed_measurements"] = numberOfProcessedMeasurements is List ? numberOfProcessedMeasurements.join(',') : numberOfProcessedMeasurements;
    if("null" != measurementsAtLastAnalysis)
      queryParams["measurements_at_last_analysis"] = measurementsAtLastAnalysis is List ? measurementsAtLastAnalysis.join(',') : measurementsAtLastAnalysis;
    if("null" != lastUnitId)
      queryParams["last_unit_id"] = lastUnitId is List ? lastUnitId.join(',') : lastUnitId;
    if("null" != lastOriginalUnitId)
      queryParams["last_original_unit_id"] = lastOriginalUnitId is List ? lastOriginalUnitId.join(',') : lastOriginalUnitId;
    if("null" != lastOriginalValue)
      queryParams["last_original_value"] = lastOriginalValue is List ? lastOriginalValue.join(',') : lastOriginalValue;
    if("null" != lastValue)
      queryParams["last_value"] = lastValue is List ? lastValue.join(',') : lastValue;
    if("null" != lastOriginalValue2)
      queryParams["last_original_value"] = lastOriginalValue2 is List ? lastOriginalValue2.join(',') : lastOriginalValue2;
    if("null" != lastSourceId)
      queryParams["last_source_id"] = lastSourceId is List ? lastSourceId.join(',') : lastSourceId;
    if("null" != numberOfCorrelations)
      queryParams["number_of_correlations"] = numberOfCorrelations is List ? numberOfCorrelations.join(',') : numberOfCorrelations;
    if("null" != status)
      queryParams["status"] = status is List ? status.join(',') : status;
    if("null" != errorMessage)
      queryParams["error_message"] = errorMessage is List ? errorMessage.join(',') : errorMessage;
    if("null" != lastSuccessfulUpdateTime)
      queryParams["last_successful_update_time"] = lastSuccessfulUpdateTime is List ? lastSuccessfulUpdateTime.join(',') : lastSuccessfulUpdateTime;
    if("null" != standardDeviation)
      queryParams["standard_deviation"] = standardDeviation is List ? standardDeviation.join(',') : standardDeviation;
    if("null" != variance)
      queryParams["variance"] = variance is List ? variance.join(',') : variance;
    if("null" != minimumRecordedValue)
      queryParams["minimum_recorded_value"] = minimumRecordedValue is List ? minimumRecordedValue.join(',') : minimumRecordedValue;
    if("null" != maximumRecordedValue)
      queryParams["maximum_recorded_value"] = maximumRecordedValue is List ? maximumRecordedValue.join(',') : maximumRecordedValue;
    if("null" != mean)
      queryParams["mean"] = mean is List ? mean.join(',') : mean;
    if("null" != median)
      queryParams["median"] = median is List ? median.join(',') : median;
    if("null" != mostCommonUnitId)
      queryParams["most_common_unit_id"] = mostCommonUnitId is List ? mostCommonUnitId.join(',') : mostCommonUnitId;
    if("null" != mostCommonValue)
      queryParams["most_common_value"] = mostCommonValue is List ? mostCommonValue.join(',') : mostCommonValue;
    if("null" != numberOfUniqueDailyValues)
      queryParams["number_of_unique_daily_values"] = numberOfUniqueDailyValues is List ? numberOfUniqueDailyValues.join(',') : numberOfUniqueDailyValues;
    if("null" != numberOfChanges)
      queryParams["number_of_changes"] = numberOfChanges is List ? numberOfChanges.join(',') : numberOfChanges;
    if("null" != skewness)
      queryParams["skewness"] = skewness is List ? skewness.join(',') : skewness;
    if("null" != kurtosis)
      queryParams["kurtosis"] = kurtosis is List ? kurtosis.join(',') : kurtosis;
    if("null" != latitude)
      queryParams["latitude"] = latitude is List ? latitude.join(',') : latitude;
    if("null" != longitude)
      queryParams["longitude"] = longitude is List ? longitude.join(',') : longitude;
    if("null" != location)
      queryParams["location"] = location is List ? location.join(',') : location;
    if("null" != createdAt)
      queryParams["created_at"] = createdAt is List ? createdAt.join(',') : createdAt;
    if("null" != updatedAt)
      queryParams["updated_at"] = updatedAt is List ? updatedAt.join(',') : updatedAt;
    if("null" != outcome)
      queryParams["outcome"] = outcome is List ? outcome.join(',') : outcome;
    if("null" != sources)
      queryParams["sources"] = sources is List ? sources.join(',') : sources;
    if("null" != earliestSourceTime)
      queryParams["earliest_source_time"] = earliestSourceTime is List ? earliestSourceTime.join(',') : earliestSourceTime;
    if("null" != latestSourceTime)
      queryParams["latest_source_time"] = latestSourceTime is List ? latestSourceTime.join(',') : latestSourceTime;
    if("null" != earliestMeasurementTime)
      queryParams["earliest_measurement_time"] = earliestMeasurementTime is List ? earliestMeasurementTime.join(',') : earliestMeasurementTime;
    if("null" != latestMeasurementTime)
      queryParams["latest_measurement_time"] = latestMeasurementTime is List ? latestMeasurementTime.join(',') : latestMeasurementTime;
    if("null" != earliestFillingTime)
      queryParams["earliest_filling_time"] = earliestFillingTime is List ? earliestFillingTime.join(',') : earliestFillingTime;
    if("null" != latestFillingTime)
      queryParams["latest_filling_time"] = latestFillingTime is List ? latestFillingTime.join(',') : latestFillingTime;
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
        return ApiClient.deserialize(response.body, InlineResponse2009);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get all VariableUserSources
  ///
  /// Get all VariableUserSources
  Future<InlineResponse20010> applicationVariableUserSourcesGet(String accessToken, int variableId, int timestamp, int earliestMeasurementTime, int latestMeasurementTime, String createdAt, String updatedAt, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/application/variableUserSources".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != variableId)
      queryParams["variable_id"] = variableId is List ? variableId.join(',') : variableId;
    if("null" != timestamp)
      queryParams["timestamp"] = timestamp is List ? timestamp.join(',') : timestamp;
    if("null" != earliestMeasurementTime)
      queryParams["earliest_measurement_time"] = earliestMeasurementTime is List ? earliestMeasurementTime.join(',') : earliestMeasurementTime;
    if("null" != latestMeasurementTime)
      queryParams["latest_measurement_time"] = latestMeasurementTime is List ? latestMeasurementTime.join(',') : latestMeasurementTime;
    if("null" != createdAt)
      queryParams["created_at"] = createdAt is List ? createdAt.join(',') : createdAt;
    if("null" != updatedAt)
      queryParams["updated_at"] = updatedAt is List ? updatedAt.join(',') : updatedAt;
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
        return ApiClient.deserialize(response.body, InlineResponse20010);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get all Votes
  ///
  /// Get all Votes
  Future<InlineResponse20011> applicationVotesGet(String accessToken, String clientId, int causeId, int effectId, int value, String createdAt, String updatedAt, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/application/votes".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != clientId)
      queryParams["client_id"] = clientId is List ? clientId.join(',') : clientId;
    if("null" != causeId)
      queryParams["cause_id"] = causeId is List ? causeId.join(',') : causeId;
    if("null" != effectId)
      queryParams["effect_id"] = effectId is List ? effectId.join(',') : effectId;
    if("null" != value)
      queryParams["value"] = value is List ? value.join(',') : value;
    if("null" != createdAt)
      queryParams["created_at"] = createdAt is List ? createdAt.join(',') : createdAt;
    if("null" != updatedAt)
      queryParams["updated_at"] = updatedAt is List ? updatedAt.join(',') : updatedAt;
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
        return ApiClient.deserialize(response.body, InlineResponse20011);
      }
      else {
        return null;
      }
    });
  }
  
}
