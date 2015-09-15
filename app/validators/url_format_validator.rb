class UrlFormatValidator < ActiveModel::EachValidator
  URL_FORMAT = /^(https?:\/\/)?[-a-z0-9]+(\.[-a-z0-9]+){1,10}\/?$/

  def validate_each(record, attribute, value)
    unless value && value.match(URL_FORMAT)
      record.errors[attribute] << "Formato de site inválido"
    end
  end
end
