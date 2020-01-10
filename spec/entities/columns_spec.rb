require "spec_helper"

RSpec.describe CodaDocs::Entities::Columns do
  let(:subject) { described_class.new(ENV['CODA_DOCS_API_KEY']) }
  let(:creator) { SpecEntitiesCreator.new }
  let(:doc_id) { creator.doc['id'] }
  # table returns an id for now. See SpecEntitiesCreator for more
  let(:table_id) { creator.table }

  before do
    @columns = VCR.use_cassette('columns/all') {
      subject.all(doc_id: doc_id, table_id: table_id)
    }
  end

  it 'get all columns in a document tables' do
    expect(@columns.first['type']).to eq 'column'
    expect(@columns).to be_an Array
  end

  it 'get all columns in a document tables' do
    column_id = @columns.first['id']
    res = VCR.use_cassette('columns/find') {
      subject.find(doc_id: doc_id, table_id: table_id, column_id: column_id)
    }

    expect(res.keys).to include('name', 'parent', 'type', 'href', 'display')
    expect(res['type']).to eq 'column'
    expect(res['parent']['type']).to eq 'table'
  end
end