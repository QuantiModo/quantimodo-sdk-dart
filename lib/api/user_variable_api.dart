part of api;


class UserVariableApi {
  String basePath = "https://app.quantimo.do/api/v2";
  ApiClient apiClient = ApiClient.defaultApiClient;

  UserVariableApi([ApiClient apiClient]) {
    if (apiClient != null) {
      this.apiClient = apiClient;
    }
  }

  
  /// Get all UserVariables
  ///
  /// Get all UserVariables
  Future<InlineResponse2009> userVariablesGet(String accessToken, String clientId, int parentId, int variableId, int userId, int defaultUnitId, Number minimumAllowedValue, Number maximumAllowedValue, Number fillingValue, int joinWith, int onsetDelay, int durationOfAction, int variableCategoryId, int updated, int public, bool causeOnly, String fillingType, int numberOfMeasurements, int numberOfProcessedMeasurements, int measurementsAtLastAnalysis, int lastUnitId, int lastOriginalUnitId, int lastOriginalValue, Number lastValue, Number lastOriginalValue2, int lastSourceId, int numberOfCorrelations, String status, String errorMessage, String lastSuccessfulUpdateTime, Number standardDeviation, Number variance, Number minimumRecordedValue, Number maximumRecordedValue, Number mean, Number median, int mostCommonUnitId, Number mostCommonValue, Number numberOfUniqueDailyValues, int numberOfChanges, Number skewness, Number kurtosis, Number latitude, Number longitude, String location, String createdAt, String updatedAt, bool outcome, String sources, int earliestSourceTime, int latestSourceTime, int earliestMeasurementTime, int latestMeasurementTime, int earliestFillingTime, int latestFillingTime, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/userVariables".replaceAll("{format}","json");

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
    if("null" != userId)
      queryParams["user_id"] = userId is List ? userId.join(',') : userId;
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
        return ApiClient.deserialize(response.body, InlineResponse2009);
      }
      else {
        return null;
      }
    });
  }
  
  /// Store UserVariable
  ///
  /// Users can change things like the display name for a variable. They can also change the parameters used in analysis of that variable such as the expected duration of action for a variable to have an effect, the estimated delay before the onset of action. In order to filter out erroneous data, they are able to set the maximum and minimum reasonable daily values for a variable.
  Future<InlineResponse20030> userVariablesPost(String accessToken, UserVariable body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/userVariables".replaceAll("{format}","json");

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
        return ApiClient.deserialize(response.body, InlineResponse20030);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get UserVariable
  ///
  /// Get UserVariable
  Future<InlineResponse20030> userVariablesIdGet(int id, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/userVariables/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
        return ApiClient.deserialize(response.body, InlineResponse20030);
      }
      else {
        return null;
      }
    });
  }
  
  /// Update UserVariable
  ///
  /// Update UserVariable
  Future<InlineResponse2002> userVariablesIdPut(int id, String accessToken, UserVariable body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/userVariables/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  
  /// Delete UserVariable
  ///
  /// Delete UserVariable
  Future<InlineResponse2002> userVariablesIdDelete(int id, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/userVariables/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
