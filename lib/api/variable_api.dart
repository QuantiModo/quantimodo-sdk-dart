part of api;


class VariableApi {
  String basePath = "https://app.quantimo.do/api/v2";
  ApiClient apiClient = ApiClient.defaultApiClient;

  VariableApi([ApiClient apiClient]) {
    if (apiClient != null) {
      this.apiClient = apiClient;
    }
  }

  
  /// Get all Variables
  ///
  /// Get all Variables
  Future<InlineResponse20034> variablesGet(String accessToken, int id, String clientId, int parentId, String name, int variableCategoryId, int defaultUnitId, String combinationOperation, Number fillingValue, Number maximumAllowedValue, Number minimumAllowedValue, int onsetDelay, int durationOfAction, int public, bool causeOnly, Number mostCommonValue, int mostCommonUnitId, Number standardDeviation, Number variance, Number mean, Number median, Number numberOfMeasurements, Number numberOfUniqueValues, Number skewness, Number kurtosis, String status, String errorMessage, String lastSuccessfulUpdateTime, String createdAt, String updatedAt, String productUrl, String imageUrl, Number price, int numberOfUserVariables, bool outcome, Number minimumRecordedValue, Number maximumRecordedValue, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/variables".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != id)
      queryParams["id"] = id is List ? id.join(',') : id;
    if("null" != clientId)
      queryParams["client_id"] = clientId is List ? clientId.join(',') : clientId;
    if("null" != parentId)
      queryParams["parent_id"] = parentId is List ? parentId.join(',') : parentId;
    if("null" != name)
      queryParams["name"] = name is List ? name.join(',') : name;
    if("null" != variableCategoryId)
      queryParams["variable_category_id"] = variableCategoryId is List ? variableCategoryId.join(',') : variableCategoryId;
    if("null" != defaultUnitId)
      queryParams["default_unit_id"] = defaultUnitId is List ? defaultUnitId.join(',') : defaultUnitId;
    if("null" != combinationOperation)
      queryParams["combination_operation"] = combinationOperation is List ? combinationOperation.join(',') : combinationOperation;
    if("null" != fillingValue)
      queryParams["filling_value"] = fillingValue is List ? fillingValue.join(',') : fillingValue;
    if("null" != maximumAllowedValue)
      queryParams["maximum_allowed_value"] = maximumAllowedValue is List ? maximumAllowedValue.join(',') : maximumAllowedValue;
    if("null" != minimumAllowedValue)
      queryParams["minimum_allowed_value"] = minimumAllowedValue is List ? minimumAllowedValue.join(',') : minimumAllowedValue;
    if("null" != onsetDelay)
      queryParams["onset_delay"] = onsetDelay is List ? onsetDelay.join(',') : onsetDelay;
    if("null" != durationOfAction)
      queryParams["duration_of_action"] = durationOfAction is List ? durationOfAction.join(',') : durationOfAction;
    if("null" != public)
      queryParams["public"] = public is List ? public.join(',') : public;
    if("null" != causeOnly)
      queryParams["cause_only"] = causeOnly is List ? causeOnly.join(',') : causeOnly;
    if("null" != mostCommonValue)
      queryParams["most_common_value"] = mostCommonValue is List ? mostCommonValue.join(',') : mostCommonValue;
    if("null" != mostCommonUnitId)
      queryParams["most_common_unit_id"] = mostCommonUnitId is List ? mostCommonUnitId.join(',') : mostCommonUnitId;
    if("null" != standardDeviation)
      queryParams["standard_deviation"] = standardDeviation is List ? standardDeviation.join(',') : standardDeviation;
    if("null" != variance)
      queryParams["variance"] = variance is List ? variance.join(',') : variance;
    if("null" != mean)
      queryParams["mean"] = mean is List ? mean.join(',') : mean;
    if("null" != median)
      queryParams["median"] = median is List ? median.join(',') : median;
    if("null" != numberOfMeasurements)
      queryParams["number_of_measurements"] = numberOfMeasurements is List ? numberOfMeasurements.join(',') : numberOfMeasurements;
    if("null" != numberOfUniqueValues)
      queryParams["number_of_unique_values"] = numberOfUniqueValues is List ? numberOfUniqueValues.join(',') : numberOfUniqueValues;
    if("null" != skewness)
      queryParams["skewness"] = skewness is List ? skewness.join(',') : skewness;
    if("null" != kurtosis)
      queryParams["kurtosis"] = kurtosis is List ? kurtosis.join(',') : kurtosis;
    if("null" != status)
      queryParams["status"] = status is List ? status.join(',') : status;
    if("null" != errorMessage)
      queryParams["error_message"] = errorMessage is List ? errorMessage.join(',') : errorMessage;
    if("null" != lastSuccessfulUpdateTime)
      queryParams["last_successful_update_time"] = lastSuccessfulUpdateTime is List ? lastSuccessfulUpdateTime.join(',') : lastSuccessfulUpdateTime;
    if("null" != createdAt)
      queryParams["created_at"] = createdAt is List ? createdAt.join(',') : createdAt;
    if("null" != updatedAt)
      queryParams["updated_at"] = updatedAt is List ? updatedAt.join(',') : updatedAt;
    if("null" != productUrl)
      queryParams["product_url"] = productUrl is List ? productUrl.join(',') : productUrl;
    if("null" != imageUrl)
      queryParams["image_url"] = imageUrl is List ? imageUrl.join(',') : imageUrl;
    if("null" != price)
      queryParams["price"] = price is List ? price.join(',') : price;
    if("null" != numberOfUserVariables)
      queryParams["number_of_user_variables"] = numberOfUserVariables is List ? numberOfUserVariables.join(',') : numberOfUserVariables;
    if("null" != outcome)
      queryParams["outcome"] = outcome is List ? outcome.join(',') : outcome;
    if("null" != minimumRecordedValue)
      queryParams["minimum_recorded_value"] = minimumRecordedValue is List ? minimumRecordedValue.join(',') : minimumRecordedValue;
    if("null" != maximumRecordedValue)
      queryParams["maximum_recorded_value"] = maximumRecordedValue is List ? maximumRecordedValue.join(',') : maximumRecordedValue;
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
        return ApiClient.deserialize(response.body, InlineResponse20034);
      }
      else {
        return null;
      }
    });
  }
  
  /// Store Variable
  ///
  /// Allows the client to create a new variable in the `variables` table.
  Future<InlineResponse20035> variablesPost(String accessToken, Variable body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/variables".replaceAll("{format}","json");

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
        return ApiClient.deserialize(response.body, InlineResponse20035);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get Variable
  ///
  /// Get Variable
  Future<InlineResponse20035> variablesIdGet(int id, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/variables/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
        return ApiClient.deserialize(response.body, InlineResponse20035);
      }
      else {
        return null;
      }
    });
  }
  
  /// Update Variable
  ///
  /// Update Variable
  Future<InlineResponse2002> variablesIdPut(int id, String accessToken, Variable body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/variables/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  
  /// Delete Variable
  ///
  /// Delete Variable
  Future<InlineResponse2002> variablesIdDelete(int id, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/variables/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
