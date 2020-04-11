# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact

    mail to: 'example@gmail.com', subject: 'お問い合わせの確認メール'
  end
end
