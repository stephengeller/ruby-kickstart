# This challenge is based off of problem 1
# modify it such that it also accepts in the hash, a color (whose values are red("#FF0000"), green("#00FF00"), and blue(#0000FF) )
# if the color is set, then it should show up in the style
# It should also not be necessary to pass in the hash, if you don't want to specify options
#
#
# EXAMPLE:
#
# html = HTMLTag.new 'p', 'Hello World', :multiline => false, :color => :red
# html.to_s     # => <p style="color:#FF0000">Hello World</p>
#
# sports = [
#   HTMLTag.new('li', 'baseball', :multiline => false, :color => :red,   :font => :serif) ,
#   HTMLTag.new('li', 'soccer',   :multiline => false, :color => :green, :font => :sans_serif) ,
#   HTMLTag.new('li', 'football', :multiline => false, :color => :blue,  :font => :monospace) ,
# ]
#
# ordered_list = HTMLTag.new 'ol' , sports.join , :multiline => true
#
# puts ordered_list  # => (as output)
#                      <ol >
#                      <li style='color:#FF0000;font-family:"Times New Roman", "Georgia"'>baseball</li>
#                      <li style='color:#00FF00;font-family:"Arial", "Verdana"'>soccer</li>
#                      <li style='color:#0000FF;font-family:"Courier New", "Lucida Console"'>football</li>
#                      </ol>

class HTMLTag
  FONTS = {
      :serif      => '"Times New Roman", "Georgia"',            # Types of font used in the serif, sans serif and monospace symbols
      :sans_serif => '"Arial", "Verdana"',
      :monospace  => '"Courier New", "Lucida Console"' ,
  }

  COLORS = {
      :red   => '#FF0000',                                      # Three types of colors
      :green => '#00FF00',
      :blue  => '#0000FF',
  }

  attr_accessor :name, :innerHTML, :font, :color, :multiline    # Provides getter and setter methods for these

  # options: :multiline should be true or false
  def initialize(name, innerHTML, options=Hash.new)             # Requires the name and innerHTML tag, then provides open list of options to be set in the hash, but doesn't need them
    @name, @innerHTML = name, innerHTML
    self.font      = FONTS[options[:font]]                      # If ':font' is present in the options, it sets the font to that (ie :font => :serif)
    self.color     = COLORS[options[:color]]                    # Same for ':color' (American spellings...)
    self.multiline = options.fetch :multiline, false            # Defaults multiline to false, but can be set to true if included when initializing?
  end

  def style
    return nil unless font || color                             # Don't return anything unless either font or colour is included in the instance of the class
    to_return = "style='"                                       # Beginning of string
    to_return << "font-family:#{font};" if font                 # Add to string, if font exists
    to_return << "color:#{color};"      if color                # Add to string, if colo[u]r exists
    to_return << "'"                                            # Close string
    to_return                                                   # Return string
  end

  def to_s
    line_end = ""                                               # Start string
    line_end = "\n" if multiline # remember, if options[:multiline] doesn't exist, it will return nil, and nil is false
    "<#{name} #{style}>#{line_end}"   \                         # Writing the name, style and innerHTML in an HTML format
      "#{innerHTML.chomp}#{line_end}" \
    "</#{name}>\n"
  end
end

