module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
	# not showing correctly in Firefox (see only alt text) but seems ok in Chrome -- continue!
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
