require 'active_support/core_ext/string'
Dir[File.join(__dir__, 'entities', '*.rb')].each { |f| require f }

module CodaDocs
  class Client
    include HTTParty
    base_uri 'https://coda.io/apis/v1beta1'
    format :json

    def initialize(access_token = nil)
      access_token ||= ENV['CODA_DOCS_API_KEY']
      self.class.default_options.merge!(
        headers: {
          'Authorization' => "Bearer #{access_token}",
          'Content-Type' => 'application/json'
        }
      )
    end

    def method_missing(method_name, *args, &block)
      "CodaDocs::Entities::#{method_name.to_s.capitalize}"
        .constantize.new
    end
  end
end
