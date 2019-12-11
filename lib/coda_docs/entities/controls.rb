module CodaDocs
  module Entities
    class Controls < Entity
      def all(doc_id)
        response = connection.get("/docs/#{doc_id}/controls")
        response.parsed_response['items']
      end

      def find(doc_id:, control_id:)
        connection.get("/docs/#{doc_id}/controls/#{control_id}")
      end
    end
  end
end
