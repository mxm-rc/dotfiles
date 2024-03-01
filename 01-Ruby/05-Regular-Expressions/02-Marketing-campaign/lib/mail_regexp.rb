def valid?(email)
  # TODO: return true if the email is valid, false otherwise
  email.match?(/\w+@\w+\.\w+/)
end

def clean_database(emails)
  # TODO: return an array with the valid emails only
  emails.select { |i| valid?(i) }
end

def group_by_tld(emails)
  # TODO: return a Hash with emails grouped by TLD
  clean_database(emails).group_by { |email| email.match(/\w+\z/).to_s }
end

def compose_mail(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  {
    username: email.match(/^\w+/).to_s,
    domain: email.match(/@(\w+)/)[1].to_s,
    tld: email.match(/\w+\z/).to_s
  }
end

LOCALES =
  {
    'de' =>
    {
      :body => "Komm und besuche uns!",
      :closing => "Bis bald",
      :domain => "berlin",
      :signature => "Das Team",
      :subject => "Unsere Website ist jetzt online"
    },
    'fr' =>
    {
      :body => "Venez nous rendre visite !",
      :closing => "A bientot",
      :signature => "L'équipe",
      :subject => "Notre site est en ligne"
    },
    'com' =>
  {
    :body => "Come and visit us!",
    :closing => "See you soon",
    :signature => "The Team",
    :subject => "Our website is online"
  }
  }

def compose_translated_email(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  # TODO: translate subject, body, closing and signature, according to TLD
  if compose_mail(email)[:tld] == "fr"
    compose_mail(email).merge(LOCALES['fr'])
  elsif compose_mail(email)[:tld] == "de"
    compose_mail(email).merge(LOCALES['de'])
  else
    compose_mail(email).merge(LOCALES['com'])
  end
end
