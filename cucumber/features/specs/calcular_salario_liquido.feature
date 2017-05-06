# language: pt

@calc2
Funcionalidade: Calcular Salario Liquido
    Sendo um usuário do sistema calculadora
    Posso calcular meu Salário Liquido a partir do Bruto
    Para que eu possa saber quanto irei receber no final do mes

    Contexto: Acessar calculadora de salário liquido
        Dado que acesso a página Salário

    Esquema do Cenario: Calcular salario liquido
        Dado que meu salário bruto é <salario_bruto>
        Quando eu faço o calculo do meu salário
        Entao vejo o meu salário liquido no valor de <salario_liquido>
        E o imposto de IR no valor de <imposto>

    Exemplos:
        | salario_bruto | salario_liquido | imposto     |
        | "1.000,00"    | "920,00"        | "0,00"      |
        | "10.000,00"   | "7.678,24"      | "1.713,32"  |
        | "45.000,00"   | "33.053,24"     | "11.338,32" |
