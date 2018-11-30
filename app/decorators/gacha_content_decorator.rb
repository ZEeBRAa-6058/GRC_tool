# frozen_string_literal: true

module GachaContentDecorator # :nodoc:
  def mark_label
    content_tag :span, t("gacha_content.mark.#{mark}")
  end
  def rarity_label
    content_tag :span, t("gacha_content.rarity.#{rarity}")
  end
  def how_many_label
    content_tag :span, t("gacha_content.how_many.#{how_many}")
  end
end