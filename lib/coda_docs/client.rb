require 'active_support/core_ext/string'
require 'coda_docs/connection'
require 'coda_docs/entities/entity'
Dir[File.join(__dir__, 'entities', '*.rb')].each { |f| require f }

module CodaDocs
  class Client
    def initialize(access_token = nil)
      @access_token = access_token || ENV['CODA_DOCS_API_KEY']
    end

    def method_missing(method_name, *args, &block)
      klass = "CodaDocs::Entities::#{method_name.to_s.capitalize}"
                .constantize
      if klass
        klass.new(access_token)
      end
    end

    private

    attr_reader :access_token
  end
end
