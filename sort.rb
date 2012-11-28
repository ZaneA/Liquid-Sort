class SortTag < Liquid::Tag

  def initialize(tag_name, text, tokens)
    super

    @attributes = {}

    text.scan(Liquid::TagAttributes) do |key, value|
      @attributes[key] = value
    end

    @var = @attributes['var']
    @key = @attributes['by']
    #@direction = @attributes['direction']
  end

  def render(context)
    context[@var].sort! { |a, b| a[@key] <=> b[@key] }

    if @attributes['direction'] == 'up'
      context[@var].reverse!
    end

    nil
  end

end

Liquid::Template.register_tag('sort', SortTag)
