# frozen_string_literal: true

class Theme::Specific < Theme
  enumerize :menu_variant, in: superclass.menu_variant.values + %w[border]
end
