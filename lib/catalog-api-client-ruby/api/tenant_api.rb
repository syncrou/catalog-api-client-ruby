=begin
#Catalog API

#This API gets and orders catalog items from different cloud sources.

The version of the OpenAPI document: 1.1.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.1

=end

require 'cgi'

module CatalogApiClientRuby
  class TenantApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Tenants
    # Get a list of tenants.
    # @param [Hash] opts the optional parameters
    # @return [TenantsCollection]
    def list_tenants(opts = {})
      data, _status_code, _headers = list_tenants_with_http_info(opts)
      data
    end

    # List Tenants
    # Get a list of tenants.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantsCollection, Integer, Hash)>] TenantsCollection data, response status code and response headers
    def list_tenants_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TenantApi.list_tenants ...'
      end
      # resource path
      local_var_path = '/tenants'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'TenantsCollection' 

      # auth_names
      auth_names = opts[:auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TenantApi#list_tenants\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a specific Tenant
    # Gets the tenant specified by the tenant id.
    # @param tenant_id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Tenant]
    def show_tenant(tenant_id, opts = {})
      data, _status_code, _headers = show_tenant_with_http_info(tenant_id, opts)
      data
    end

    # Get a specific Tenant
    # Gets the tenant specified by the tenant id.
    # @param tenant_id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(Tenant, Integer, Hash)>] Tenant data, response status code and response headers
    def show_tenant_with_http_info(tenant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TenantApi.show_tenant ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling TenantApi.show_tenant"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && tenant_id !~ pattern
        fail ArgumentError, "invalid value for 'tenant_id' when calling TenantApi.show_tenant, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/tenants/{tenant_id}'.sub('{' + 'tenant_id' + '}', CGI.escape(tenant_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Tenant' 

      # auth_names
      auth_names = opts[:auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TenantApi#show_tenant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Seed Tenant Groups
    # Run a task to seed the Tenant Groups required for an org admin to onboard additional users.
    # @param tenant_id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def tenant_seed(tenant_id, opts = {})
      tenant_seed_with_http_info(tenant_id, opts)
      nil
    end

    # Seed Tenant Groups
    # Run a task to seed the Tenant Groups required for an org admin to onboard additional users.
    # @param tenant_id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def tenant_seed_with_http_info(tenant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TenantApi.tenant_seed ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling TenantApi.tenant_seed"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && tenant_id !~ pattern
        fail ArgumentError, "invalid value for 'tenant_id' when calling TenantApi.tenant_seed, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/tenants/{tenant_id}/seed'.sub('{' + 'tenant_id' + '}', CGI.escape(tenant_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TenantApi#tenant_seed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
