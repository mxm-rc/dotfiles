def french_phone_number?(phone_number)
  # TODO: true or false?
  phone_number.match?(/(\+33 |0)[1-9][0-9]{8}|(\+33 |0)[1-9].\d{2}.\d{2}.\d{2}.\d{2}/)
end
