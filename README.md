# ajustar-luz
*Script* para definir a porcentagem exata da luminosidade da tela.

# Configuração

Crie uma *allias* no arquivo '.bashrc' na pasta local do usuário indicando o caminho para o *script*:
```
echo "alias ajustar-luz='bash /home/renan/ajustar-luz/ajustar-luz.sh'" >> .bashrc
```

Em seguida use o comando *source* para carregar as modificações:
```
source ~/.bashrc
```

Para usar executar o *script* basta chamar o nome da *allias* criada:
```
ajustar-luz
```

O *script* aceita dois parâmetros:

- \-s: para definir o nível de luz
- \-c: para mostrar o nível de luz atual

=)
