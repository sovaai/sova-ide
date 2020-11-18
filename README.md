# SOVA IDE

SOVA IDE is designed for preparing scripts and rules for generating responses written in the specialized Dialog Language (DL)

## Quick start

To run the SOVA IDE in standard mode, you must perform the following actions:

Uploading the necessary sources:
```bash
git clone https://github.com/sovaai/sova-ide.git
cd sova-ide
./install.sh
```

Building Docker images:
```bash
docker-compose build
```

Launching containers:
```bash
docker-compose up -d
```
After that, you need to wait until all the services are started and the databases are created.

The IDE interface will be available on http://localhost:3000, web widget for tests on http://localhost.

Creating a default chatbot for a web widget:
```bash
./scripts/command.sh bot:create --profile test
```
Instead of `test`, specify the bot profile created in the IDE

## Import templates to the created profile
To import templates from a file to the created profile, use the following command:
```bash
./scripts/import_templates.sh test file
```
Where `test` is the name of the profile created in the IDE, and `file` is the path to the template file.

## Import dictionaries to the created profile
To import dictionaries from files to the created profile, use the following command:
```bash
./scripts/import_dicts.sh test dicts
```
Where `test` is the name of the profile created in the IDE, and `dicts` is the path to the directory with dictionaries.
