# Script de Configuração para Tela Ultrawide

## Introdução

Este script em shell foi criado para configurar uma tela ultrawide com resolução de 2560x1080 e taxa de atualização de 60 Hz. Ele verifica se a saída especificada (HDMI-2, neste caso) está conectada e, se estiver, aplica a configuração da tela ultrawide usando o comando `xrandr`.

## Pré-requisitos

- Este script assume que o comando `xrandr` está instalado no sistema.
- Certifique-se de que a saída correta (neste caso, HDMI-2) está especificada na variável `OUTPUT`.

## Uso

1. Torne o script executável:

    ```bash
    chmod +x ultrawide_config.sh
    ```

2. Execute o script:

    ```bash
    ./ultrawide_config.sh
    ```

## Detalhes do Script

- `MODE_NAME`: O nome desejado para o modo de configuração da tela ultrawide.
- `OUTPUT`: A saída especificada (por exemplo, HDMI-2) a ser verificada e configurada.
- `CONNECTED_OUTPUT`: Verifica se a saída especificada está conectada usando o comando `xrandr`.
- Se a saída estiver conectada, cria um novo modo, adiciona o modo à saída especificada e define a saída para usar o novo modo.

## Exemplo de Uso

```bash
./ultrawide_config.sh
