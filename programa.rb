require 'io/console'
require 'colorize'

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
    puts "5-buscar cuenta".green
    puts "6-pagina 2".green
    puts "7-exit".green
end

def tool2()
    puts """
    by: Juane11-12

████████╗░█████╗░░█████╗░██╗░░░░░░░░░░░░░░░░██╗░░███╗░░░░███╗░░
╚══██╔══╝██╔══██╗██╔══██╗██║░░░░░░░░░░░░░░░░██║░████║░░░████║░░
░░░██║░░░██║░░██║██║░░██║██║░░░░░█████╗░░░░░██║██╔██║░░██╔██║░░
░░░██║░░░██║░░██║██║░░██║██║░░░░░╚════╝██╗░░██║╚═╝██║░░╚═╝██║░░
░░░██║░░░╚█████╔╝╚█████╔╝███████╗░░░░░░╚█████╔╝███████╗███████╗
░░░╚═╝░░░░╚════╝░░╚════╝░╚══════╝░░░░░░░╚════╝░╚══════╝╚══════╝""".green

   
    puts "¡AVISO:PARA QUE CADA OPCION FUNCIONE NECESITA EL INSTALADOR SCOOP".cyan
    puts ""
    puts "1-instalar block de notas".green
    puts "2-instalar Visual Studio Code".green
    puts "3-instalar browsers".green
    puts "4-volver al menu principal".green
    puts "5-instalador general con scoop".green
end

def buscar()
    puts "informacion: esta opcion busca el nombre que escribas en redes como youtube,twitter,instagram,etc.".cyan
    puts ""
    puts "ingrese el nombre "; name = gets.chomp
    puts "[+] nombre buscado en Instagram".green
    sleep(0.2)
    puts "[+] nombre buscado en Twitter".green
    sleep(0.2)
    puts "[+] nombre buscado en Youtube".green
    sleep(0.2)
    puts "[+] nombre buscado en GitHub".green
    sleep(0.5)
    puts "[+] nombre buscado en discord".green
    sleep(1)
    system("start https://www.instagram.com/#{name}/")
    system("start https://x.com/#{name}")
    system("start https://www.youtube.com/@#{name}")
    system("start https://github.com/#{name}")
end

def inico()
    puts "bienvenido"
    puts "[+] conectando......".blue
    sleep(2)
