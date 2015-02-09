Refinery::Page.class_eval do

  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => :russian #[:russian, :latin]
  end
end