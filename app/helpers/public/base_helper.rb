# encoding: utf-8
module Public::BaseHelper

  def display_flash_message

    return if flash.empty?
    alerts = flash.inject('') do |content, (key, message)|
      next unless [:success, :danger].include?(key)

      alert = content_tag :div, :class => "alert alert-#{key} fade-alert" do
        content_tag(:p, message) unless message.blank?
      end.html_safe
      content << alert.html_safe
    end
    alerts.html_safe if alerts
  end

end
