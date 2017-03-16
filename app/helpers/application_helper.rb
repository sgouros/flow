# encoding: utf-8
module ApplicationHelper
  include ActionView::Helpers::NumberHelper
  require "unicode_utils/upcase"

  def current_user_classification
    c = " "
    c = ' - ' + t(:administrator) if admin?
    c = ' - ' + t(:manager) if manager?
    c = ' - ' + t(:admin_and_manager) if admin? and manager?
    c
  end

  def eu(amount)
    number_to_currency(amount,:unit=>' € ', :separator => ",", :delimiter => ".", :format => "%n %u")
  end

  def i (message) #info
    output= "\e[1;32m\[I] " + message + "\e[m"
    Rails.logger.info(output)
  end

  def d (message) #debug
    output= "\e[1;36m\[I] " + message + "\e[m"
    Rails.logger.debug(output)
  end

  def e (message) #error
    output= "\e[1;31m\[I] " + message + "\e[m"
    Rails.logger.error(output)
  end

  def c_u
    cu
  end

  def dt(date)
    date.to_formatted_s(:date_with_numbers) if date
  end

  def n(str) #κάνει ένα string στα κεφαλαία αφαιρώντας όλους τους τόνους. Χρησιμοποιείται στο database search
    map = { 'ά' => 'α', 
            'έ' => 'ε', 
            'ό' => 'ο', 
            'ί' => 'ι', 
            'ύ' => 'υ', 
            'ή' => 'η', 
            'ώ' => 'ω', 
            'ϊ' => 'ι', 
            'ϋ' => 'υ', 
            'ΐ' => 'ι', 
            'ΰ' => 'υ',
            'Ά' => 'α', 
            'Έ' => 'ε', 
            'Ό' => 'ο', 
            'Ί' => 'ι', 
            'Ύ' => 'υ', 
            'Ή' => 'η', 
            'Ώ' => 'ω', 
            'Ϊ' => 'ι', 
            'Ϋ' => 'υ'  }  
    reg = Regexp.new(map.keys.map { |x| Regexp.escape(x) }.join('|'))
    UnicodeUtils.upcase(str.gsub(reg, map))
  end

  
end
