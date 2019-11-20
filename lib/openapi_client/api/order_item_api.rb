=begin
#Catalog API

#This API gets and orders catalog items from different cloud sources.

The version of the OpenAPI document: 1.0.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.1

=end

require 'cgi'

module OpenapiClient
  class OrderItemApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete an existing OrderItem
    # Deletes the order item  based on order item ID passed
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [RestoreKey]
    def destroy_order_item(id, opts = {})
      data, _status_code, _headers = destroy_order_item_with_http_info(id, opts)
      data
    end

    # Delete an existing OrderItem
    # Deletes the order item  based on order item ID passed
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(RestoreKey, Integer, Hash)>] RestoreKey data, response status code and response headers
    def destroy_order_item_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderItemApi.destroy_order_item ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrderItemApi.destroy_order_item"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling OrderItemApi.destroy_order_item, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/order_items/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'RestoreKey' 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderItemApi#destroy_order_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of approval requests for an item
    # Gets a list of approval request associated with an order item. As the item is being approved one can check the status of the approvals.
    # @param order_item_id [String] The Order Item ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page. (default to 100)
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set. (default to 0)
    # @option opts [Object] :filter Filter for querying collections.
    # @return [ApprovalRequestsCollection]
    def list_approval_requests(order_item_id, opts = {})
      data, _status_code, _headers = list_approval_requests_with_http_info(order_item_id, opts)
      data
    end

    # Gets a list of approval requests for an item
    # Gets a list of approval request associated with an order item. As the item is being approved one can check the status of the approvals.
    # @param order_item_id [String] The Order Item ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page.
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
    # @option opts [Object] :filter Filter for querying collections.
    # @return [Array<(ApprovalRequestsCollection, Integer, Hash)>] ApprovalRequestsCollection data, response status code and response headers
    def list_approval_requests_with_http_info(order_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderItemApi.list_approval_requests ...'
      end
      # verify the required parameter 'order_item_id' is set
      if @api_client.config.client_side_validation && order_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_item_id' when calling OrderItemApi.list_approval_requests"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && order_item_id !~ pattern
        fail ArgumentError, "invalid value for 'order_item_id' when calling OrderItemApi.list_approval_requests, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrderItemApi.list_approval_requests, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrderItemApi.list_approval_requests, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling OrderItemApi.list_approval_requests, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/order_items/{order_item_id}/approval_requests'.sub('{' + 'order_item_id' + '}', CGI.escape(order_item_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ApprovalRequestsCollection' 

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
        @api_client.config.logger.debug "API called: OrderItemApi#list_approval_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Order Items
    # Gets a list of order items.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page. (default to 100)
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set. (default to 0)
    # @option opts [Object] :filter Filter for querying collections.
    # @return [OrderItemsCollection]
    def list_order_items(opts = {})
      data, _status_code, _headers = list_order_items_with_http_info(opts)
      data
    end

    # List Order Items
    # Gets a list of order items.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page.
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
    # @option opts [Object] :filter Filter for querying collections.
    # @return [Array<(OrderItemsCollection, Integer, Hash)>] OrderItemsCollection data, response status code and response headers
    def list_order_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderItemApi.list_order_items ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrderItemApi.list_order_items, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrderItemApi.list_order_items, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling OrderItemApi.list_order_items, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/order_items'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'OrderItemsCollection' 

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
        @api_client.config.logger.debug "API called: OrderItemApi#list_order_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of progress messages in an item
    # Gets a list of progress messages associated with an order item. As the item is being processed the provider can update the progress messages.
    # @param order_item_id [String] The Order Item ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page. (default to 100)
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set. (default to 0)
    # @option opts [Object] :filter Filter for querying collections.
    # @return [ProgressMessagesCollection]
    def list_progress_messages(order_item_id, opts = {})
      data, _status_code, _headers = list_progress_messages_with_http_info(order_item_id, opts)
      data
    end

    # Gets a list of progress messages in an item
    # Gets a list of progress messages associated with an order item. As the item is being processed the provider can update the progress messages.
    # @param order_item_id [String] The Order Item ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page.
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
    # @option opts [Object] :filter Filter for querying collections.
    # @return [Array<(ProgressMessagesCollection, Integer, Hash)>] ProgressMessagesCollection data, response status code and response headers
    def list_progress_messages_with_http_info(order_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderItemApi.list_progress_messages ...'
      end
      # verify the required parameter 'order_item_id' is set
      if @api_client.config.client_side_validation && order_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_item_id' when calling OrderItemApi.list_progress_messages"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && order_item_id !~ pattern
        fail ArgumentError, "invalid value for 'order_item_id' when calling OrderItemApi.list_progress_messages, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrderItemApi.list_progress_messages, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrderItemApi.list_progress_messages, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling OrderItemApi.list_progress_messages, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/order_items/{order_item_id}/progress_messages'.sub('{' + 'order_item_id' + '}', CGI.escape(order_item_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ProgressMessagesCollection' 

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
        @api_client.config.logger.debug "API called: OrderItemApi#list_progress_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Restore specific Order item
    # Restores the order item specified by the order item ID.
    # @param id [String] ID of the resource
    # @param restore_key [RestoreKey] 
    # @param [Hash] opts the optional parameters
    # @return [OrderItem]
    def restore_order_item(id, restore_key, opts = {})
      data, _status_code, _headers = restore_order_item_with_http_info(id, restore_key, opts)
      data
    end

    # Restore specific Order item
    # Restores the order item specified by the order item ID.
    # @param id [String] ID of the resource
    # @param restore_key [RestoreKey] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderItem, Integer, Hash)>] OrderItem data, response status code and response headers
    def restore_order_item_with_http_info(id, restore_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderItemApi.restore_order_item ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrderItemApi.restore_order_item"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling OrderItemApi.restore_order_item, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'restore_key' is set
      if @api_client.config.client_side_validation && restore_key.nil?
        fail ArgumentError, "Missing the required parameter 'restore_key' when calling OrderItemApi.restore_order_item"
      end
      # resource path
      local_var_path = '/order_items/{id}/restore'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(restore_key) 

      # return_type
      return_type = opts[:return_type] || 'OrderItem' 

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
        @api_client.config.logger.debug "API called: OrderItemApi#restore_order_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a specific order item
    # Gets a specific order item based on the order item ID passed
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [OrderItem]
    def show_order_item(id, opts = {})
      data, _status_code, _headers = show_order_item_with_http_info(id, opts)
      data
    end

    # Gets a specific order item
    # Gets a specific order item based on the order item ID passed
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderItem, Integer, Hash)>] OrderItem data, response status code and response headers
    def show_order_item_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderItemApi.show_order_item ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrderItemApi.show_order_item"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling OrderItemApi.show_order_item, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/order_items/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'OrderItem' 

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
        @api_client.config.logger.debug "API called: OrderItemApi#show_order_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
