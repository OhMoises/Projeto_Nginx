# SERVIDOR NGINX
## DESCRIÇÃO
O projeto visa criar um ambiente Linux no Windows utilizando o Windows Subsistema for Linux (WSL) com o Ubuntu. O objetivo é configurar um servidor Nginx nesse ambiente e implementar um script para monitorar o status do serviço a cada 5 minutos. 
#
## 1º Habilitar o WSL
Abra o PowerShell como administrador. Você pode fazer isso clicando com o botão direito no menu e selecionando "Windows PowerShell (Admin)". Em seguida, execute o seguinte comando para habilitar o WSL:
![Captura de tela 2024-10-31 172902](https://github.com/user-attachments/assets/28a2eeb4-23a3-455b-b95b-9970a76a6874)

Esse comando instalará todos os componentes necessários e a distribuição padrão do Linux (geralmente Ubuntu), após a instalação, reinicie seu computador para que as alterações tenham efeito.
#
## 2º Instale e configure o Ubuntu
Acesse a Microsoft Store e compre por “Ubuntu”. Selecione a versão desejada e clique em "Instalar".
Após a instalação, inicie o Ubuntu no menu Iniciar. Na primeira execução, você será solicitado a criar um usuário e uma senha.
Execute o seguinte comando para garantir que o sistema esteja atualizado:

![Captura de tela 2024-10-31 174959](https://github.com/user-attachments/assets/5e1881e2-6086-4313-88e4-3c2b6a553f86)
#
## 3º Instalação do servidor NGINX
Para instalar o servidor NGINX, siga o passo a passo abaixo:

![Captura de tela 2024-10-31 175744](https://github.com/user-attachments/assets/e1f20c1f-6bea-46db-8f96-771f37dff825)
#
## 4º Criar roteiro de monitoramento
Primeiro vamos criar um diretório, então use o comando:

![Captura de tela 2024-10-31 180806](https://github.com/user-attachments/assets/6c0b69d0-3411-437b-9125-9df07bc90d25)

Navegue até o diretório que foi criado para isso use o comando:

![Captura de tela 2024-10-31 181100](https://github.com/user-attachments/assets/532b00a1-b8bd-4245-9196-10b4071be416)

Agora vamos criar um arquivo.sh para poder rodar o script dentro dele, para criar esse arquivo usamos o comando:

![Captura de tela 2024-10-31 181441](https://github.com/user-attachments/assets/fc402af9-fe85-438b-ac92-ad12d18c08e8)

Após criar o arquivo vamos editá-lo usando o nano ou vi com o seguinte comando:

![Captura de tela 2024-10-31 181806](https://github.com/user-attachments/assets/6539ce5d-97dd-43b6-8db9-72efdb322906)

Dentro do editor de texto insira os seguintes comandos:

![Captura de tela 2024-10-31 182133](https://github.com/user-attachments/assets/ac4c7a29-835a-4cba-8474-109700b71780)

Após digitar os comandos acima saia e salve o arquivo, pressione a tecla "esc" e em seguida digite ":wq" e aperte "enter"
#
## 5º Tornar o script executável
Para fazer isso vamos utilizar o seguinte comando:

![Captura de tela 2024-11-01 101805](https://github.com/user-attachments/assets/33153770-1b23-48a0-b48f-efaa32d1b089)
#
## 6º Automatização da execução do script
Para automatizar o script a cada 5 minutos vamos adicionar um comando utilizando o cron
para isso digite no terminal o seguinte comando: 

![Captura de tela 2024-11-01 102800](https://github.com/user-attachments/assets/af9d5a4c-660f-4baa-9185-8c4bd8ac05fa)

Logo em seguida quando abrir o cron digite o comando a seguir:

![Captura de tela 2024-11-01 102944](https://github.com/user-attachments/assets/e51d39f6-f3a0-4c54-a2ef-02ed2a294e41)

Esse comando que definirá o tempo de respota para verificar se o servidor está online ou offline a cada 5 minutos
#
## 7º Verificar os resultados
Para verificar se script está funcionando perfeitamente vamos utilizar o comando:

![Captura de tela 2024-11-01 103813](https://github.com/user-attachments/assets/909f5673-857c-4bb5-9751-99bd278f5af7)

Caso o servidor estiver online vamos obter os seguintes resultados:

![Captura de tela 2024-11-01 103431](https://github.com/user-attachments/assets/f75d7505-d1f0-452f-be20-11a7def2b3c1)

E para verificar se o servidor está offline vamos utilizar o seguinte comando:

![Captura de tela 2024-11-01 104347](https://github.com/user-attachments/assets/23579d5b-29ca-47f7-9a3d-a660fb83e44b)

E vamos obter os seguintes resultados:

![Captura de tela 2024-11-01 104612](https://github.com/user-attachments/assets/f64f34c8-f05e-428a-a4a3-925ceb9c660d)
#
# Moisés Pereira Araujo
