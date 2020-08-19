module CodaDocs
  module Entities
    class Controls < Entity
      def all(doc_id, options = nil)
        response = connection.get("/docs/#{doc_id}/controls", query: options)
        parse_response(response)
      end

      def find(doc_id:, control_id:)
        connection.get("/docs/#{doc_id}/controls/#{control_id}")
      end
    end
  end
end
