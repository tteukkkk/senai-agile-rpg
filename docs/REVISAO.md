# Revisão e limitações

- Removido DROP DATABASE automático.
- Padronizada a tabela tipoCurso para evitar diferenças de maiúsculas/minúsculas no Linux.
- Retirado ORDER BY desnecessário da consulta MAX(preco).
- Views criadas sem executar previamente compras ou exclusões.
- Exercícios de manipulação preservados em arquivo opcional sinalizado.

Limitações: a carga tem 10 personagens; vários exercícios originais usam IDs ausentes. Compras não validam saldo, não mantêm inventário e UPDATE com múltiplos itens não aplica a soma de todos os itens. Esses exercícios exigem revisão funcional antes de uso e não estão na sequência de instalação. A modelagem original foi preservada; os atributos não têm validação de faixa. A ordem retornada por views de ranking deve ser reforçada com ORDER BY na consulta externa.

Validação: revisão estática; sem servidor MySQL disponível para teste de execução.


Conferência adicional: schema e carga importados em SQLite após adaptação mínima de sintaxe, com chaves estrangeiras habilitadas. Não substitui teste no MySQL, nem valida as procedures ou todas as consultas.
