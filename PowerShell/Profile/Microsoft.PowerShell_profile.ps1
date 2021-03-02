write-host "Bienvenue Maxime"
write-host "		"
write-host "Liste des fonctions definies:"
write-host "	- docker-start-full"
write-host "	- docker-build-full"
write-host "	- docker-stop-full"
write-host "	- docker-build-cace"
write-host "	- docker-build-cace-db"
write-host "	- docker-compose-cace"

function docker-start-full
{
            C:\Users\33685\Desktop\Programmation\Repository\Devops\PowerShell\Scripts\startPosteDevLocal.ps1
}

function docker-build-full
{
            C:\Users\33685\Desktop\Programmation\Repository\Devops\PowerShell\Scripts\buildImages.ps1
}

function docker-stop-full
{
            C:\Users\33685\Desktop\Programmation\Repository\Devops\PowerShell\Scripts\stopPosteDevLocal.ps1
}

function docker-build-cace
{
			mvn -f C:\Users\33685\Desktop\Programmation\Repository\CACE\CACE\. clean install 
            docker build -t cace:latest C:\Users\33685\Desktop\Programmation\Repository\CACE\.
}


function docker-build-cace-db
{ 
			docker build -t cace-db:latest C:\Users\33685\Desktop\Programmation\Repository\Devops\Mongodb\.
}

function docker-compose-cace
{
			docker-compose -f C:\Users\33685\Desktop\Programmation\Repository\Devops\docker-compose.yml up -d
}