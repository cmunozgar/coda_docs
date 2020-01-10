class SpecEntitiesCreator
  def initialize
    @access_token = ENV['CODA_DOCS_API_KEY']
  end

  def doc
    document = VCR.use_cassette('docs/create') do
      CodaDocs::Entities::Docs.new(@access_token).create
    end
  end

  def table
    # send the static table id for now
    # since coda doesnt provide endpoint for creating table, yet.
    # So, this table is manually
    # created in the document the test creates and records in vcr
    ENV['STATIC_TABLE_ID']
  end
end
