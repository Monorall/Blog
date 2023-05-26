# Указываем базовый образ
FROM ruby:3.1.2

# Устанавливаем зависимости
RUN apt-get update -qq && apt-get install -y nodejs

# Устанавливаем директорию приложения в контейнере
WORKDIR /app

# Копируем Gemfile и Gemfile.lock в контейнер
COPY Gemfile Gemfile.lock ./

# Устанавливаем гемы приложения
RUN bundle install

# Копируем остальные файлы приложения в контейнер
COPY . .

# Запускаем приложение
CMD ["rails", "server", "-b", "0.0.0.0"]