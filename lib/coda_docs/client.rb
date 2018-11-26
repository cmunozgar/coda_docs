require 'coda_docs/client/docs'
require 'coda_docs/client/tables'
require 'coda_docs/client/rows'
require 'coda_docs/client/columns'

module CodaDocs
  class Client
    include HTTParty
    include CodaDocs::Client::Docs
    include CodaDocs::Client::Tables
    include CodaDocs::Client::Rows
    include CodaDocs::Client::Columns
    base_uri 'https://coda.io/apis/v1beta1'
    format :json

    def initialize(access_token = nil)
      access_token ||= ENV['CODA_DOCS_API_KEY']
      self.class.default_options.merge!(headers: { 'Authorization' => "Bearer #{access_token}" })
    end
  end
end
