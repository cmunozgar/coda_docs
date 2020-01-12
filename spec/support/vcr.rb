require 'vcr'

DOCS_URL = 'https://coda.io/apis/v1beta1/docs'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!

  c.filter_sensitive_data('<BEARER_TOKEN>') do |interaction|
    auth = interaction.request.headers['Authorization'].first
    auth if auth =~ /^Bearer\s+([^,\s]+)/
  end
end
