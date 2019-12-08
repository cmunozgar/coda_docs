module CodaDocs
  module Entities
    class Rows
      class << self
        def all
        # def all(doc_id, table_id, options = {})
          puts self
          response = CodaDocs::Connection.get("/docs/#{doc_id}/tables/#{table_id}/rows", query: options)
          response.parsed_response['items']
        end

        def find(doc_id, table_id, row_id, options = {})
          CodaDocs::Connection.get("/docs/#{doc_id}/tables/#{table_id}/rows/#{row_id}", query: options)
        end

        def delete(doc_id, table_id, row_id)
          CodaDocs::Connection.delete("/docs/#{doc_id}/tables/#{table_id}/rows/#{row_id}")
        end
      end
    end
  end
end
