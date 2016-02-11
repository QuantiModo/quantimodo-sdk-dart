part of api;


class VariableCategoryApi {
  String basePath = "https://app.quantimo.do/api/v2";
  ApiClient apiClient = ApiClient.defaultApiClient;

  VariableCategoryApi([ApiClient apiClient]) {
    if (apiClient != null) {
      this.apiClient = apiClient;
    }
  }

  
  /// Get all VariableCategories
  ///
  /// The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
  Future<InlineResponse20031> variableCategoriesGet(String accessToken, String name, Number fillingValue, Number maximumAllowedValue, Number minimumAllowedValue, int durationOfAction, int onsetDelay, String combinationOperation, int updated, bool causeOnly, int public, bool outcome, String createdAt, String updatedAt, String imageUrl, int defaultUnitId, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/variableCategories".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != name)
      queryParams["name"] = name is List ? name.join(',') : name;
    if("null" != fillingValue)
      queryParams["filling_value"] = fillingValue is List ? fillingValue.join(',') : fillingValue;
    if("null" != maximumAllowedValue)
      queryParams["maximum_allowed_value"] = maximumAllowedValue is List ? maximumAllowedValue.join(',') : maximumAllowedValue;
    if("null" != minimumAllowedValue)
      queryParams["minimum_allowed_value"] = minimumAllowedValue is List ? minimumAllowedValue.join(',') : minimumAllowedValue;
    if("null" != durationOfAction)
      queryParams["duration_of_action"] = durationOfAction is List ? durationOfAction.join(',') : durationOfAction;
    if("null" != onsetDelay)
      queryParams["onset_delay"] = onsetDelay is List ? onsetDelay.join(',') : onsetDelay;
    if("null" != combinationOperation)
      queryParams["combination_operation"] = combinationOperation is List ? combinationOperation.join(',') : combinationOperation;
    if("null" != updated)
      queryParams["updated"] = updated is List ? updated.join(',') : updated;
    if("null" != causeOnly)
      queryParams["cause_only"] = causeOnly is List ? causeOnly.join(',') : causeOnly;
    if("null" != public)
      queryParams["public"] = public is List ? public.join(',') : public;
    if("null" != outcome)
      queryParams["outcome"] = outcome is List ? outcome.join(',') : outcome;
    if("null" != createdAt)
      queryParams["created_at"] = createdAt is List ? createdAt.join(',') : createdAt;
    if("null" != updatedAt)
      queryParams["updated_at"] = updatedAt is List ? updatedAt.join(',') : updatedAt;
    if("null" != imageUrl)
      queryParams["image_url"] = imageUrl is List ? imageUrl.join(',') : imageUrl;
    if("null" != defaultUnitId)
      queryParams["default_unit_id"] = defaultUnitId is List ? defaultUnitId.join(',') : defaultUnitId;
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
        return ApiClient.deserialize(response.body, InlineResponse20031);
      }
      else {
        return null;
      }
    });
  }
  
  /// Store VariableCategory
  ///
  /// Store VariableCategory
  Future<InlineResponse20032> variableCategoriesPost(String accessToken, VariableCategory body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/variableCategories".replaceAll("{format}","json");

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
        return ApiClient.deserialize(response.body, InlineResponse20032);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get VariableCategory
  ///
  /// Get VariableCategory
  Future<InlineResponse20032> variableCategoriesIdGet(int id, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/variableCategories/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
        return ApiClient.deserialize(response.body, InlineResponse20032);
      }
      else {
        return null;
      }
    });
  }
  
  /// Update VariableCategory
  ///
  /// Update VariableCategory
  Future<InlineResponse2002> variableCategoriesIdPut(int id, String accessToken, VariableCategory body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/variableCategories/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  
  /// Delete VariableCategory
  ///
  /// Delete VariableCategory
  Future<InlineResponse2002> variableCategoriesIdDelete(int id, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/variableCategories/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
