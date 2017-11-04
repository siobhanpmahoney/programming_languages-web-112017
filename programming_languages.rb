def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang_info|
    lang_info.each do |name, type|
      style_array = []
      style_array << languages.key(languages[style])
      new_hash[name] = {type: type, style: style_array}
    end
  end
  new_hash
end
