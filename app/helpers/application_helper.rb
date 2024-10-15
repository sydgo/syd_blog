module ApplicationHelper
  def avatar_for(user, options = { size: 80 })
    email_address = user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    size = options[:size]
    avatar_url = "https://robohash.org/#{hash}.png?bgset=any&size=#{size}x#{size}"

    fallback_avatar_url = asset_path('1000_F_444656182_ByXJUFSBtKVUwWOv1ZyZm2rms7bGVP9i.jpg')

    image_tag(avatar_url, alt: user.username, class: "rounded-circle shadow mx-auto d-block",
              onerror: "this.onerror=null; this.src='#{fallback_avatar_url}'; this.width=#{size};")
  end

end
