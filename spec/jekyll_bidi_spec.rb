# frozen_string_literal: true

RSpec.describe JekyllBidi do
  it "has a version number" do
    expect(JekyllBidi::VERSION).not_to be_nil
  end

  it "works as a jekyll filter" do
    Liquid::Template.register_filter(described_class)

    content = "<p>content</p>"
    expected = '<p dir="auto">content</p>'

    actual = Liquid::Template.parse("{{ '#{content}' | bidify }}").render
    expect(actual).to eq(expected)
  end
end
