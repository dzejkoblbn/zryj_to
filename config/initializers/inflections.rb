# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
  ActiveSupport::Inflector.inflections(:en) do |inflect|
    inflect.plural /^(restauracje)$/i, '\1'
    inflect.plural /^(obszary)$/i, '\1'
    inflect.plural /^(ulice)$/i, '\1'
    inflect.plural /^(pracownicy)$/i, '\1'
    inflect.plural /^(typy_pracownika)$/i, '\1'
    inflect.plural /^(zamowienia)$/i, '\1'
    inflect.plural /^(produkty_na_zamowieniu)$/i, '\1'
    inflect.plural /^(produkty)$/i, '\1'
    inflect.plural /^(klienci)$/i, '\1'
#   inflect.singular /^(zamowienia)en/i, '\1'
#   inflect.irregular 'person', 'people', 'zamowienia'
#   inflect.uncountable %w( fish sheep )
  end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
