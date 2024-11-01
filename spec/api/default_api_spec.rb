=begin
#MicroCMS API

#MicroCMSのコンテンツを取得するAPIです。リスト形式のAPIではコンテンツ一覧、オブジェクト形式のAPIでは単一コンテンツを取得できます。

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for MicroCMS::DefaultApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DefaultApi' do
  before do
    # run before each test
    @api_instance = MicroCMS::DefaultApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DefaultApi' do
    it 'should create an instance of DefaultApi' do
      expect(@api_instance).to be_instance_of(MicroCMS::DefaultApi)
    end
  end

  # unit tests for api_v1_contents_endpoint_content_id_get
  # 単一コンテンツの取得
  # オブジェクト形式のAPIで指定したコンテンツIDのメタ情報を取得します。
  # @param endpoint 対象のエンドポイント
  # @param content_id 取得するコンテンツのID
  # @param [Hash] opts the optional parameters
  # @return [ContentMetadata]
  describe 'api_v1_contents_endpoint_content_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
