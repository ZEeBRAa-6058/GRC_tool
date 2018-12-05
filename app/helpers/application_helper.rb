# frozen_string_literal: true

module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == 'asc' ? 'desc' : 'asc'
    link_to title, { sort: column, direction: direction }, class: css_class
  end

  def enum_select_options(klass, enum)
    hash = klass.send(enum.to_s.pluralize)
    hash.map { |k, _v| [t("#{klass.model_name.singular}.#{enum}.#{k}"), k] }
  end
end
