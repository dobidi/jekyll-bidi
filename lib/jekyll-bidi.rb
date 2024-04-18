# frozen_string_literal: true

require "bidify"

#
# A set of methods for adding bidirectional text support to Jekyll projects
#
# @author Mostafa Ahangarha <<ahangarha@riseup.net>>
#
module JekyllBidi
  #
  # Modify the parsed html content to support bidirectional text
  #
  # @param content [String] The html content
  #
  # @return [String] Bidified html content
  #
  def bidify(content)
    Bidify.bidify_html_string(content)
  end
end

Liquid::Template.register_filter(JekyllBidi)
