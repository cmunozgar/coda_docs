module CodaDocs
  class Client
    module Views
      def views(doc_id, options = {})
        response = self.class.get("/docs/#{doc_id}/views", query: options)
        response.parsed_response['items']
      end

      def folder(doc_id, view_id, options = {})
        self.class.get("/docs/#{doc_id}/views/#{view_id}", query: options)
      end
    end
  end
end
