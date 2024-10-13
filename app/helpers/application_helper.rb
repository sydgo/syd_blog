module ApplicationHelper
  def avatar_for(user, options = { size: 80})
    email_address = user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    size = options[:size]
    avatar_url = "https://robohash.org/#{hash}.png?bgset=any&size=#{size}x#{size}"

    image_tag(avatar_url, alt: user.username, class: "rounded-circle shadow mx-auto d-block")
  end

end
