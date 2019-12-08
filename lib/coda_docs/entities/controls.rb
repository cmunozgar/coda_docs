module CodaDocs
  module Entities
    class Controls
      def all(doc_id, options = {})
        response = self.class.get("/docs/#{doc_id}/controls", query: options)
        response.parsed_response['items']
      end

      def find(doc_id, control_id, options = {})
        self.class.get("/docs/#{doc_id}/controls/#{control_id}", query: options)
      end
    end
  end
end
