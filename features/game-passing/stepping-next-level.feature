# language: ru

Функционал: Переход на следующий уровень
  Если один из членов команды вводит правильный код
  То команда долджна перейти на следующий уровень игры

  Предыстория:
    Допустим сейчас "2009-01-01 00:00"
    И создана игра "Котлованы Бишкека"

    Допустим зарегистрирована команда "Mushrooms" под руководством Noel
    И капитан "Noel" зарегистрировал свою команду на участие в игре "Котлованы Бишкека"
    И в игре "Котлованы Бишкека" следующие задания:
      | Название    | Код              |
      | Общий старт | enstart          |
      | Обед        | enсопог          |
      | Финиш       | enяйцаконя       |
    И начало игры "Котлованы Бишкека" назначено на "2009-02-01 15:00"
    А сейчас "2009-02-01 15:01"
    И я логинюсь как Noel
    И захожу в игру "Котлованы Бишкека"

  Сценарий: Один из членов команды вводит правильный код
    Если я ввожу "enstart" в поле "Код"
    И нажимаю "Отправить!"
    То должен увидеть "Код 'enstart' -- верный"
    И должен увидеть "Задание #2"

  Сценарий: Вводится неправильный код
    Если я ввожу "en-всякая-бабуйня" в поле "Код"
    И нажимаю "Отправить!"
    То должен увидеть "Код неверный, вы ввели 'en-всякая-бабуйня'"
    И не должен видеть "Задание #2"

  Сценарий: Вводится код с лишними пробелами по краям
    Если я ввожу " enstart   " в поле "Код"
    И нажимаю "Отправить!"
    То должен увидеть "Код 'enstart' -- верный"
    И должен увидеть "Задание #2"