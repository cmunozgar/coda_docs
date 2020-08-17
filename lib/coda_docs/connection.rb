module CodaDocs
  class Connection
    include HTTParty
    base_uri 'https://coda.io/apis/v1'
    format :json
  end
end
