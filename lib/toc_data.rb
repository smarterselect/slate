require 'nokogiri'

def toc_data(page_content)
  html_doc = Nokogiri::HTML::DocumentFragment.parse(page_content)

  # get a flat list of headers
  headers = []
  html_doc.css('h1, h2, h3').each do |header|
    splited_title = header.children.to_s.split(' ')
    headers.push({
      id: header.attribute('id').to_s,
      content: header.children,
      title: header.children.to_s.gsub(/<[^>]*>/, ''),
      level: header.name[1].to_i,
      method: splited_title.first,
      is_endpoint: ["GET", "POST", "PUT", "PATCH", "DELETE"].include?(splited_title.first),
      content_without_prefix: splited_title.drop(1).join(' '),
      children: []
    })
  end

  [3,2].each do |header_level|
    header_to_nest = nil
    headers = headers.reject do |header|
      if header[:level] == header_level
        header_to_nest[:children].push header if header_to_nest
        true
      else
        header_to_nest = header if header[:level] < header_level
        false
      end
    end
  end
  headers
end
