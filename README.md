# TesteAngular
Sistema Teste
<!DOCTYPE html>
<html ng-app="Teste">
<head>
    <meta charset="UTF-8">
    <title>Teste Programa</title>
    <link rel="stylesheet" type="text/css" href="Models/bootstrap.css">
   
    <style>
        .jumbotron {
            width: 600px;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            margin-top: 20px;
        }

        .table {
            margin-top: 20px;
            text-align: left;
        }

        .form-control {
            margin-bottom: 5px;
        }

        .selecionado {
            background-color: dodgerblue;
        }

        .negrito {
            font-weight: bold;
        }
    </style>
    <script src="Angular/angular.js"></script>
    
    <script>
        angular.module("Teste",[]);
        angular.module("Teste").controller("Testecontrol",function ($scope) {
            $scope.app =" Cadastro de Recados ";
            $scope.contatos = [
            ];

            $scope.operadoras = [
                {prio: "Alta"},
                {prio: "Media"},
                {prio: "Baixa"}
            ];
            $scope.adicionarContato= function (contato) {
                $scope.contatos.push(angular.copy(contato));
                delete $scope.contato;
            };
            $scope.apagarContatos= function (contatos) {
                $scope.contatos = contatos.filter(function (contato){
                    if(!contato.selecionado) return contato;
                });
            };
        });
    </script>
</head>
<body ng-controller="Testecontrol">
    <div class="jumbotron">
        <h3>{{app}}</h3>
        <input class="form-control" type="text" ng-model="BuscaNom" PLACEHOLDER="Procura nome">
        <table class="table table-striped">
            <tr>
                <th></th>
                <th>Nome</th>
                <th>Telefone</th>
                <th>Prioridade</th>
                <th>Mensagem</th>
            </tr>
            <tr ng-class="{selecionado: contato.selecionado, negrito: selecionado}" ng-repeat="contato in contatos | filter:{nome:BuscaNom}">
                <td><input type="checkbox" ng-model="contato.selecionado" /></td>
                <td>{{contato.nome}}</td>
                <td>{{contato.telefone}}</td>
                <td>{{contato.operadora.prio}}</td>
                <td>{{contato.area}}</td>
            </tr>
        </table>
        <hr />
        <input class="form-control" type="text" ng-model="contato.nome" placeholder="Nome" />
        <input class="form-control" type="text" ng-model="contato.telefone" placeholder="Telefone" />
        <select class="form-control" ng-model="contato.operadora" ng-options="operadora.prio for operadora in operadoras">
            <option value="">---Prioridade---</option>
        </select>
        <textarea class="form-control" type="textarea" ng-model="contato.area" placeholder="Mensagem" /></textarea>
        <button class="btn bg-primary" ng-click="adicionarContato(contato)" ng-disabled="!contato.nome || !contato.telefone">Adiciona Registo</button>
        <button class="btn bg-danger " ng-click="apagarContatos(contatos)" ng-disable="true">Apagar Registro</button>
        </br>
        </br>

        <a href="Page1.html">Voltar</a>
    </div>
</body>
</html>
