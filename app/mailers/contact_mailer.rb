class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact

    mail to: "自分のメールアドレス", subject: "お問い合わせの確認メール"
  end
end
