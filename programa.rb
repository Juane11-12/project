require 'io/console'
require 'colorize'
puts "bienvenido"
puts ""
puts "ingrese su contraseña "; pass = STDIN.getpass

def tool()
    puts """
    by: Juane11-12
        
████████╗░█████╗░░█████╗░██╗░░░░░░░░░░░░░░░░██╗░░███╗░░░░███╗░░
╚══██╔══╝██╔══██╗██╔══██╗██║░░░░░░░░░░░░░░░░██║░████║░░░████║░░
░░░██║░░░██║░░██║██║░░██║██║░░░░░█████╗░░░░░██║██╔██║░░██╔██║░░
░░░██║░░░██║░░██║██║░░██║██║░░░░░╚════╝██╗░░██║╚═╝██║░░╚═╝██║░░
░░░██║░░░╚█████╔╝╚█████╔╝███████╗░░░░░░╚█████╔╝███████╗███████╗
░░░╚═╝░░░░╚════╝░░╚════╝░╚══════╝░░░░░░░╚════╝░╚══════╝╚══════╝""".green
    

    puts "1-abrir navegador".green
    puts "2-informacion sobre fotos".green
    puts "3-tierra girando".green
    puts "4-optimizacion".green
end

def inico()
    puts "bienvenido"
    puts "[+] conectando......".blue
    sleep(2)
end

if pass == "123"
    loop do
        inico()
        system("cls")
        tool()
        num = gets.chomp
        if num == "1"
            puts "informacion: esta opcion abre tu navegador con el dominio que elijas o pongas".light_yellow
            puts ""
            puts "!!! use https,http,ssh, etc !!!".yellow
            puts ""
            puts "ingrese a la pagina que quiere abrir"
            puts ""
            puts "opcional:".light_cyan
            puts "opcion 1: discord.com".green
            puts "opcion 2: google.com".green
            puts "opcion 3: 4chan.org".green
            puts "ingrese alguna opcion o la pagian que desee: "; nn = gets.chomp
            if nn == "2"
                system("start https://google.com")
            elsif nn == "1"
                system("start https://discord.com")
            elsif nn == "3"
                system("start https://4chan.org")
            else
                system("start #{nn}")
            end

        elsif num == "2"
            puts "informacion: esta opcion da datos de fotos unicamente de .JPG,datos como ubicacion,modelo de camara,modelo del telefono,etc".cyan
            puts ""
            puts "ingrese la foto que desea ver la informacion"
            ft = gets.chomp
            begin
                system("exiftool \"#{ft}\"")
                puts "[+] esperando 25 segundos para que veas la informacion....".yellow
                sleep(25)
            rescue
                puts "el sistema no tiene el .exe de exiftool".red
                puts "desea instalar exiftool para segir con el progreso? (y/n)".light_blue
                yn = gets.chomp
                if yn == "y" || yn == "Y"
                    system("scoop install exiftool")
                else
                    puts "OK"
                end
            rescue
                puts 'necesitas el instalador de "scoop" para descargar exiftool'.red
                puts "desea instalar scoop para seguir con el progreso? (y/n)"
                yndo = gets.chomp
                if yndo == "y" || yndo == "Y"
                    com = 'powershell -Command "iex (iwr -useb get.scoop.sh)"'
                    system(com)
                else
                    puts "ok"
                end
            retry
            end
        elsif num == "3"
            system("curl ascii.live/earth")
            exit
        elsif num == "4"
            system('.\prueba.bat')
        end                

    end
else
    puts "incorrecto"
end
