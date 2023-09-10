# Testes de Cadastro

*** Settings ***
Resource        ../keywords/android.robot
Test Setup      Abrir App
Test Teardown   Fechar App

*** Test Cases ***
Cadastro
    Cadastrar Usuario
    Login Usuario Valido
    Login Usuario Invalido
    Login Senha Invalida
    Login Invalido

Cadastro invalido
     Cadastrar Usuario Email Invalido
     Cadastrar Usuario Telefone Invalido
