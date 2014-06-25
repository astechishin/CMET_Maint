RSpec::Matchers.define :fail_with_null do |attribute|
  match do |actual|
    string_attribute = attribute.to_s
    attr_list = actual.make.attributes
    attr_list.delete(string_attribute)
    !actual.new(attr_list).valid?
  end
  failure_message_for_should do |actual|
    "#{actual.name} should not be valid without #{attribute.to_s}"
  end
end

RSpec::Matchers.define :pass_with_null do |attribute|
  match do |actual|
    string_attribute = attribute.to_s
    attr_list = actual.make.attributes
    attr_list.delete(string_attribute)
    actual.new(attr_list).valid?
  end
  failure_message_for_should do |actual|
    "#{actual.name} should be valid without #{attribute.to_s}"
  end
end

RSpec::Matchers.define :fail_with_non_numeric do |attribute|
  match do |actual|
    string_attribute = attribute.to_s
    attr_list = actual.make.attributes
    attr_list.delete(string_attribute)
    attr_list[string_attribute] = 'x'
    !actual.new(attr_list).valid?
  end
  failure_message_for_should do |actual|
    "#{actual.name} should not be valid without #{attribute.to_s}"
  end
end

RSpec::Matchers.define :fail_with_string_beyond_limit do |attribute, max_length|
  match do |actual|
    string_attribute = attribute.to_s
    attr_list = actual.make.attributes
    attr_list.store(string_attribute, Faker::Lorem.characters(max_length + 1))
    attr_list[string_attribute] = 'x'
    !actual.new(attr_list).valid?
  end
  failure_message_for_should do |actual|
    "#{actual.name} should not be valid without #{attribute.to_s}"
  end
end