end

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
        if system("exiftool \"#{ft}\"")
            puts "[+] esperando 25 segundos para que veas la informacion....".yellow
            sleep(25)
        
        elsif system("scoop --version")
            puts "el sistema no tiene el .exe de exiftool".red
            puts "desea instalar exiftool para segir con el progreso? (y/n)".light_blue
            yn = gets.chomp
            if yn == "y" || yn == "Y"
                system("scoop install exiftool")
            else
                puts "OK"
            end
        else
            puts 'el sistema no tiene el instalador de "scoop"'
            puts "desea instalar scoop para seguir con el progreso? (y/n)".light_blue
            yn2 = gets.chomp
            if yn2 == "y" || yn2 == "Y"
                system('powershell -Command "iex (iwr -useb get.scoop.sh)"')
            end
        end

    elsif num == "3"
        system("curl ascii.live/earth")
        exit
            
    elsif num == "4"
        system('.\prueba.bat')
            
    elsif num == "5"
        buscar()
    elsif num == "6"
        system("cls")
        loop do
            puts "[+] conectando......".blue
            sleep(2)
            system("cls")
            tool2()
            num2 = gets.chomp
            
            if num2 == "1"
                puts "[+] descargando block de notas".green
                sleep(0.2)
                begin
                    system("scoop bucket add extras")
                    raise "Scoop no instalado" unless system("scoop install notepadplusplus")
                rescue
                    puts 'el sistema no detecta el instalador "scoop"'.red
                    puts "desea descargar scoop para seguir con el procedimiento? (y/n)"
                    nosi = gets.chomp
                    if nosi == "y" || nosi == "Y"
                        puts "[+] dscargando scoop".cyan
                        system('powershell -Command "iex (iwr -useb get.scoop.sh)"')
                        retry
                    else
                        puts "OK"
                    end
                 end

            elsif num2 == "2"
                puts "[+] descargando Visual Studio Code".cyan
                sleep(0.2)
                begin
                    system("scoop bucket add extras")
                    raise "Scoop no instalado" unless system("scoop install vscode")
                rescue
                    puts 'el sistema no detecta el instalador"scoop"'.red
                    puts "desea descargar scoop para seguir con el procedimiento? (y/n)"
                    nosi2 = gets.chomp
                    if nosi2 == "y" || nosi2 == "Y"
                        puts "[+] descargando scoop".cyan
                        system('powershell -Command "iex (iwr -useb get.scoop.sh)"')
                        retry
                        end
                    else
                        puts "ok"
                    end

            elsif num2 == "3"
                puts "ingrese alguna opcion".light_blue
                puts "1-firefox".green
                puts "2-google".green
                puts "3-Tor browser".green
                puts "4-brave".green
                brow = gets.chomp
                
                if brow == "1"
                    puts "[+] instalando firefox".cyan
                    begin
                        raise "Scoop no instalado" unless system("scoop install firefox")
                    rescue
                         puts 'el sistema no detecta el instalador"scoop"'.red
                        puts "desea descargar scoop para seguir con el procedimiento? (y/n)"
                        nosi3 = gets.chomp
                        if nosi3 == "y" || nosi3 == "Y"
                            puts "[+] descargando scoop".cyan
                            system('powershell -Command "iex (iwr -useb get.scoop.sh)"')
                            retry
                        else
                            puts "ok"
                        end
                    end
                        
                elsif brow == "2"
                    puts "[+] instalando google".cyan
                    begin
                        raise "Scoop no instalado" unless system("scoop install google")
                    rescue
                        puts 'el sistema no detecta el instalador "scoop"'.red
                        puts "desea descargar scoop para seguir con el procedimiento? (y/n)"
                        nosi4 = gets.chomp
                        if nosi4 == "y" || nosi4 == "Y"
                            puts "[+] descargando scoop".cyan
                            system('powershell -Command "iex (iwr -useb get.scoop.sh)"')
                            retry
                        else
                            puts "OK"
                        end
                    end

                elsif brow == "3"
                    puts "[+] instalando tor browser".cyan
                    begin
                        raise "Scoop no instalado" unless system("scoop install tor-browser")
                    rescue
                        puts 'el sistema no detecta el instalador "scoop"'.red
                        puts "desea descargar scoop para seguir con el procedimiento? (y/n)"
                        nosi5 = gets.chomp
                        if nosi5 == "y" || nosi5 == "Y"
                            puts "[+] descargando scoop".cyan
                            system('powershell -Command "iex (iwr -useb get.scoop.sh)"')
                            retry
                        else
                            puts "OK"
                        end
                    end
                        
                elsif brow == "4"
                    puts "[+] instalando brave".cyan
                    begin
                        raise "Scoop no instalado" unless system("scoop install brave")
                    rescue
                        puts 'el sistema no detecta el instalador "scoop"'.red
                        puts "desea descargar scoop para seguir con el procedimiento? (y/n)"
                        nosi6 = gets.chomp
                        if nosi6 == "y" || nosi6 == "Y"
                            puts "[+] descargando scoop".cyan
                            system('powershell -Command "iex (iwr -useb get.scoop.sh)"')
                            retry
                            end
                        end
                    end
                    
            elsif num2 == "4"
                break
            elsif num2 == "5"
                puts "info:esta opcion permite descargar cosas que no se encuentran en este Tool".cyan
                puts ""
                puts "ingrese lo que desea instalar: "; fff = gets.chomp
                if system("scoop install #{fff}")
                    puts "[+] #{fff} fue instalado con exito".green
                    sleep(0.7)
                else system("scoop --version")
                    puts 'el sistema no detecta el instalador "scoop"'.red
                    puts "desea descargar scoop para seguir con el procedimiento? (y/n)"
                    nosi7 = gets.chomp
                    if nosi7 == "y" || nosi7 == "Y"
                        system('powershell -Command "iex (iwr -useb get.scoop.sh)"')
                    else
                        puts "OK"
                    end
                end

            end
        end

    elsif num == "7"
        break
    end
end