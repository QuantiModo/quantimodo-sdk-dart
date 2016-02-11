part of api;


class UnitApi {
  String basePath = "https://app.quantimo.do/api/v2";
  ApiClient apiClient = ApiClient.defaultApiClient;

  UnitApi([ApiClient apiClient]) {
    if (apiClient != null) {
      this.apiClient = apiClient;
    }
  }

  
  /// Get all available units
  ///
  /// Get all available units
  Future<InlineResponse20026> unitsGet(String accessToken, String clientId, String name, String abbreviatedName, int categoryId, Number minimumValue, Number maximumValue, int updated, int defaultUnitId, Number multiply, Number add, String createdAt, String updatedAt, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/units".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != clientId)
      queryParams["client_id"] = clientId is List ? clientId.join(',') : clientId;
    if("null" != name)
      queryParams["name"] = name is List ? name.join(',') : name;
    if("null" != abbreviatedName)
      queryParams["abbreviated_name"] = abbreviatedName is List ? abbreviatedName.join(',') : abbreviatedName;
    if("null" != categoryId)
      queryParams["category_id"] = categoryId is List ? categoryId.join(',') : categoryId;
    if("null" != minimumValue)
      queryParams["minimum_value"] = minimumValue is List ? minimumValue.join(',') : minimumValue;
    if("null" != maximumValue)
      queryParams["maximum_value"] = maximumValue is List ? maximumValue.join(',') : maximumValue;
    if("null" != updated)
      queryParams["updated"] = updated is List ? updated.join(',') : updated;
    if("null" != defaultUnitId)
      queryParams["default_unit_id"] = defaultUnitId is List ? defaultUnitId.join(',') : defaultUnitId;
    if("null" != multiply)
      queryParams["multiply"] = multiply is List ? multiply.join(',') : multiply;
    if("null" != add)
      queryParams["add"] = add is List ? add.join(',') : add;
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
        return ApiClient.deserialize(response.body, InlineResponse20026);
      }
      else {
        return null;
      }
    });
  }
  
  /// Store Unit
  ///
  /// Store Unit
  Future<InlineResponse20027> unitsPost(String accessToken, Unit body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/units".replaceAll("{format}","json");

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
        return ApiClient.deserialize(response.body, InlineResponse20027);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get Unit
  ///
  /// Get Unit
  Future<InlineResponse20027> unitsIdGet(int id, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/units/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
        return ApiClient.deserialize(response.body, InlineResponse20027);
      }
      else {
        return null;
      }
    });
  }
  
  /// Update Unit
  ///
  /// Update Unit
  Future<InlineResponse2002> unitsIdPut(int id, String accessToken, Unit body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/units/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  
  /// Delete Unit
  ///
  /// Delete Unit
  Future<InlineResponse2002> unitsIdDelete(int id, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/units/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
