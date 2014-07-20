# -*- coding: utf-8 -*-
module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Зоосалон Айвенго"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  # Returns link for navbar
  # usage: nav_link 'Home', root_path
  # returns: <li class="current"><a href="/">Home</a></li>
  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : nil

    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

end
