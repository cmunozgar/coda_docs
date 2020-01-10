require "spec_helper"

RSpec.describe CodaDocs::Client do
  subject { described_class.new }

  it 'has an access token' do
    expect(subject.send(:access_token)).not_to be nil
  end

  it 'has an entity for permitted coda entities' do
    entity = "#{coda_entities.sample}"
    klass = "CodaDocs::Entities::#{entity.capitalize}".constantize
    expect(subject.send(entity)).to be_a klass
  end

  it 'raises an error for an undefined entity' do
    entity = "undefined_entity"
    expect { subject.send(entity) }.to raise_error NameError
  end

  # helper method(s)

  def coda_entities
    [
      'account',
      'columns',
      'controls',
      'docs',
      'folders',
      'formulas',
      'miscellaneous',
      'rows',
      'sections',
      'tables'
    ]
  end
end
