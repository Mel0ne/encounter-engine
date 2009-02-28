Given %r{зарегистрирован пользователь (.*)$}i do |email|
  Если %{я пытаюсь зарегистрироваться как #{email}}
  То %{То я должен быть перенаправлен на /dashboard}  
  И %{должен увидеть "#{email}"}
  Допустим %{я разлогиниваюсь}
  И %{все отосланные к этому моменту письма прочитаны}
end

When %r{пытаюсь зарегистрироваться как (.*)}i do |email|
  Допустим %{я захожу по адресу /signup}
  Если %{ввожу "#{email}" в поле "Email"}
  И %{ввожу "#{@the_password}" в поле "Пароль"}
  И %{ввожу "#{@the_password}" в поле "Подтверждение"}
  И %{нажимаю "Зарегистрироваться"}
end

Then %r{могу зарегистрироваться как (.*)} do |email|
  Если %{я пытаюсь зарегистрироваться как #{email}}
  То %{должен быть перенаправлен на /dashboard}
  И %{должен увидеть "#{email}"}
end