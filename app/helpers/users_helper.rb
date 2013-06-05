module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
	# at one point, didn't show up correctly in Firefox, may have been caching issue
  def gravatar_for(user)
		# force a default gravatar by forcing a default email
		if user and user.email
			email = user.email
		else
			# shift to one of my own at some point?
			email = "example@railstutorial.org"
		end
		gravatar_id = Digest::MD5::hexdigest(email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
