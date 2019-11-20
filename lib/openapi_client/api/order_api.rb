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
  class OrderApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add an order item to an order in pending state
    # Adds an order item to an order in pending state
    # @param order_id [String] The Order ID
    # @param order_item [OrderItem] 
    # @param [Hash] opts the optional parameters
    # @return [OrderItem]
    def add_to_order(order_id, order_item, opts = {})
      data, _status_code, _headers = add_to_order_with_http_info(order_id, order_item, opts)
      data
    end

    # Add an order item to an order in pending state
    # Adds an order item to an order in pending state
    # @param order_id [String] The Order ID
    # @param order_item [OrderItem] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderItem, Integer, Hash)>] OrderItem data, response status code and response headers
    def add_to_order_with_http_info(order_id, order_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.add_to_order ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.add_to_order"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && order_id !~ pattern
        fail ArgumentError, "invalid value for 'order_id' when calling OrderApi.add_to_order, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'order_item' is set
      if @api_client.config.client_side_validation && order_item.nil?
        fail ArgumentError, "Missing the required parameter 'order_item' when calling OrderApi.add_to_order"
      end
      # resource path
      local_var_path = '/orders/{order_id}/order_items'.sub('{' + 'order_id' + '}', CGI.escape(order_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(order_item) 

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
        @api_client.config.logger.debug "API called: OrderApi#add_to_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancels a given order
    # Returns an updated order.
    # @param order_id [String] The Order ID
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def cancel_order(order_id, opts = {})
      data, _status_code, _headers = cancel_order_with_http_info(order_id, opts)
      data
    end

    # Cancels a given order
    # Returns an updated order.
    # @param order_id [String] The Order ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Integer, Hash)>] Order data, response status code and response headers
    def cancel_order_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.cancel_order ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.cancel_order"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && order_id !~ pattern
        fail ArgumentError, "invalid value for 'order_id' when calling OrderApi.cancel_order, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/orders/{order_id}/cancel'.sub('{' + 'order_id' + '}', CGI.escape(order_id.to_s))

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
      return_type = opts[:return_type] || 'Order' 

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

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#cancel_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new order
    # Creates a new order.
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def create_order(opts = {})
      data, _status_code, _headers = create_order_with_http_info(opts)
      data
    end

    # Create a new order
    # Creates a new order.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Integer, Hash)>] Order data, response status code and response headers
    def create_order_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.create_order ...'
      end
      # resource path
      local_var_path = '/orders'

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
      return_type = opts[:return_type] || 'Order' 

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
        @api_client.config.logger.debug "API called: OrderApi#create_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing Order
    # Deletes the Order based on order ID passed
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [RestoreKey]
    def destroy_order(id, opts = {})
      data, _status_code, _headers = destroy_order_with_http_info(id, opts)
      data
    end

    # Delete an existing Order
    # Deletes the Order based on order ID passed
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(RestoreKey, Integer, Hash)>] RestoreKey data, response status code and response headers
    def destroy_order_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.destroy_order ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrderApi.destroy_order"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling OrderApi.destroy_order, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/orders/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: OrderApi#destroy_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of items in a given order
    # Gets a list of items associated with an order.
    # @param order_id [String] The Order ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page. (default to 100)
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set. (default to 0)
    # @option opts [Object] :filter Filter for querying collections.
    # @return [OrderItemsCollection]
    def list_order_items_from_order(order_id, opts = {})
      data, _status_code, _headers = list_order_items_from_order_with_http_info(order_id, opts)
      data
    end

    # Gets a list of items in a given order
    # Gets a list of items associated with an order.
    # @param order_id [String] The Order ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page.
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
    # @option opts [Object] :filter Filter for querying collections.
    # @return [Array<(OrderItemsCollection, Integer, Hash)>] OrderItemsCollection data, response status code and response headers
    def list_order_items_from_order_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.list_order_items_from_order ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.list_order_items_from_order"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && order_id !~ pattern
        fail ArgumentError, "invalid value for 'order_id' when calling OrderApi.list_order_items_from_order, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrderApi.list_order_items_from_order, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrderApi.list_order_items_from_order, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling OrderApi.list_order_items_from_order, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/orders/{order_id}/order_items'.sub('{' + 'order_id' + '}', CGI.escape(order_id.to_s))

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
        @api_client.config.logger.debug "API called: OrderApi#list_order_items_from_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of orders
    # Gets a list of orders associated with the logged in user.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page. (default to 100)
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set. (default to 0)
    # @option opts [Object] :filter Filter for querying collections.
    # @return [OrdersCollection]
    def list_orders(opts = {})
      data, _status_code, _headers = list_orders_with_http_info(opts)
      data
    end

    # Get a list of orders
    # Gets a list of orders associated with the logged in user.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page.
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
    # @option opts [Object] :filter Filter for querying collections.
    # @return [Array<(OrdersCollection, Integer, Hash)>] OrdersCollection data, response status code and response headers
    def list_orders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.list_orders ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrderApi.list_orders, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrderApi.list_orders, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling OrderApi.list_orders, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/orders'

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
      return_type = opts[:return_type] || 'OrdersCollection' 

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
        @api_client.config.logger.debug "API called: OrderApi#list_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Restore specific Order
    # Restores the order specified by the order ID.
    # @param id [String] ID of the resource
    # @param restore_key [RestoreKey] 
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def restore_order(id, restore_key, opts = {})
      data, _status_code, _headers = restore_order_with_http_info(id, restore_key, opts)
      data
    end

    # Restore specific Order
    # Restores the order specified by the order ID.
    # @param id [String] ID of the resource
    # @param restore_key [RestoreKey] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Integer, Hash)>] Order data, response status code and response headers
    def restore_order_with_http_info(id, restore_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.restore_order ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrderApi.restore_order"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling OrderApi.restore_order, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'restore_key' is set
      if @api_client.config.client_side_validation && restore_key.nil?
        fail ArgumentError, "Missing the required parameter 'restore_key' when calling OrderApi.restore_order"
      end
      # resource path
      local_var_path = '/orders/{id}/restore'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Order' 

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
        @api_client.config.logger.debug "API called: OrderApi#restore_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a specific order
    # Get a specific order based on the order ID
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def show_order(id, opts = {})
      data, _status_code, _headers = show_order_with_http_info(id, opts)
      data
    end

    # Get a specific order
    # Get a specific order based on the order ID
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Integer, Hash)>] Order data, response status code and response headers
    def show_order_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.show_order ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrderApi.show_order"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling OrderApi.show_order, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/orders/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Order' 

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
        @api_client.config.logger.debug "API called: OrderApi#show_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an individual order item from a given order
    # Gets an order item associated with an order.
    # @param order_id [String] The Order ID
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [OrderItem]
    def show_order_item_from_order(order_id, id, opts = {})
      data, _status_code, _headers = show_order_item_from_order_with_http_info(order_id, id, opts)
      data
    end

    # Gets an individual order item from a given order
    # Gets an order item associated with an order.
    # @param order_id [String] The Order ID
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderItem, Integer, Hash)>] OrderItem data, response status code and response headers
    def show_order_item_from_order_with_http_info(order_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.show_order_item_from_order ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.show_order_item_from_order"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && order_id !~ pattern
        fail ArgumentError, "invalid value for 'order_id' when calling OrderApi.show_order_item_from_order, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrderApi.show_order_item_from_order"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling OrderApi.show_order_item_from_order, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/orders/{order_id}/order_items/{id}'.sub('{' + 'order_id' + '}', CGI.escape(order_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: OrderApi#show_order_item_from_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Submit a given order
    # Returns an updated order.
    # @param order_id [String] The Order ID
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def submit_order(order_id, opts = {})
      data, _status_code, _headers = submit_order_with_http_info(order_id, opts)
      data
    end

    # Submit a given order
    # Returns an updated order.
    # @param order_id [String] The Order ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Integer, Hash)>] Order data, response status code and response headers
    def submit_order_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.submit_order ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.submit_order"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && order_id !~ pattern
        fail ArgumentError, "invalid value for 'order_id' when calling OrderApi.submit_order, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/orders/{order_id}/submit_order'.sub('{' + 'order_id' + '}', CGI.escape(order_id.to_s))

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
      return_type = opts[:return_type] || 'Order' 

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
        @api_client.config.logger.debug "API called: OrderApi#submit_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
