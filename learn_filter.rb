require 'paru/filter'
require 'paru/pandoc'
# 
# def html_convert(string)
#   Paru::Pandoc.new do
#     from 'markdown'
#     to 'html'
#   end << string
# end

def learn_lti(url, key, secret, contents)
  Paru::PandocFilter::RawBlock.new([
    'html',
    "<a href='#{url}?key=#{key}&secret=#{secret}'></a>"
  ])
end

Paru::Filter.run do
  with 'Div.learn_lti' do |div|
    content = div.inner_markdown
    launch_url = div.attr['launch_url']
    key = div.attr['key']
    secret = div.attr['secret']
    div.parent.replace(div, learn_lti(launch_url, key, secret, content))
  end
end
