require 'cgi'

module MicroCMS
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 単一コンテンツの取得
    # オブジェクト形式のAPIで指定したコンテンツIDのメタ情報を取得します。
    # @param endpoint [String] 対象のエンドポイント
    # @param content_id [String] 取得するコンテンツのID
    # @param [Hash] opts the optional parameters
    # @return [ContentMetadata]
    def api_v1_contents_endpoint_content_id_get(endpoint, content_id, opts = {})
      data, _status_code, _headers = api_v1_contents_endpoint_content_id_get_with_http_info(endpoint, content_id, opts)
      data
    end

    # 単一コンテンツの取得
    # オブジェクト形式のAPIで指定したコンテンツIDのメタ情報を取得します。
    # @param endpoint [String] 対象のエンドポイント
    # @param content_id [String] 取得するコンテンツのID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentMetadata, Integer, Hash)>] ContentMetadata data, response status code and response headers
    def api_v1_contents_endpoint_content_id_get_with_http_info(endpoint, content_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.api_v1_contents_endpoint_content_id_get ...'
      end
      # verify the required parameter 'endpoint' is set
      if @api_client.config.client_side_validation && endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'endpoint' when calling DefaultApi.api_v1_contents_endpoint_content_id_get"
      end
      # verify the required parameter 'content_id' is set
      if @api_client.config.client_side_validation && content_id.nil?
        fail ArgumentError, "Missing the required parameter 'content_id' when calling DefaultApi.api_v1_contents_endpoint_content_id_get"
      end
      # resource path
      local_var_path = '/api/v1/contents/{endpoint}/{content_id}'.sub('{' + 'endpoint' + '}', CGI.escape(endpoint.to_s)).sub('{' + 'content_id' + '}', CGI.escape(content_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ContentMetadata'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['microCMSApiKey']

      new_options = opts.merge(
        :operation => :"DefaultApi.api_v1_contents_endpoint_content_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#api_v1_contents_endpoint_content_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
