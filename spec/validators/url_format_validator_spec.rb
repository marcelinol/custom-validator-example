require 'rails_helper'

def url_validator_class
  Class.new(ValidationTester) do
    attr_accessor :site

    validates :site, url_format: true
  end
end

describe UrlFormatValidator do
  let(:site) { 'http://shipit.resultadosdigitais.com.br' }
  let(:validatable) { url_validator_class.new(site: site) }

  # ...

  context 'valid format' do
    it { expect(validatable).to be_valid }
  end

  context 'invalid format' do
    let(:site) { 'not-a-site' }
    it { expect(validatable).not_to be_valid }
  end
end
