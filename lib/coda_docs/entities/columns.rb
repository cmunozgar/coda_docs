module CodaDocs
  module Entities
    class Columns
      class << self
        def all(doc_id, table_id, options = {})
          response = CodaDocs::Connection.get("/docs/#{doc_id}/tables/#{table_id}/columns", query: options)
          response.parsed_response['items']
        end

        def find(doc_id, table_id, column_id, options = {})
          CodaDocs::Connection.get("/docs/#{doc_id}/tables/#{table_id}/columns/#{column_id}", query: options)
        end
      end
    end
  end
end
