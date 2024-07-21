Dado("que acesso a página de cadastro") do
  @Signup_page.open
end

Quando("submeto o seguinte formulário de cadastro:") do |table|
  #table is a Cucumber::MultilineArgument::DataTable

  #log table.hashes

  user = table.hashes.first

  #log user

  MongoDB.new.remove_user(user[:email])

  @Signup_page.create(user)
end
