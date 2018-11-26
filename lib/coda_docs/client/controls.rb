module CodaDocs
  class Client
    module Controls
      def controls(doc_id, options = {})
        response = self.class.get("/docs/#{doc_id}/controls", query: options)
        response.parsed_response['items']
      end

      def formula(doc_id, control_id, options = {})
        self.class.get("/docs/#{doc_id}/controls/#{control_id}", query: options)
      end
    end
  end
end
