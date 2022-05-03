!Acessar o modo EXEC privilegiado
enable
   
   !Configurar a Data e Hora do Switch
   clock set 20:09:00 28 April 2022

   !Modo de configuração Global
   Configure terminal

    !configuração do Hostname (Nome do Equipamento)
     Hostname sw-01   

    !Habilitar a Criptografia de Senha
     service password-encryption

    !Habilitar a Marcação de Data e Hora no Log
    service timestamps log datetime msec

    !Desativar a Resolução de Nome
    no ip domain-lookup

    configuração da Mensagem do Dia 
    banner motd #AVISO acesso autorizado somente a funcionarios#

    !Habilitando a Senha do Modo Enable 
    enable secret 123@senac

    !Criar usuários de administração do Switch
    username senac secret 123@senac

    !Acessar a linha de console
    line console 0

      !Habilitando o Login Local
      login local

      !Habilitando o sincronismo dos logs
      logging synchronous

      !Habilitando o tempo de inatividade
      exec-timeout 5 30

      !Sair de todos os Modos
      end
 !Salvando as configuração do Switch
  copy running-config startup-config 

 

  !Verificando as configuraçãos do Switch
  show running-config

  


