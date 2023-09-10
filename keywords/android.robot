# Configurações Android

*** Settings ***
Library         AppiumLibrary
Library    BuiltIn




*** Variables ***
${REMOTE_URL}   http://192.168.58.2:4723
${platformName}   Android
${appium:platformVersion}   14
${appium:deviceName}    Pixel 4 API 34
${appium:automationName}    UiAutomator2
${appium:appPackage}    com.example.vamsi.login
${appium:appActivity}   com.example.vamsi.login.MainActivity 
${appium:newCommandTimeout}   3600

${USUARIO_VALIDO}     usuario_valido
${USUARIO_INVALIDO}   usuario_invalido
${EMAIL_VALIDO}       email-valido@teste.com
${EMAIL_INVALIDO}     email-invalido
${SENHA_VALIDA}       senha1234
${SENHA_INVALIDA}     senha4567
${TELEFONE}           11 965688881
${TELEFONE_INVALIDO}  11 965681


*** Keywords ***
Abrir App
    Open Application    ${REMOTE_URL}   platformName=${platformName}  appium:platformVersion=${appium:platformVersion}  appium:deviceName=${appium:deviceName}  appium:automationName=${appium:automationName}   appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}  appium:newCommandTimeout=${appium:newCommandTimeout}

Cadastrar Usuario
    Click Element    id=com.example.vamsi.login:id/tvRegister
    Wait Until Element Is Visible    id=com.example.vamsi.login:id/action_bar
    Click Element    id=com.example.vamsi.login:id/etRegName
    Input Text    id=com.example.vamsi.login:id/etRegName           ${USUARIO_VALIDO}
    Input Text    id=com.example.vamsi.login:id/etRegPhone          ${TELEFONE}
    Input Text    id=com.example.vamsi.login:id/etRegGmail          ${EMAIL_VALIDO}
    Click Element    id=com.example.vamsi.login:id/btnRegLogin
    Input Text    id=com.example.vamsi.login:id/etRegPassword       ${SENHA_VALIDA} 
    Click Element    id=com.example.vamsi.login:id/btnRegLogin
    Hide Keyboard
    
Cadastrar Usuario Email Invalido
    Click Element    id=com.example.vamsi.login:id/tvRegister
    Wait Until Element Is Visible    id=com.example.vamsi.login:id/action_bar
    Click Element    id=com.example.vamsi.login:id/etRegName
    Input Text    id=com.example.vamsi.login:id/etRegName           ${USUARIO_VALIDO}
    Input Text    id=com.example.vamsi.login:id/etRegPhone          ${TELEFONE_INVALIDO}
    Input Text    id=com.example.vamsi.login:id/etRegGmail          ${EMAIL_INVALIDO}
    Click Element    id=com.example.vamsi.login:id/btnRegLogin
    Input Text    id=com.example.vamsi.login:id/etRegPassword       ${SENHA_VALIDA}
    Click Element    id=com.example.vamsi.login:id/btnRegLogin
    Sleep           10s
    Hide Keyboard

Cadastrar Usuario Telefone Invalido
    Wait Until Element Is Visible    id=com.example.vamsi.login:id/action_bar
    Click Element    id=com.example.vamsi.login:id/etRegName
    Input Text    id=com.example.vamsi.login:id/etRegName           ${USUARIO_VALIDO}
    Input Text    id=com.example.vamsi.login:id/etRegPhone          ${TELEFONE}
    Input Text    id=com.example.vamsi.login:id/etRegGmail          ${EMAIL_INVALIDO}
    Click Element    id=com.example.vamsi.login:id/btnRegLogin
    Input Text    id=com.example.vamsi.login:id/etRegPassword       ${SENHA_VALIDA}
    Click Element    id=com.example.vamsi.login:id/btnRegLogin
    Sleep           10s
    Click Element    id=com.example.vamsi.login:id/btnGotoLogin
    Hide Keyboard

Login Usuario Valido
    Wait Until Element Is Visible  id=com.example.vamsi.login:id/btnGotoLogin
    Click Element    id=com.example.vamsi.login:id/btnGotoLogin
    Wait Until Element Is Visible   id=com.example.vamsi.login:id/etLogGmail
    Input Text    id=com.example.vamsi.login:id/etLogGmail          ${EMAIL_VALIDO}
    Input Text    id=com.example.vamsi.login:id/etLoginPassword     ${SENHA_VALIDA}
    Click Element    id=com.example.vamsi.login:id/btnLogin
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.TextView
    Go Back
    

Login Usuario Invalido
    Wait Until Element Is Visible   id=com.example.vamsi.login:id/etLogGmail
    Input Text    id=com.example.vamsi.login:id/etLogGmail          ${EMAIL_INVALIDO}
    Input Text    id=com.example.vamsi.login:id/etLoginPassword     ${SENHA_VALIDA}
    Click Element    id=com.example.vamsi.login:id/btnLogin

Login Senha Invalida
    Wait Until Element Is Visible   id=com.example.vamsi.login:id/etLogGmail
    Input Text    id=com.example.vamsi.login:id/etLogGmail          ${EMAIL_VALIDO}
    Input Text    id=com.example.vamsi.login:id/etLoginPassword     ${SENHA_INVALIDA}
    Click Element    id=com.example.vamsi.login:id/btnLogin

Login Invalido
    Wait Until Element Is Visible   id=com.example.vamsi.login:id/etLogGmail
    Input Text    id=com.example.vamsi.login:id/etLogGmail          ${EMAIL_INVALIDO}
    Input Text    id=com.example.vamsi.login:id/etLoginPassword     ${SENHA_INVALIDA}
    Click Element    id=com.example.vamsi.login:id/btnLogin

Fechar App
    Close Application