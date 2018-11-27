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

      def create_doc(title = 'Untitled', source_doc = nil)
        self.class.post(
          '/docs',
          body: {
            'title' => title,
            'sourceDoc' => source_doc
          }.to_json
        )
      end
    end
  end
end
