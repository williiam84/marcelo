menu(){
 echo "[1] montar esquele"
 echo "[2] sair"
}

logo() {
logo='
         ___        __                             _
|_ _|_ __  / _| ___  _ __ ___   ___  _ __ | |_ __ _
 | || '\''_ \| |_ / _ \| '\''_ ` _ \ / _ \| '\''_ \| __/ _` |
 | || | | |  _| (_) | | | | | | (_) | | | | || (_| |
|___|_| |_|_|  \___/|_| |_| |_|\___/|_| |_|\__\__,_|

'
echo "$logo"
}

esqueleto(){
 echo "nome completo:"
 read -p ">" nome
 sleep 1
 echo "estuda em alguma escola? [s/n]"
 read -p ">" resposta
 case $resposta in
"s")
  echo "Digite o nome da escola: "
 read -p ">" escola
;;
"n")
  echo "OK"
;;
esac
 echo "Data de nascimento:"
 echo "Dia:"
 read -p ">" dia
 echo "mes:"
 read -p ">" mes
 echo "Ano:"
 read -p ">" ano
 echo "Digite o nome da cidade:"
read cidade

cidade=$(echo "$cidade" | sed 's/ /+/g')

link="https://www.google.com/maps/search/?api=1&query=$cidade"

echo
echo "Link do Google Maps:"
echo "$link"

echo "endereço de ip"
read -p ">" ip

montar(){
 echo "nome: $nome"
 echo "escola: $escola"
 echo "Data de nascimento: $dia/$mes/$ano"
 echo "cidade: $cidade"
 echo "google maps: $link"
 echo "bairro: "
 echo "rua: "
}

sleep 1
echo "carregando..."
echo "=============================="
sleep 1.7
montar
}

while true 
do
 logo
 menu
 read -p ">" resposta
 case $resposta in
 1)
  esqueleto
;;
 2)
  exit 0
;;
 *)
  echo "Ta vendo isso no menu?"
;;
esac
done
