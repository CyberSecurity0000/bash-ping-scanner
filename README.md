# 🔎 Bash Ping Scanner

![Bash](https://img.shields.io/badge/Bash-121011?logo=gnubash\&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?logo=linux\&logoColor=black)
![ICMP](https://img.shields.io/badge/Network-ICMP-blue)

Script em **Bash** para verificar a disponibilidade de hosts a partir de uma lista de alvos e gerar um relatório resumido.

## ⚡ Funcionalidades

* 📄 Leitura de alvos através de arquivo `.txt`
* 📡 Verificação de disponibilidade com `ping`
* 🟢 Contagem de hosts ativos
* 🔴 Contagem de hosts inativos
* 📊 Geração de relatório
* 🛑 Tratamento de interrupção com `CTRL+C`

## 🚀 Utilização

```bash
chmod +x PingScan.sh
./PingScan.sh hosts.txt
```

Exemplo de `hosts.txt`:

```text
192.168.1.1
192.168.1.10
192.168.1.20
```

## 📋 Exemplo

```text
# Host "192.168.1.1": Up
# Host "192.168.1.10": Down
# Host "192.168.1.20": Up

--- Relatorio ---
- Host Up: 2
- Host Down: 1
- Host Total: 3
--------------------------------------------------
```

## 🧠 Conceitos

* Bash Scripting
* Variáveis
* Argumentos
* Funções
* Loops
* Estruturas condicionais
* Operadores
* Exit Status
* Redirecionamento
* Contadores
* `trap` / sinais

## 🛠️ Tecnologias

* 🐚 Bash
* 🐧 Linux
* 📡 ICMP / `ping`

## 🎯 Objetivo

Projeto desenvolvido para praticar **Bash scripting, automação em Linux e conceitos básicos de redes**, aplicando esses conhecimentos na construção de uma ferramenta funcional.

## 🔐 Segurança

Utilize este projeto somente em **sistemas próprios, laboratórios ou ambientes para os quais você tenha autorização para realizar testes**.

## 👨‍💻 Estudos

Projeto desenvolvido durante estudos práticos de:

**Linux • Bash • Redes • Cibersegurança • Pentest**
