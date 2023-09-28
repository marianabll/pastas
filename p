import os
import shutil

origem = '/Users/marianabelloube/Downloads/Portfolio3'
destino = '/Users/marianabelloube/Downloads/Destino'

lista_arquivos = os.listdir(origem)

for arquivo in lista_arquivos:
    nome, extensao = os.path.splitext(arquivo)

    if extensao == '':
        continue
    if extensao in ['.jpg', '.jpeg', '.png', '.bmp', '.gif', '.jfif']:

        pasta_destino_final = destino + '/' + "Minhas imagens"
        
        arquivo_na_origem = origem + '/' + arquivo
        arquivo_no_destino = pasta_destino_final + '/' + arquivo

        if os.path.exists(pasta_destino_final):
            
            shutil.move(arquivo_na_origem, arquivo_no_destino)
        
        else:
            os.mkdir(pasta_destino_final)
            shutil.move(arquivo_na_origem, arquivo_no_destino)

