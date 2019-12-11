module CodaDocs
  module Entities
    class Controls < Entity
      def all(doc_id, options = {})
        response = connection.get("/docs/#{doc_id}/controls", query: options)
        response.parsed_response['items']
      end

      def find(doc_id, control_id, options = {})
        connection.get("/docs/#{doc_id}/controls/#{control_id}", query: options)
      end
    end
  end
end
