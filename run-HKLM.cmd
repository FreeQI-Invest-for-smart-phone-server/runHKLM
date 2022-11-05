@cls
@echo OFF
@REM =====================================================
@REM |      Laurent PERRET by sysadmsy6@gmail.com         |
@REM | For retrive IP Public adresse from your Smartphone |
@REM |    and put this adresse to a variable system       |
@REM |           In the file runWANip.log                 |
@REM ======================================================
@REM
@echo Sauvegarde automatique des variables d'environnements sur le disque
@reg export "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" "F:\Tools\run\env-variable\environ\env-var-winx64-pro-v10-extraNET_".%date%."reg" /y
@echo ...

@sleep 1
@echo Sauvegarde automatique de la configuration du TCPIP.
@reg export "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip" "F:\Tools\run\env-variable\tcpip\env-var-winx64-pro-v10-extraNET_".%date%."reg" /y
@echo ...

@sleep 1
@echo Sauvegarde automatique de la configuration NDMPAgent64
@reg export "HKLM\SYSTEM\CurrentControlSet\Services\NDMPAgent64\Parameters" "F:\Tools\run\env-variable\NDMPAgent64\env-NDMPAgent64-Permitted-parameters-extraNET_".%date%."reg" /y
@echo ...

@sleep 1
@echo Sauvegarde automatique de la configuration des Services.
@reg export "HKLM\SYSTEM\CurrentControlSet\Services" "F:\Tools\run\env-variable\services\services-var-winx64-pro-v10-extraNET_".%date%."reg" /y
@echo ...

@sleep 1
@echo Sauvegarde automatique des variables d'environnements à l'écran
@reg export "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" "C:\Users\sysadmsy6\Desktop\env-1-var-winx64-pro-v10-extraNET_".%date%."reg" /y
@echo ...
            