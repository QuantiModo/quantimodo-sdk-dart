part of api;


class VariableUserSourceApi {
  String basePath = "https://app.quantimo.do/api/v2";
  ApiClient apiClient = ApiClient.defaultApiClient;

  VariableUserSourceApi([ApiClient apiClient]) {
    if (apiClient != null) {
      this.apiClient = apiClient;
    }
  }

  
  /// Get all VariableUserSources
  ///
  /// Get all VariableUserSources
  Future<InlineResponse20010> variableUserSourcesGet(String accessToken, int variableId, int userId, int timestamp, int earliestMeasurementTime, int latestMeasurementTime, String createdAt, String updatedAt, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/variableUserSources".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != variableId)
      queryParams["variable_id"] = variableId is List ? variableId.join(',') : variableId;
    if("null" != userId)
      queryParams["user_id"] = userId is List ? userId.join(',') : userId;
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
        return ApiClient.deserialize(response.body, InlineResponse20010);
      }
      else {
        return null;
      }
    });
  }
  
  /// Store VariableUserSource
  ///
  /// Store VariableUserSource
  Future<InlineResponse20033> variableUserSourcesPost(String accessToken, VariableUserSource body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/variableUserSources".replaceAll("{format}","json");

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
        return ApiClient.deserialize(response.body, InlineResponse20033);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get VariableUserSource
  ///
  /// Get VariableUserSource
  Future<InlineResponse20033> variableUserSourcesIdGet(int id, int sourceId, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/variableUserSources/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != sourceId)
      queryParams["source_id"] = sourceId is List ? sourceId.join(',') : sourceId;
    
    

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
        return ApiClient.deserialize(response.body, InlineResponse20033);
      }
      else {
        return null;
      }
    });
  }
  
  /// Update VariableUserSource
  ///
  /// Update VariableUserSource
  Future<InlineResponse2002> variableUserSourcesIdPut(int id, int sourceId, String accessToken, VariableUserSource body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/variableUserSources/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != sourceId)
      queryParams["source_id"] = sourceId is List ? sourceId.join(',') : sourceId;
    
    

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
  
  /// Delete VariableUserSource
  ///
  /// Delete VariableUserSource
  Future<InlineResponse2002> variableUserSourcesIdDelete(int id, int sourceId, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/variableUserSources/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != sourceId)
      queryParams["source_id"] = sourceId is List ? sourceId.join(',') : sourceId;
    
    

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
