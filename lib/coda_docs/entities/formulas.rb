module CodaDocs
  module Entities
    class Formulas
      def all(doc_id, options = {})
        response = self.class.get("/docs/#{doc_id}/formulas", query: options)
        response.parsed_response['items']
      end

      def find(doc_id, formula_id, options = {})
        self.class.get("/docs/#{doc_id}/formulas/#{formula_id}", query: options)
      end
    end
  end
end
