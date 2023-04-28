def traducir_aurebesh(palabra):
    aurebesh = {'a': 'aurek', 'b': 'besh', 'c': 'cresh', 'd': 'dorn', 'e': 'esk', 'f': 'forn','g': 'grek', 'h': 'herf', 'i': 'isk', 'j': 'jenth', 'k': 'krill', 'l': 'leth', 'm': 'mern', 'n': 'nern', 'ñ': 'nen', 'o': 'osk', 'p': 'peth', 'q': 'qek','r': 'resh', 's': 'senth', 't': 'trill', 'u': 'usk', 'v': 'vev', 'w': 'wesk','x': 'xesh', 'y': 'yirt', 'z': 'zerek'}
    aurebesh_palabra = ""
    for letra in palabra:
        if letra.lower() in aurebesh:
            aurebesh_palabra += aurebesh[letra.lower()] + " "
        else:
            aurebesh_palabra += letra + " "
    return aurebesh_palabra.strip()

def traducir_espanol(aurebesh_palabra):
    aurebesh = {'aurek': 'a', 'besh': 'b', 'cresh': 'c', 'dorn': 'd', 'esk': 'e', 'forn': 'f', 'grek': 'g', 'herf': 'h', 'isk': 'i', 'jenth': 'j', 'krill': 'k', 'leth': 'l', 'mern': 'm', 'nern': 'n', 'nen': 'ñ', 'osk': 'o', 'peth': 'p', 'qek': 'q', 'resh': 'r', 'senth': 's', 'trill': 't', 'usk': 'u', 'vev': 'v', 'wesk': 'w', 'xesh': 'x', 'yirt': 'y', 'zerek': 'z'}
    palabras_aurebesh = aurebesh_palabra.split()
    palabra_espanol = ""
    for palabra in palabras_aurebesh:
        if palabra in aurebesh:
            palabra_espanol += aurebesh[palabra]
        else:
            palabra_espanol += palabra
    return palabra_espanol

palabra_espanol = input("Ingrese una palabra en español: ")
palabra_aurebesh = traducir_aurebesh(palabra_espanol)
print("La palabra en Aurebesh es:", palabra_aurebesh)

aurebesh_palabra = input("Ingrese una palabra en Aurebesh: ")
palabra_espanol = traducir_espanol(aurebesh_palabra)
print("La palabra en español es:", palabra_espanol)
