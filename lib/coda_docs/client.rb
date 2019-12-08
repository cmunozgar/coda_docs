require 'active_support/core_ext/string'
require 'coda_docs/connection'
Dir[File.join(__dir__, 'entities', '*.rb')].each { |f| require f }

module CodaDocs
  class Client
    def initialize(access_token = nil)
      # TODO: Implement connection to work well with entities
      # Allow users to set access_token just once for each
      # client or connection instance
      access_token ||= ENV['CODA_DOCS_API_KEY']
      CodaDocs::Connection.default_options.merge!(
        headers: {
          'Authorization' => "Bearer #{access_token}",
          'Content-Type' => 'application/json'
        }
      )
    end

    def method_missing(method_name, *args, &block)
      "CodaDocs::Entities::#{method_name.to_s.capitalize}"
        .constantize
    end
  end
end
