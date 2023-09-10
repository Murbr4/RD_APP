
# Pré-requisitos:
    - Android Studio 2021+: https://developer.android.com/studio
    - Python 3.8+: https://www.python.org/downloads/
    - Appium 1.22+: https://appium.io/
    - Appium-Inspector 2022.+: https://github.com/appium/appium-inspector/releases
    - Robot Framework 5+ (instalado no passo 3): https://robotframework.org/#getting-started

# Instalação:
    - 1 - Instale os pré-requisitos mencionados acima exceto o Robot Framework

    - 2 - Criar e ativar um ambiente virtual do Python:

    - $ python -m venv .venv
    - $ source .venv/bin/activate
    - Instalar Robot Framework e lib do appium:

    - $ pip install --upgrade pip
    - $ pip install Appium-Python-Client
    - $ pip install robotframework
    - $ robot --version
    - $ pip install --upgrade robotframework-appiumlibrary
    - Robot Framework 6.1 (Python 3.10.6 on linux)

# Configuração do Emulador:
    - Instale e configure o Android Studio
    - Abra o Android Studio e crie um Dispositivo Virtual: "Pixel 4 API 33"
    - Rode o emulador do dispositivo criado
    - Instale o "app-debug.apk" da pasta "apk" arrastando-o para o emulador
    - Abra o app "Login"

# Executando os testes com Robot
- Ajuste as configurações de conexão do Appium no arquivo, caso necessário

## Execute o Appium em um cmd:
    - $ appium
    - Abra o emulador
    - Abra outro terminal e execute o teste:
    - $ robot -d logs testes/*
    - Os relatórios são salvos na pasta "logs"