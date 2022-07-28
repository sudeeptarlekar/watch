require 'paru/filter'
require 'paru/pandoc'
require 'byebug'

Paru::Filter.run do
  with "Para" do |para|
    if para.inner_markdown.lines.length == 1
      command, url, key, secret = para.inner_markdown.strip.split(" ")

      if command == "::learn::lti"
        para.markdown = "<a href='#{url}?key=#{key}&secret=#{secret}'>Video</a>"
        # para.parent.replace(
        #   para,
        #   "<a href='#{url}?key=#{key}&secret=#{secret}'>Video</a>"
        # )
      end
    end
  end
end

