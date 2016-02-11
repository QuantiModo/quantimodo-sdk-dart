part of api;


class MeasurementApi {
  String basePath = "https://app.quantimo.do/api/v2";
  ApiClient apiClient = ApiClient.defaultApiClient;

  MeasurementApi([ApiClient apiClient]) {
    if (apiClient != null) {
      this.apiClient = apiClient;
    }
  }

  
  /// Get measurements for this user
  ///
  /// Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten.
  Future<InlineResponse2005> measurementsGet(String accessToken, int userId, String clientId, int connectorId, int variableId, int sourceId, String startTime, Number value, int unitId, Number originalValue, int originalUnitId, int duration, String note, Number latitude, Number longitude, String location, String createdAt, String updatedAt, String error, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/measurements".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != userId)
      queryParams["user_id"] = userId is List ? userId.join(',') : userId;
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
        return ApiClient.deserialize(response.body, InlineResponse2005);
      }
      else {
        return null;
      }
    });
  }
  
  /// Post a new set or update existing measurements to the database
  ///
  /// You can submit or update multiple measurements in a measurements sub-array.  If the variable these measurements correspond to does not already exist in the database, it will be automatically added.
  Future<InlineResponse2005> measurementsPost(String accessToken, MeasurementPost body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/measurements".replaceAll("{format}","json");

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
        return ApiClient.deserialize(response.body, InlineResponse2005);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get Measurements CSV
  ///
  /// Download a CSV containing all user measurements
  Future<MultipartFile> measurementsCsvGet(String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/measurements/csv".replaceAll("{format}","json");

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
        return ApiClient.deserialize(response.body, File);
      }
      else {
        return null;
      }
    });
  }
  
  /// Post Request for Measurements CSV
  ///
  /// Use this endpoint to schedule a CSV export containing all user measurements to be emailed to the user within 24 hours.
  Future<int> measurementsRequestCsvPost(String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/measurements/request_csv".replaceAll("{format}","json");

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
        return ApiClient.deserialize(response.body, int);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get Measurement
  ///
  /// Get Measurement
  Future<InlineResponse20020> measurementsIdGet(int id, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/measurements/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
        return ApiClient.deserialize(response.body, InlineResponse20020);
      }
      else {
        return null;
      }
    });
  }
  
  /// Update Measurement
  ///
  /// Update Measurement
  Future<InlineResponse2002> measurementsIdPut(int id, String accessToken, Measurement body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/measurements/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  
  /// Delete Measurement
  ///
  /// Delete Measurement
  Future<InlineResponse2002> measurementsIdDelete(int id, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/measurements/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
