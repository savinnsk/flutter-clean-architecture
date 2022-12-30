
## Status : development

git submodule init



Instale os pacotes com


flutter pub get



Integrando com outros serviços

Você pode integrar com outros serviços utilizando os submodulos do git


git submodule add <url_do_submodulo> <submodulo>



Após a importação de um submodulo, inicie o pacote em pubspec.yaml com o path do seu submodulo


Padrões de Código

Biblioteca de UI
Este projeto conta com uma Biblioteca de UI, que deve conter todos os componentes que podem ser compartilhado entre os projetos: botões, inputs, modais, drawers e até componentes maiores como formulários, navbars, CTAs, cards entre outros

Atomic Design:
Para este projeto do Corporativo/Whitelabel utilizamos a metodologia de código do Atomic Design. Isso significa, que cada componente deve ser construido de forma independente, começando pelos de menor nível (atomos) e crescendo em responsabilidade a cada novo nível (particulas, moleculas, etc). Você pode ler mais sobre Atomic Design nesse artigo: https://medium.com/pretux/atomic-design-o-que-%C3%A9-como-surgiu-e-sua-import%C3%A2ncia-para-a-cria%C3%A7%C3%A3o-do-design-system-e3ac7b5aca2c

Não é necessário organizar em diretorios de "atomos", "moleculas", "particulas" etc. Todos os componentes são colocados no diretorio de components

Integrações com a API, como busca ou envio de resultados, não devem nunca serem feitos nos componentes, independente do nível. Isso acontece somente nas páginas. Os componentes recebem estes valores ou funções como propriedades e vão passando para os componentes inferiores.


Componentes
Cada componente pode ter seus widgets especificos. Pensamos aqui nos widgets como "pequenos componentes" que juntos, formam o seu componente completo. Isso ainda está dentro da lógica de Atomic Design, mas deve ser aplicado de forma diferente aqui para que te ajude na RESPONSIVIDADE do componente, por exemplo: temos um card que contem uma imagem, titulo e uma descrição. Na versão desktop, temos dois blocos lado a lado, um bloco com a imagem, e a sua direita, um bloco com o titulo e a descrição em linhas diferentes. Já no mobile, temos apenas um único bloco, com imagem, título e descrição em linhas um abaixo do outro. Neste exemplo, você possui 3 widgets: imagem, título e descrição, e dois componentes: desktop e mobile, que se alternam utilizando o ResponsiveComponent da nossa Biblioteca de UI. Estes componentes devem apenas montar a estrutura de blocos necessária, e chamar os widgets criados.

Isso não significa que seus widgets não possam ser outros componentes, seguindo o Atomic Design. Tenha apenas cuidado para não criar widgets que são utilizados somente em um caso bem especifico dentro de um componente como um componente a parte.
Pela organização do código, componentes são sempre criados em uma pasta, por exemplo lib/componentes/example_component, que possui os arquivos example_component.desktop.dart, example_component.mobile.dart e example_component.dart para exportação destes componentes. Para os widgets, crie sempre uma pasta lib/componentes/example_component/widgets, e lembre de exportar os widgets em widgets.dart



Stores
Aqui, tentamos de alguma forma, utilizar a arquitetura Flux com a biblioteca GetX do Flutter. Apesar de não ser o recomendável, não utilizamos a estrutura de controllers/presenters deste projeto, tentamos emular ao máximo uma estrutura de Flux, com o Store apenas armazenando e manipulando os dados.

Podem existir múltiplos stores de acordo com sua função: Store da Busca, Store da Reserva, Store de Usuários, etc. Você pode utilizar cada store extendendo sua classe no Widget da Página com o UseStore<SuaStore>, classe de utilidade presente na Biblioteca de UI, e que irá retornar a sua store na váriavel store

Você pode também utilizar o UseAppStore, que deve conter todos os stores do aplicativo, podendo ser aplicada com store.search por exemplo, desde que o store search seja registrado em AppStore

Todo Store, deve ser inicializado em AppBindings com o lazyPut



Repositories
Os repositories são responsáveis por fazer as integrações a API. Você pode e deve ter mais de um repository de acordo com a funcionalidade sendo usada na API.

Páginas
Cada página, possui suas views: desktop, mobile ou tablet. Você deve chamá-las utilizando o ResponsiveComponent.

Pela organização do código, componentes são sempre criados em uma pasta, por exemplo lib/pages/home, que possui os arquivos home.desktop.dart, home.mobile.dart e home.dart para exportação destes componentes. Para os widgets, crie sempre uma pasta lib/componentes/example_component/widgets, e lembre de exportar os widgets em widgets.dart



Navigator
O Navigator é responsável por gerenciar a navegação entre as páginas. Guardamos as constantes das URLs das páginas em routes.dart e as páginas propriemente ditas em pages.dart.

Para faciltar a integração de um serviço com outros serviços é importante que você exporte as páginas na variável routes.
Para integrar com um outro serviço, busque a variável routes e coloque em sua lista de rotas.


Data, DI, Helpers, Env, Validators
Auto explicativos.
