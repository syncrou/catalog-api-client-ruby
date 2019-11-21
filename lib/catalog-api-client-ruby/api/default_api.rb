=begin
#Catalog API

#This API gets and orders catalog items from different cloud sources.

The version of the OpenAPI document: 1.0.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.1

=end

require 'cgi'

module CatalogApiClientRuby
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return this API document in JSON format
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_documentation(opts = {})
      get_documentation_with_http_info(opts)
      nil
    end

    # Return this API document in JSON format
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def get_documentation_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.get_documentation ...'
      end
      # resource path
      local_var_path = '/openapi.json'

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_documentation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Perform a GraphQL Query
    # Performs a GraphQL Query
    # @param graph_ql_request [GraphQLRequest] GraphQL Query Request
    # @param [Hash] opts the optional parameters
    # @return [GraphQLResponse]
    def post_graph_ql(graph_ql_request, opts = {})
      data, _status_code, _headers = post_graph_ql_with_http_info(graph_ql_request, opts)
      data
    end

    # Perform a GraphQL Query
    # Performs a GraphQL Query
    # @param graph_ql_request [GraphQLRequest] GraphQL Query Request
    # @param [Hash] opts the optional parameters
    # @return [Array<(GraphQLResponse, Integer, Hash)>] GraphQLResponse data, response status code and response headers
    def post_graph_ql_with_http_info(graph_ql_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.post_graph_ql ...'
      end
      # verify the required parameter 'graph_ql_request' is set
      if @api_client.config.client_side_validation && graph_ql_request.nil?
        fail ArgumentError, "Missing the required parameter 'graph_ql_request' when calling DefaultApi.post_graph_ql"
      end
      # resource path
      local_var_path = '/graphql'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(graph_ql_request) 

      # return_type
      return_type = opts[:return_type] || 'GraphQLResponse' 

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
        @api_client.config.logger.debug "API called: DefaultApi#post_graph_ql\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
