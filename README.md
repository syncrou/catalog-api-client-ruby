# catalog-api-client-ruby

CatalogApiClientRuby - the Ruby gem for the Catalog API

This API gets and orders catalog items from different cloud sources.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.1.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build catalog-api-client-ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./catalog-api-client-ruby-1.0.0.gem
```

(for development, run `gem install --dev ./catalog-api-client-ruby-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'catalog-api-client-ruby', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'catalog-api-client-ruby', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'catalog-api-client-ruby'

# Setup authorization
CatalogApiClientRuby.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'
end

api_instance = CatalogApiClientRuby::DefaultApi.new

begin
  #Return this API document in JSON format
  result = api_instance.get_documentation
  p result
rescue CatalogApiClientRuby::ApiError => e
  puts "Exception when calling DefaultApi->get_documentation: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CatalogApiClientRuby::DefaultApi* | [**get_documentation**](docs/DefaultApi.md#get_documentation) | **GET** /openapi.json | Return this API document in JSON format
*CatalogApiClientRuby::DefaultApi* | [**post_graph_ql**](docs/DefaultApi.md#post_graph_ql) | **POST** /graphql | Perform a GraphQL Query
*CatalogApiClientRuby::IconApi* | [**create_icon**](docs/IconApi.md#create_icon) | **POST** /icons | Create an Icon
*CatalogApiClientRuby::IconApi* | [**destroy_icon**](docs/IconApi.md#destroy_icon) | **DELETE** /icons/{id} | Delete an existing Icon
*CatalogApiClientRuby::IconApi* | [**update_icon**](docs/IconApi.md#update_icon) | **PATCH** /icons/{id} | Edit an existing Icon
*CatalogApiClientRuby::OrderApi* | [**add_to_order**](docs/OrderApi.md#add_to_order) | **POST** /orders/{order_id}/order_items | Add an order item to an order in pending state
*CatalogApiClientRuby::OrderApi* | [**cancel_order**](docs/OrderApi.md#cancel_order) | **PATCH** /orders/{order_id}/cancel | Cancels a given order
*CatalogApiClientRuby::OrderApi* | [**create_order**](docs/OrderApi.md#create_order) | **POST** /orders | Create a new order
*CatalogApiClientRuby::OrderApi* | [**destroy_order**](docs/OrderApi.md#destroy_order) | **DELETE** /orders/{id} | Delete an existing Order
*CatalogApiClientRuby::OrderApi* | [**list_order_items_from_order**](docs/OrderApi.md#list_order_items_from_order) | **GET** /orders/{order_id}/order_items | Gets a list of items in a given order
*CatalogApiClientRuby::OrderApi* | [**list_orders**](docs/OrderApi.md#list_orders) | **GET** /orders | Get a list of orders
*CatalogApiClientRuby::OrderApi* | [**restore_order**](docs/OrderApi.md#restore_order) | **POST** /orders/{id}/restore | Restore specific Order
*CatalogApiClientRuby::OrderApi* | [**show_order**](docs/OrderApi.md#show_order) | **GET** /orders/{id} | Get a specific order
*CatalogApiClientRuby::OrderApi* | [**show_order_item_from_order**](docs/OrderApi.md#show_order_item_from_order) | **GET** /orders/{order_id}/order_items/{id} | Gets an individual order item from a given order
*CatalogApiClientRuby::OrderApi* | [**submit_order**](docs/OrderApi.md#submit_order) | **POST** /orders/{order_id}/submit_order | Submit a given order
*CatalogApiClientRuby::OrderItemApi* | [**destroy_order_item**](docs/OrderItemApi.md#destroy_order_item) | **DELETE** /order_items/{id} | Delete an existing OrderItem
*CatalogApiClientRuby::OrderItemApi* | [**list_approval_requests**](docs/OrderItemApi.md#list_approval_requests) | **GET** /order_items/{order_item_id}/approval_requests | Gets a list of approval requests for an item
*CatalogApiClientRuby::OrderItemApi* | [**list_order_items**](docs/OrderItemApi.md#list_order_items) | **GET** /order_items | List Order Items
*CatalogApiClientRuby::OrderItemApi* | [**list_progress_messages**](docs/OrderItemApi.md#list_progress_messages) | **GET** /order_items/{order_item_id}/progress_messages | Gets a list of progress messages in an item
*CatalogApiClientRuby::OrderItemApi* | [**restore_order_item**](docs/OrderItemApi.md#restore_order_item) | **POST** /order_items/{id}/restore | Restore specific Order item
*CatalogApiClientRuby::OrderItemApi* | [**show_order_item**](docs/OrderItemApi.md#show_order_item) | **GET** /order_items/{id} | Gets a specific order item
*CatalogApiClientRuby::PortfolioApi* | [**add_portfolio_tag**](docs/PortfolioApi.md#add_portfolio_tag) | **POST** /portfolios/{id}/tag | Add Tag for Portfolio
*CatalogApiClientRuby::PortfolioApi* | [**create_portfolio**](docs/PortfolioApi.md#create_portfolio) | **POST** /portfolios | Add a new portfolio
*CatalogApiClientRuby::PortfolioApi* | [**destroy_portfolio**](docs/PortfolioApi.md#destroy_portfolio) | **DELETE** /portfolios/{id} | Delete an existing portfolio
*CatalogApiClientRuby::PortfolioApi* | [**fetch_portfolio_items_with_portfolio**](docs/PortfolioApi.md#fetch_portfolio_items_with_portfolio) | **GET** /portfolios/{portfolio_id}/portfolio_items | Get all portfolio items from a specific portfolio
*CatalogApiClientRuby::PortfolioApi* | [**list_portfolio_tags**](docs/PortfolioApi.md#list_portfolio_tags) | **GET** /portfolios/{id}/tags | List Tags for Portfolio
*CatalogApiClientRuby::PortfolioApi* | [**list_portfolios**](docs/PortfolioApi.md#list_portfolios) | **GET** /portfolios | List portfolios
*CatalogApiClientRuby::PortfolioApi* | [**post_copy_portfolio**](docs/PortfolioApi.md#post_copy_portfolio) | **POST** /portfolios/{portfolio_id}/copy | Make a copy of the Portfolio
*CatalogApiClientRuby::PortfolioApi* | [**remove_portfolio_tags**](docs/PortfolioApi.md#remove_portfolio_tags) | **POST** /portfolios/{id}/untag | Remove Tags from Portfolio
*CatalogApiClientRuby::PortfolioApi* | [**share_info**](docs/PortfolioApi.md#share_info) | **GET** /portfolios/{portfolio_id}/share_info | Fetch share information about this portfolio, the response would include a collection of groups and permissions with each group
*CatalogApiClientRuby::PortfolioApi* | [**share_portfolio**](docs/PortfolioApi.md#share_portfolio) | **POST** /portfolios/{portfolio_id}/share | Share a portfolio with one or more groups with specific permission
*CatalogApiClientRuby::PortfolioApi* | [**show_portfolio**](docs/PortfolioApi.md#show_portfolio) | **GET** /portfolios/{id} | Get a specific portfolio
*CatalogApiClientRuby::PortfolioApi* | [**show_portfolio_icon**](docs/PortfolioApi.md#show_portfolio_icon) | **GET** /portfolios/{portfolio_id}/icon | Fetches the specified portfolio's icon image
*CatalogApiClientRuby::PortfolioApi* | [**un_delete_portfolio**](docs/PortfolioApi.md#un_delete_portfolio) | **POST** /portfolios/{id}/undelete | Undelete specific portfolio
*CatalogApiClientRuby::PortfolioApi* | [**unshare_portfolio**](docs/PortfolioApi.md#unshare_portfolio) | **POST** /portfolios/{portfolio_id}/unshare | Unshare a portfolio from one or more groups with specific permission
*CatalogApiClientRuby::PortfolioApi* | [**update_portfolio**](docs/PortfolioApi.md#update_portfolio) | **PATCH** /portfolios/{id} | Edit an existing portfolio
*CatalogApiClientRuby::PortfolioItemApi* | [**add_portfolio_item_tag**](docs/PortfolioItemApi.md#add_portfolio_item_tag) | **POST** /portfolio_items/{id}/tag | Add Tag for Portfolio Item
*CatalogApiClientRuby::PortfolioItemApi* | [**create_portfolio_item**](docs/PortfolioItemApi.md#create_portfolio_item) | **POST** /portfolio_items | Add a new portfolio item
*CatalogApiClientRuby::PortfolioItemApi* | [**destroy_portfolio_item**](docs/PortfolioItemApi.md#destroy_portfolio_item) | **DELETE** /portfolio_items/{id} | Delete an existing portfolio item
*CatalogApiClientRuby::PortfolioItemApi* | [**get_portfolio_item_next_name**](docs/PortfolioItemApi.md#get_portfolio_item_next_name) | **GET** /portfolio_items/{portfolio_item_id}/next_name | Get the next name for a the Portfolio Item prior to a copy operation
*CatalogApiClientRuby::PortfolioItemApi* | [**list_portfolio_item_tags**](docs/PortfolioItemApi.md#list_portfolio_item_tags) | **GET** /portfolio_items/{id}/tags | List Tags for Portfolio Items
*CatalogApiClientRuby::PortfolioItemApi* | [**list_portfolio_items**](docs/PortfolioItemApi.md#list_portfolio_items) | **GET** /portfolio_items | List all portfolio items
*CatalogApiClientRuby::PortfolioItemApi* | [**list_provider_control_parameters**](docs/PortfolioItemApi.md#list_provider_control_parameters) | **GET** /portfolio_items/{portfolio_item_id}/provider_control_parameters | Gets the provider control parameters for this portfolio item; requires control paramaters provided when provisioning the portfolio item.
*CatalogApiClientRuby::PortfolioItemApi* | [**list_service_plans**](docs/PortfolioItemApi.md#list_service_plans) | **GET** /portfolio_items/{portfolio_item_id}/service_plans | Gets all service plans for a specific portfolio item; requires a connection to the topology service.
*CatalogApiClientRuby::PortfolioItemApi* | [**post_copy_portfolio_item**](docs/PortfolioItemApi.md#post_copy_portfolio_item) | **POST** /portfolio_items/{portfolio_item_id}/copy | Make a copy of the Portfolio Item
*CatalogApiClientRuby::PortfolioItemApi* | [**remove_portfolio_item_tags**](docs/PortfolioItemApi.md#remove_portfolio_item_tags) | **POST** /portfolio_items/{id}/untag | Remove Tags from Portfolio Item
*CatalogApiClientRuby::PortfolioItemApi* | [**show_portfolio_item**](docs/PortfolioItemApi.md#show_portfolio_item) | **GET** /portfolio_items/{id} | Gets a specific portfolio item
*CatalogApiClientRuby::PortfolioItemApi* | [**show_portfolio_item_icon**](docs/PortfolioItemApi.md#show_portfolio_item_icon) | **GET** /portfolio_items/{portfolio_item_id}/icon | Fetches the specified portfolio item's icon image
*CatalogApiClientRuby::PortfolioItemApi* | [**un_delete_portfolio_item**](docs/PortfolioItemApi.md#un_delete_portfolio_item) | **POST** /portfolio_items/{portfolio_item_id}/undelete | Undelete a specified Portfolio Item
*CatalogApiClientRuby::PortfolioItemApi* | [**update_portfolio_item**](docs/PortfolioItemApi.md#update_portfolio_item) | **PATCH** /portfolio_items/{id} | Edit an existing portfolio item
*CatalogApiClientRuby::ServicePlansApi* | [**create_service_plan**](docs/ServicePlansApi.md#create_service_plan) | **POST** /service_plans | Create Service Plan
*CatalogApiClientRuby::ServicePlansApi* | [**patch_service_plan_modified**](docs/ServicePlansApi.md#patch_service_plan_modified) | **PATCH** /service_plans/{id}/modified | Patch Service Plan Modified Schema
*CatalogApiClientRuby::ServicePlansApi* | [**reset_service_plan_modified**](docs/ServicePlansApi.md#reset_service_plan_modified) | **POST** /service_plans/{id}/reset | Reset Service Plan Modified schema
*CatalogApiClientRuby::ServicePlansApi* | [**show_service_plan**](docs/ServicePlansApi.md#show_service_plan) | **GET** /service_plans/{id} | Show Service Plan
*CatalogApiClientRuby::ServicePlansApi* | [**show_service_plan_base**](docs/ServicePlansApi.md#show_service_plan_base) | **GET** /service_plans/{id}/base | Show Service Plan Base Schema
*CatalogApiClientRuby::ServicePlansApi* | [**show_service_plan_modified**](docs/ServicePlansApi.md#show_service_plan_modified) | **GET** /service_plans/{id}/modified | Show Service Plan modified Schema
*CatalogApiClientRuby::SettingsApi* | [**create_setting**](docs/SettingsApi.md#create_setting) | **POST** /settings | Create Tenant Setting
*CatalogApiClientRuby::SettingsApi* | [**destroy_setting**](docs/SettingsApi.md#destroy_setting) | **DELETE** /settings/{name} | Delete a Tenant Setting
*CatalogApiClientRuby::SettingsApi* | [**list_settings**](docs/SettingsApi.md#list_settings) | **GET** /settings | List Tenant Settings
*CatalogApiClientRuby::SettingsApi* | [**show_setting**](docs/SettingsApi.md#show_setting) | **GET** /settings/{name} | Get a specific Tenant Setting
*CatalogApiClientRuby::SettingsApi* | [**update_setting**](docs/SettingsApi.md#update_setting) | **PATCH** /settings/{name} | Update a Tenant Setting
*CatalogApiClientRuby::TagsApi* | [**list_tags**](docs/TagsApi.md#list_tags) | **GET** /tags | List Tags
*CatalogApiClientRuby::TenantApi* | [**list_tenants**](docs/TenantApi.md#list_tenants) | **GET** /tenants | List Tenants
*CatalogApiClientRuby::TenantApi* | [**show_tenant**](docs/TenantApi.md#show_tenant) | **GET** /tenants/{tenant_id} | Get a specific Tenant
*CatalogApiClientRuby::TenantApi* | [**tenant_seed**](docs/TenantApi.md#tenant_seed) | **POST** /tenants/{tenant_id}/seed | Seed Tenant Groups


## Documentation for Models

 - [CatalogApiClientRuby::ApprovalRequest](docs/ApprovalRequest.md)
 - [CatalogApiClientRuby::ApprovalRequestsCollection](docs/ApprovalRequestsCollection.md)
 - [CatalogApiClientRuby::CollectionLinks](docs/CollectionLinks.md)
 - [CatalogApiClientRuby::CollectionMetadata](docs/CollectionMetadata.md)
 - [CatalogApiClientRuby::CopyPortfolioItem](docs/CopyPortfolioItem.md)
 - [CatalogApiClientRuby::CreateIcon](docs/CreateIcon.md)
 - [CatalogApiClientRuby::CreatePortfolioItem](docs/CreatePortfolioItem.md)
 - [CatalogApiClientRuby::GraphQLRequest](docs/GraphQLRequest.md)
 - [CatalogApiClientRuby::GraphQLResponse](docs/GraphQLResponse.md)
 - [CatalogApiClientRuby::Icon](docs/Icon.md)
 - [CatalogApiClientRuby::ImportServicePlan](docs/ImportServicePlan.md)
 - [CatalogApiClientRuby::Order](docs/Order.md)
 - [CatalogApiClientRuby::OrderItem](docs/OrderItem.md)
 - [CatalogApiClientRuby::OrderItemsCollection](docs/OrderItemsCollection.md)
 - [CatalogApiClientRuby::OrdersCollection](docs/OrdersCollection.md)
 - [CatalogApiClientRuby::PatchModifiedServicePlan](docs/PatchModifiedServicePlan.md)
 - [CatalogApiClientRuby::Portfolio](docs/Portfolio.md)
 - [CatalogApiClientRuby::PortfolioItem](docs/PortfolioItem.md)
 - [CatalogApiClientRuby::PortfolioItemNextName](docs/PortfolioItemNextName.md)
 - [CatalogApiClientRuby::PortfolioItemsCollection](docs/PortfolioItemsCollection.md)
 - [CatalogApiClientRuby::PortfoliosCollection](docs/PortfoliosCollection.md)
 - [CatalogApiClientRuby::ProgressMessage](docs/ProgressMessage.md)
 - [CatalogApiClientRuby::ProgressMessagesCollection](docs/ProgressMessagesCollection.md)
 - [CatalogApiClientRuby::RestoreKey](docs/RestoreKey.md)
 - [CatalogApiClientRuby::ServicePlan](docs/ServicePlan.md)
 - [CatalogApiClientRuby::Setting](docs/Setting.md)
 - [CatalogApiClientRuby::ShareInfo](docs/ShareInfo.md)
 - [CatalogApiClientRuby::SharePolicy](docs/SharePolicy.md)
 - [CatalogApiClientRuby::Tag](docs/Tag.md)
 - [CatalogApiClientRuby::TagsCollection](docs/TagsCollection.md)
 - [CatalogApiClientRuby::Tenant](docs/Tenant.md)
 - [CatalogApiClientRuby::TenantSettings](docs/TenantSettings.md)
 - [CatalogApiClientRuby::TenantsCollection](docs/TenantsCollection.md)
 - [CatalogApiClientRuby::UnsharePolicy](docs/UnsharePolicy.md)


## Documentation for Authorization


### BasicAuth

- **Type**: HTTP basic authentication

