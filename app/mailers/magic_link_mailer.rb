class MagicLinkMailer < ApplicationMailer
  def sign_in_instructions(magic_link)
    @magic_link = magic_link
    @identity = @magic_link.identity

    $stdout.puts "#{@identity.email_address}: #{@magic_link.code}"

    mail to: @identity.email_address, subject: "Your Fizzy code is #{ @magic_link.code }"
  end
end
