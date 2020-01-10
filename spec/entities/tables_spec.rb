require "spec_helper"

RSpec.describe CodaDocs::Entities::Tables do
  let(:subject) { described_class.new(ENV['CODA_DOCS_API_KEY']) }
  let(:creator) { SpecEntitiesCreator.new }
  let(:doc_id) { creator.doc['id'] }
  # table returns an id for now. See SpecEntitiesCreator for more
  let(:table_id) { creator.table }

  it 'get all tables in a document' do
    response = VCR.use_cassette('tables/all') {
      subject.all(doc_id)
    }

    res = response.first

    expect(res.keys).to include('name', 'type', 'href', 'id')
    expect(res['name']).not_to be nil
    expect(res['type']).to eq "table"
    expect(response).to be_an Array
  end

  it 'finds a table in a document' do
    res = VCR.use_cassette('tables/find') {
      subject.find(doc_id: doc_id, table_id: table_id)
    }

    expect(res.keys).to include('name', 'type', 'href', 'id')
    expect(res['name']).not_to be nil
    expect(res['type']).to eq "table"
  end
end
