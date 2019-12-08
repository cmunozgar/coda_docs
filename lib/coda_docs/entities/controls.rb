module CodaDocs
  module Entities
    class Controls
      class << self
        def all(doc_id, options = {})
          response = CodaDocs::Connection.get("/docs/#{doc_id}/controls", query: options)
          response.parsed_response['items']
        end

        def find(doc_id, control_id, options = {})
          CodaDocs::Connection.get("/docs/#{doc_id}/controls/#{control_id}", query: options)
        end
      end
    end
  end
end
