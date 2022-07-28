require 'paru'
require 'paru/pandoc'
require 'paru/filter'

converter = Paru::Pandoc.new do
  from "markdown"
  to "html"
  filter "./learn_filter.rb"
  filter "./learn_lti_filter.rb"
end

in_file = File.open("./test.md")

converter.convert(in_file.read)
