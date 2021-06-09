## 1. Введение

Этот документ и репозиторий помогают быстро начать работу с инструментом SonarQube Community Edition в среде Windows.

## 2. Установка и запуск

Установите JRE версии 11 или выше.

Скачайте [архив с приложением для windows](https://www.sonarqube.org/downloads/) и распакуйте приложение, например, в `c:\sq\`

Запустите сервер командой

`C:\sq\bin\windows-x86-64\StartSonar.bat`

Убедиться в успешности запуска сервера можно, перейдя по адресу

- https://localhost:9000/

## 3. Измените пароль администратора

Перейдите по адресу http://localhost:9000/ в браузере и измените пароль (при необходимости). Все скрипты в этом репозитории настроены на пароль по умолчанию.

## 4. Создайте новый проект в SQ

Вы можете сделать это вручную в браузере, либо автоматически, при помощи скрипта `make-project.cmd`. Скрипт создает проект под именем `prj`. Все скрипты в этом репозиории работают с проектом под именем `prj`.

## 5. Восстановите правила

Запустите `restore-rules.cmd`. Скрипт восстанавливает набор правил `GPN SVC way`, правомерный для проверки всего входящего кода.

## 6. Привяжите правила к проекту

Выполните скрипт `bind-rules.cmd`. Он выполняет привязку набора правил `GPN SVC way` к проекту `prj`

## 7. Запуск сканера

### 7.1 Запуск сканера для языка Java

Установите JDK.

#### 7.1.1 Сборка при помощи Ant

Установите Apache Ant (http://ant.apache.org/). Рекомендутеся установить системную переменную `ANT_HOME`, а также добавить в `PATH` путь `%ANT_HOME%\bin`.

Скачайте задачу `sonar` для `ant` (https://binaries.sonarsource.com/Distribution/sonarqube-ant-task/sonarqube-ant-task-2.7.1.1951.jar), расположите файл в папке `src/java/lib`. Измените имя файла на `sonarqube-ant-task.jar`.

Запустите скрипт

- `run-scanner-java-ant.cmd`


### 7.2 Запуск сканера для языка C#

Установите .NET 5.0 SDK (например, https://dotnet.microsoft.com/download/dotnet)

Установите `dotnet-sonarscanner`:

- `dotnet tool install --global dotnet-sonarscanner`

Запустите скрипт `run-scanner-dotnet.cmd`

### 7.3 Запуск сканера для языка C++

Использование анализатора SonarQube для языка C++ требует редакции **developer edition** как минимум. Поэтому в текущем примере такой запуск не рассматривается.

### 7.4 Запуск сканера для языков: python, typescript, javascript, golang

Установите nodejs (https://nodejs.org/en/download/).

Скачайте архив (https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/) и распакуйте его, например, в `c:\sq_scaner\`. Добавьте в `PATH` путь `c:\sq_scaner\bin`.

Выполните скрипт `run-scanner.cmd`.
