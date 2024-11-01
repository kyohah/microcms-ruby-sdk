require 'cgi'

module MicroCMS
  class ManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # コンテンツの作成者の変更
    # PATCH APIを使用して、指定したコンテンツの作成者を変更します。 
    # @param endpoint [String] 対象のエンドポイント
    # @param content_id [String] 更新対象のコンテンツID
    # @param api_v1_contents_endpoint_content_id_created_by_patch_request [ApiV1ContentsEndpointContentIdCreatedByPatchRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApiV1ContentsEndpointContentIdCreatedByPatch200Response]
    def api_v1_contents_endpoint_content_id_created_by_patch(endpoint, content_id, api_v1_contents_endpoint_content_id_created_by_patch_request, opts = {})
      data, _status_code, _headers = api_v1_contents_endpoint_content_id_created_by_patch_with_http_info(endpoint, content_id, api_v1_contents_endpoint_content_id_created_by_patch_request, opts)
      data
    end

    # コンテンツの作成者の変更
    # PATCH APIを使用して、指定したコンテンツの作成者を変更します。 
    # @param endpoint [String] 対象のエンドポイント
    # @param content_id [String] 更新対象のコンテンツID
    # @param api_v1_contents_endpoint_content_id_created_by_patch_request [ApiV1ContentsEndpointContentIdCreatedByPatchRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiV1ContentsEndpointContentIdCreatedByPatch200Response, Integer, Hash)>] ApiV1ContentsEndpointContentIdCreatedByPatch200Response data, response status code and response headers
    def api_v1_contents_endpoint_content_id_created_by_patch_with_http_info(endpoint, content_id, api_v1_contents_endpoint_content_id_created_by_patch_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementApi.api_v1_contents_endpoint_content_id_created_by_patch ...'
      end
      # verify the required parameter 'endpoint' is set
      if @api_client.config.client_side_validation && endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'endpoint' when calling ManagementApi.api_v1_contents_endpoint_content_id_created_by_patch"
      end
      # verify the required parameter 'content_id' is set
      if @api_client.config.client_side_validation && content_id.nil?
        fail ArgumentError, "Missing the required parameter 'content_id' when calling ManagementApi.api_v1_contents_endpoint_content_id_created_by_patch"
      end
      # verify the required parameter 'api_v1_contents_endpoint_content_id_created_by_patch_request' is set
      if @api_client.config.client_side_validation && api_v1_contents_endpoint_content_id_created_by_patch_request.nil?
        fail ArgumentError, "Missing the required parameter 'api_v1_contents_endpoint_content_id_created_by_patch_request' when calling ManagementApi.api_v1_contents_endpoint_content_id_created_by_patch"
      end
      # resource path
      local_var_path = '/api/v1/contents/{endpoint}/{content_id}/createdBy'.sub('{' + 'endpoint' + '}', CGI.escape(endpoint.to_s)).sub('{' + 'content_id' + '}', CGI.escape(content_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(api_v1_contents_endpoint_content_id_created_by_patch_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApiV1ContentsEndpointContentIdCreatedByPatch200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['microCMSApiKey']

      new_options = opts.merge(
        :operation => :"ManagementApi.api_v1_contents_endpoint_content_id_created_by_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementApi#api_v1_contents_endpoint_content_id_created_by_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # コンテンツの公開状態の変更
    # PATCH APIを使用して、コンテンツの公開状態（公開中または下書き中）を変更します。 
    # @param endpoint [String] 対象のエンドポイント
    # @param content_id [String] 更新対象のコンテンツID
    # @param api_v1_contents_endpoint_content_id_patch_request [ApiV1ContentsEndpointContentIdPatchRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApiV1ContentsEndpointContentIdPatch200Response]
    def api_v1_contents_endpoint_content_id_patch(endpoint, content_id, api_v1_contents_endpoint_content_id_patch_request, opts = {})
      data, _status_code, _headers = api_v1_contents_endpoint_content_id_patch_with_http_info(endpoint, content_id, api_v1_contents_endpoint_content_id_patch_request, opts)
      data
    end

    # コンテンツの公開状態の変更
    # PATCH APIを使用して、コンテンツの公開状態（公開中または下書き中）を変更します。 
    # @param endpoint [String] 対象のエンドポイント
    # @param content_id [String] 更新対象のコンテンツID
    # @param api_v1_contents_endpoint_content_id_patch_request [ApiV1ContentsEndpointContentIdPatchRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiV1ContentsEndpointContentIdPatch200Response, Integer, Hash)>] ApiV1ContentsEndpointContentIdPatch200Response data, response status code and response headers
    def api_v1_contents_endpoint_content_id_patch_with_http_info(endpoint, content_id, api_v1_contents_endpoint_content_id_patch_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementApi.api_v1_contents_endpoint_content_id_patch ...'
      end
      # verify the required parameter 'endpoint' is set
      if @api_client.config.client_side_validation && endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'endpoint' when calling ManagementApi.api_v1_contents_endpoint_content_id_patch"
      end
      # verify the required parameter 'content_id' is set
      if @api_client.config.client_side_validation && content_id.nil?
        fail ArgumentError, "Missing the required parameter 'content_id' when calling ManagementApi.api_v1_contents_endpoint_content_id_patch"
      end
      # verify the required parameter 'api_v1_contents_endpoint_content_id_patch_request' is set
      if @api_client.config.client_side_validation && api_v1_contents_endpoint_content_id_patch_request.nil?
        fail ArgumentError, "Missing the required parameter 'api_v1_contents_endpoint_content_id_patch_request' when calling ManagementApi.api_v1_contents_endpoint_content_id_patch"
      end
      # resource path
      local_var_path = '/api/v1/contents/{endpoint}/{content_id}'.sub('{' + 'endpoint' + '}', CGI.escape(endpoint.to_s)).sub('{' + 'content_id' + '}', CGI.escape(content_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(api_v1_contents_endpoint_content_id_patch_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApiV1ContentsEndpointContentIdPatch200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['microCMSApiKey']

      new_options = opts.merge(
        :operation => :"ManagementApi.api_v1_contents_endpoint_content_id_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementApi#api_v1_contents_endpoint_content_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # コンテンツ一覧の取得
    # リスト形式のAPIにおいてはコンテンツのメタ情報一覧が取得でき、オブジェクト形式のAPIにおいては単一コンテンツのメタ情報が取得ができます。 
    # @param endpoint [String] 対象のエンドポイント
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 取得件数の指定 (default to 10)
    # @option opts [Integer] :offset コンテンツの取得開始位置を指定します。 (default to 0)
    # @return [ApiV1ContentsEndpointGet200Response]
    def api_v1_contents_endpoint_get(endpoint, opts = {})
      data, _status_code, _headers = api_v1_contents_endpoint_get_with_http_info(endpoint, opts)
      data
    end

    # コンテンツ一覧の取得
    # リスト形式のAPIにおいてはコンテンツのメタ情報一覧が取得でき、オブジェクト形式のAPIにおいては単一コンテンツのメタ情報が取得ができます。 
    # @param endpoint [String] 対象のエンドポイント
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 取得件数の指定 (default to 10)
    # @option opts [Integer] :offset コンテンツの取得開始位置を指定します。 (default to 0)
    # @return [Array<(ApiV1ContentsEndpointGet200Response, Integer, Hash)>] ApiV1ContentsEndpointGet200Response data, response status code and response headers
    def api_v1_contents_endpoint_get_with_http_info(endpoint, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementApi.api_v1_contents_endpoint_get ...'
      end
      # verify the required parameter 'endpoint' is set
      if @api_client.config.client_side_validation && endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'endpoint' when calling ManagementApi.api_v1_contents_endpoint_get"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ManagementApi.api_v1_contents_endpoint_get, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/api/v1/contents/{endpoint}'.sub('{' + 'endpoint' + '}', CGI.escape(endpoint.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiV1ContentsEndpointGet200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['microCMSApiKey']

      new_options = opts.merge(
        :operation => :"ManagementApi.api_v1_contents_endpoint_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementApi#api_v1_contents_endpoint_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # メディアの削除
    # MicroCMSサービスに含まれる指定URLのメディアを削除します。 
    # @param url [String] 削除対象のメディアのURLを指定します（カスタムドメインでも指定可能）。
    # @param [Hash] opts the optional parameters
    # @return [ApiV2MediaDelete200Response]
    def api_v2_media_delete(url, opts = {})
      data, _status_code, _headers = api_v2_media_delete_with_http_info(url, opts)
      data
    end

    # メディアの削除
    # MicroCMSサービスに含まれる指定URLのメディアを削除します。 
    # @param url [String] 削除対象のメディアのURLを指定します（カスタムドメインでも指定可能）。
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiV2MediaDelete200Response, Integer, Hash)>] ApiV2MediaDelete200Response data, response status code and response headers
    def api_v2_media_delete_with_http_info(url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementApi.api_v2_media_delete ...'
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling ManagementApi.api_v2_media_delete"
      end
      # resource path
      local_var_path = '/api/v2/media'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'url'] = url

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiV2MediaDelete200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['microCMSApiKey']

      new_options = opts.merge(
        :operation => :"ManagementApi.api_v2_media_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementApi#api_v2_media_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # メディア情報の取得
    # MicroCMSサービスに含まれるメディア情報を取得します。 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 取得するメディア情報の件数（デフォルトは10、上限は100）。 (default to 10)
    # @option opts [Boolean] :image_only trueの場合、画像のみを取得します（デフォルトはfalse）。  (default to false)
    # @option opts [String] :file_name 部分一致するファイル名でメディアを絞り込みます。
    # @option opts [String] :token 前回のリクエストで取得したtokenを指定すると続きから取得できます。
    # @return [ApiV2MediaGet200Response]
    def api_v2_media_get(opts = {})
      data, _status_code, _headers = api_v2_media_get_with_http_info(opts)
      data
    end

    # メディア情報の取得
    # MicroCMSサービスに含まれるメディア情報を取得します。 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 取得するメディア情報の件数（デフォルトは10、上限は100）。 (default to 10)
    # @option opts [Boolean] :image_only trueの場合、画像のみを取得します（デフォルトはfalse）。  (default to false)
    # @option opts [String] :file_name 部分一致するファイル名でメディアを絞り込みます。
    # @option opts [String] :token 前回のリクエストで取得したtokenを指定すると続きから取得できます。
    # @return [Array<(ApiV2MediaGet200Response, Integer, Hash)>] ApiV2MediaGet200Response data, response status code and response headers
    def api_v2_media_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementApi.api_v2_media_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ManagementApi.api_v2_media_get, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ManagementApi.api_v2_media_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/v2/media'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'imageOnly'] = opts[:'image_only'] if !opts[:'image_only'].nil?
      query_params[:'fileName'] = opts[:'file_name'] if !opts[:'file_name'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiV2MediaGet200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['microCMSApiKey']

      new_options = opts.merge(
        :operation => :"ManagementApi.api_v2_media_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementApi#api_v2_media_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
