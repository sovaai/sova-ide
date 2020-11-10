#!/usr/bin/env bash

GITHOST=${1:-https://github.com/sovaai}

set -e

echo "Установка приложения"
git clone ${GITHOST}/sova-bls-http-api.git service
echo "успешно"

echo "Установка ядра"
git clone ${GITHOST}/sova-bls-core.git service/kernel/
echo "успешно"

echo "Установка расширений"
git clone ${GITHOST}/sova-bls-ext-context.git service/external_modules/context/
git clone ${GITHOST}/sova-bls-ext-journal.git service/external_modules/journal/
git clone ${GITHOST}/sova-bls-ext-preprocessor.git service/external_modules/preprocessor/
git clone ${GITHOST}/sova-bls-ext-postprocess.git service/external_modules/postprocessor/
echo "успешно"

echo "Установка виджета"
git clone ${GITHOST}/sova-bls-test-widget.git widget
echo "успешно"

echo "Установка диалогового ядра"
git clone ${GITHOST}/sova-engine.git engine
echo "успешно"

echo "Установка Бэкенда"
git clone ${GITHOST}/sova-ide-processor.git processor
git clone ${GITHOST}/sova-ide-gateway.git gateway
echo "успешно"

echo "Установка Фронтэнда"
git clone ${GITHOST}/sova-ide-ui.git sova-ide-ui
git clone ${GITHOST}/sova-ide-server.git sova-ide-server
echo "успешно"

echo "Копирование файла с примерами переменных окружения"
cp .env.example .env
echo "успешно"
