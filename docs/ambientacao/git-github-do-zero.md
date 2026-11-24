# Git e GitHub do zero

**Complemento autoral de apoio às aulas regulares de 25/09 e 29/09 e à documentação da Semana 07.** Git guarda versões locais; GitHub hospeda um repositório remoto. Um commit registra uma versão; push envia commits; pull busca e integra alterações. Aulões de sábado consolidam, não ampliam currículo.

## Comece sem Git

Abra o repositório, use Code → Download ZIP, extraia e abra no VS Code. Isso não cria histórico Git local. Para enviar contribuições, leia [Como contribuir](../../CONTRIBUTING.md).

## Treino de versionamento local

Com Git disponível, abra o terminal do VS Code em uma pasta nova de treino. Não use uma pasta de produção. Crie um arquivo README.md com uma descrição em português. No terminal, execute uma linha por vez:

```bash
git init
git status
git add README.md
git diff --cached
git commit -m "Adiciona descrição do estudo"
git log --oneline
```

Se o Git pedir identidade, consulte a configuração autorizada; não use nome/e-mail de outra pessoa. O commit só existe após sucesso. Edite o README, confira git diff, adicione e registre uma segunda versão. O log deve exibir dois commits, com mensagens em português. Não execute push sem identificar o remoto e autorização.

No GitHub, os nomes Code, Issues e Pull requests e expressões como minutes ago são da plataforma. Use a tradução de página do navegador se desejar. Nomes padrão README.md, CONTRIBUTING.md e CHANGELOG.md são preservados para compatibilidade; a apresentação e as mensagens novas são em português.

[Documentação Git em português](https://git-scm.com/book/pt-br/v2) · [Documentação GitHub em português](https://docs.github.com/pt) · [Voltar ao percurso](../PERCURSO_DAS_SEMANAS.md).
