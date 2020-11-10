#!/usr/bin/env bash

set -e

echo "[Обновление приложения]"
cd service && git pull &&
echo "[успешно]" && echo

echo "[Обновление ядра]"
cd kernel && git pull && cd .. &&
echo "[успешно]" && echo

echo "[Обновление расширений]"
cd external_modules &&
cd context && git pull && cd .. &&
cd journal && git pull && cd .. &&
cd preprocessor && git pull && cd .. &&
cd postprocessor && git pull && cd .. &&
echo "[успешно]" && cd ../.. && echo

echo "[Обновление виджета]"
cd widget && git pull && cd .. &&
echo "[успешно]" && echo

echo "[Обновление диалогового ядра]"
cd engine && git pull && cd .. &&
echo "[успешно]" && echo

echo "[Обновление Logic бэкэнда]"
cd processor && git pull && cd .. &&
cd gateway && git pull && cd .. &&
echo "[успешно]" && echo

echo "[Обновление Logic фронтенда]"
cd sova-ide-ui && git pull && cd .. &&
cd sova-ide-server && git pull && cd .. &&
echo "[успешно]" && echo

