# CatalogApiClientRuby::IconApi

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_icon**](IconApi.md#create_icon) | **POST** /icons | Create an Icon
[**destroy_icon**](IconApi.md#destroy_icon) | **DELETE** /icons/{id} | Delete an existing Icon
[**get_icon**](IconApi.md#get_icon) | **GET** /icons/{id} | Fetch an Icon by ID
[**show_icon_data**](IconApi.md#show_icon_data) | **GET** /icons/{id}/icon_data | Fetches the specified icon&#39;s image
[**update_icon**](IconApi.md#update_icon) | **PATCH** /icons/{id} | Edit an existing Icon



## create_icon

> Icon create_icon(opts)

Create an Icon

Creates an Icon from the specified parameters

### Example

```ruby
# load the gem
require 'catalog-api-client-ruby'
# setup authorization
CatalogApiClientRuby.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClientRuby::IconApi.new
opts = {
  content: File.new('/path/to/file'), # File | The binary image contents
  portfolio_id: 'portfolio_id_example', # String | The Portfolio this Icon belongs to
  portfolio_item_id: 'portfolio_item_id_example' # String | The Portfolio Item this Icon belongs to
}

begin
  #Create an Icon
  result = api_instance.create_icon(opts)
  p result
rescue CatalogApiClientRuby::ApiError => e
  puts "Exception when calling IconApi->create_icon: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content** | **File**| The binary image contents | [optional] 
 **portfolio_id** | **String**| The Portfolio this Icon belongs to | [optional] 
 **portfolio_item_id** | **String**| The Portfolio Item this Icon belongs to | [optional] 

### Return type

[**Icon**](Icon.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## destroy_icon

> destroy_icon(id)

Delete an existing Icon

Deletes the icon based on the icon ID passed

### Example

```ruby
# load the gem
require 'catalog-api-client-ruby'
# setup authorization
CatalogApiClientRuby.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClientRuby::IconApi.new
id = 'id_example' # String | ID of the resource

begin
  #Delete an existing Icon
  api_instance.destroy_icon(id)
rescue CatalogApiClientRuby::ApiError => e
  puts "Exception when calling IconApi->destroy_icon: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_icon

> Icon get_icon(id)

Fetch an Icon by ID

Fetch an Icon by ID

### Example

```ruby
# load the gem
require 'catalog-api-client-ruby'
# setup authorization
CatalogApiClientRuby.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClientRuby::IconApi.new
id = 'id_example' # String | ID of the resource

begin
  #Fetch an Icon by ID
  result = api_instance.get_icon(id)
  p result
rescue CatalogApiClientRuby::ApiError => e
  puts "Exception when calling IconApi->get_icon: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

[**Icon**](Icon.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_icon_data

> show_icon_data(id)

Fetches the specified icon's image

Fetch the specified portfolio item's icon image.

### Example

```ruby
# load the gem
require 'catalog-api-client-ruby'
# setup authorization
CatalogApiClientRuby.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClientRuby::IconApi.new
id = 'id_example' # String | ID of the resource

begin
  #Fetches the specified icon's image
  api_instance.show_icon_data(id)
rescue CatalogApiClientRuby::ApiError => e
  puts "Exception when calling IconApi->show_icon_data: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/svg+xml


## update_icon

> Icon update_icon(id, icon)

Edit an existing Icon

Edits Icon specified by the given ID.

### Example

```ruby
# load the gem
require 'catalog-api-client-ruby'
# setup authorization
CatalogApiClientRuby.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClientRuby::IconApi.new
id = 'id_example' # String | ID of the resource
icon = CatalogApiClientRuby::Icon.new # Icon | Parameters needed to update an Icon

begin
  #Edit an existing Icon
  result = api_instance.update_icon(id, icon)
  p result
rescue CatalogApiClientRuby::ApiError => e
  puts "Exception when calling IconApi->update_icon: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 
 **icon** | [**Icon**](Icon.md)| Parameters needed to update an Icon | 

### Return type

[**Icon**](Icon.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

