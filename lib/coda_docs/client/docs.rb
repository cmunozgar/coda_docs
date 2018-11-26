module CodaDocs
  class Client
    module Docs
      def docs(options = {})
        response = self.class.get('/docs', query: options)
        response.parsed_response['items']
      end

      def doc(doc_id, options = {})
        self.class.get("/docs/#{doc_id}", query: options)
      end
    end
  end
end
