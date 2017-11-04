  def reformat_languages(languages)
    new_hash = {}
    languages.each do |style, lang_info|
      lang_info.each do |name, type|
        if !new_hash.keys.include?(name)
          new_hash[name] = {type: type[:type], style: []}
        end
        new_hash[name][:style] << style
      end
    end
    new_hash
  end
