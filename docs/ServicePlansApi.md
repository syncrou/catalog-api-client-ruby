# OpenapiClient::ServicePlansApi

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_service_plan**](ServicePlansApi.md#create_service_plan) | **POST** /service_plans | Create Service Plan
[**patch_service_plan_modified**](ServicePlansApi.md#patch_service_plan_modified) | **PATCH** /service_plans/{id}/modified | Patch Service Plan Modified Schema
[**show_service_plan**](ServicePlansApi.md#show_service_plan) | **GET** /service_plans/{id} | Show Service Plan
[**show_service_plan_base**](ServicePlansApi.md#show_service_plan_base) | **GET** /service_plans/{id}/base | Show Service Plan Base Schema
[**show_service_plan_modified**](ServicePlansApi.md#show_service_plan_modified) | **GET** /service_plans/{id}/modified | Show Service Plan modified Schema



## create_service_plan

> Array&lt;ServicePlan&gt; create_service_plan(opts)

Create Service Plan

Returns the new Service Plan

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::ServicePlansApi.new
opts = {
  import_service_plan: OpenapiClient::ImportServicePlan.new # ImportServicePlan | 
}

begin
  #Create Service Plan
  result = api_instance.create_service_plan(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ServicePlansApi->create_service_plan: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_service_plan** | [**ImportServicePlan**](ImportServicePlan.md)|  | [optional] 

### Return type

[**Array&lt;ServicePlan&gt;**](ServicePlan.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_service_plan_modified

> DataDrivenFormSchema patch_service_plan_modified(id, opts)

Patch Service Plan Modified Schema

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::ServicePlansApi.new
id = 'id_example' # String | ID of the resource
opts = {
  patch_modified_service_plan: OpenapiClient::PatchModifiedServicePlan.new # PatchModifiedServicePlan | 
}

begin
  #Patch Service Plan Modified Schema
  result = api_instance.patch_service_plan_modified(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ServicePlansApi->patch_service_plan_modified: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 
 **patch_modified_service_plan** | [**PatchModifiedServicePlan**](PatchModifiedServicePlan.md)|  | [optional] 

### Return type

[**DataDrivenFormSchema**](DataDrivenFormSchema.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_service_plan

> ServicePlan show_service_plan(id)

Show Service Plan

Returns the specified Service Plan

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::ServicePlansApi.new
id = 'id_example' # String | ID of the resource

begin
  #Show Service Plan
  result = api_instance.show_service_plan(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ServicePlansApi->show_service_plan: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

[**ServicePlan**](ServicePlan.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_service_plan_base

> DataDrivenFormSchema show_service_plan_base(id)

Show Service Plan Base Schema

Returns the specified Service Plan's base schema

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::ServicePlansApi.new
id = 'id_example' # String | ID of the resource

begin
  #Show Service Plan Base Schema
  result = api_instance.show_service_plan_base(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ServicePlansApi->show_service_plan_base: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

[**DataDrivenFormSchema**](DataDrivenFormSchema.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_service_plan_modified

> DataDrivenFormSchema show_service_plan_modified(id)

Show Service Plan modified Schema

Returns the specified Service Plan's modified schema

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::ServicePlansApi.new
id = 'id_example' # String | ID of the resource

begin
  #Show Service Plan modified Schema
  result = api_instance.show_service_plan_modified(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ServicePlansApi->show_service_plan_modified: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

[**DataDrivenFormSchema**](DataDrivenFormSchema.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

