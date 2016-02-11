part of api;


class CredentialApi {
  String basePath = "https://app.quantimo.do/api/v2";
  ApiClient apiClient = ApiClient.defaultApiClient;

  CredentialApi([ApiClient apiClient]) {
    if (apiClient != null) {
      this.apiClient = apiClient;
    }
  }

  
  /// Get all Credentials
  ///
  /// Get all Credentials
  Future<InlineResponse2004> credentialsGet(String accessToken, int userId, int connectorId, String attrKey, String attrValue, String createdAt, String updatedAt, int limit, int offset, String sort) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/credentials".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != userId)
      queryParams["user_id"] = userId is List ? userId.join(',') : userId;
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
        return ApiClient.deserialize(response.body, InlineResponse2004);
      }
      else {
        return null;
      }
    });
  }
  
  /// Store Credential
  ///
  /// Store Credential
  Future<InlineResponse20019> credentialsPost(String accessToken, Credential body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/credentials".replaceAll("{format}","json");

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
        return ApiClient.deserialize(response.body, InlineResponse20019);
      }
      else {
        return null;
      }
    });
  }
  
  /// Get Credential
  ///
  /// Get Credential
  Future<InlineResponse20019> credentialsIdGet(int id, String attrKey, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/credentials/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != attrKey)
      queryParams["attrKey"] = attrKey is List ? attrKey.join(',') : attrKey;
    
    

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
        return ApiClient.deserialize(response.body, InlineResponse20019);
      }
      else {
        return null;
      }
    });
  }
  
  /// Update Credential
  ///
  /// Update Credential
  Future<InlineResponse2002> credentialsIdPut(int id, String attrKey, String accessToken, Credential body) {
    Object postBody = body;
    

    // create path and map variables
    String path = "/credentials/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != attrKey)
      queryParams["attrKey"] = attrKey is List ? attrKey.join(',') : attrKey;
    
    

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
  
  /// Delete Credential
  ///
  /// Delete Credential
  Future<InlineResponse2002> credentialsIdDelete(int id, String attrKey, String accessToken) {
    Object postBody = null;
    

    // create path and map variables
    String path = "/credentials/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    if("null" != attrKey)
      queryParams["attrKey"] = attrKey is List ? attrKey.join(',') : attrKey;
    
    

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
