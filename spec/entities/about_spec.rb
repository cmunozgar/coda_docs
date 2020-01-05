require "spec_helper"

RSpec.describe CodaDocs::Entities::Account do
  let(:subject) { described_class.new(ENV['CODA_DOCS_API_KEY']) }

  it 'gets user account info on coda' do
    res = VCR.use_cassette('account/whoami') { subject.whoami }

    expect(res.keys).to include("name", "loginId", "type", "href", "tokenName")
    expect(res['name']).not_to be nil
    expect(res['tokenName']).not_to be nil
  end
end
