<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- added meta viewport tag -->
    <link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./Styles/infoImovel/infoImovel.css">
    <title>Informacoes do Imovel</title>
</head>
<body>

<header>
<div clas= "logo">
 <a class="navbar-brand" href="/HomeLogada"><img src="./Imagens/logo.png"></a>
  </div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>


    </nav>
    </header>

    <div class="containerIMG-table">
        <div class="containerIMG">
            <img src="/img/${imovel.imagens}" class="card-img-top" alt="...">
        </div>

        <br>
        <br>

        <div class="container-table">
            <table class="table-informacoes">
                <c:forEach var="imovel" items="${imovel}">
                    <thead>
                        <tr>
                            <th align="center">Imovel</th>
                            <th align="center">Endereco</th>
                            <th align="center">Quartos</th>
                            <th align="center">Banheiros</th>
                            <th align="center">Vagas</th>
                            <th align="center">Valor</th>
                            <th align="center">Observacoes</th>
                        </tr>
                    </thead>
                    <tbody class="table-group-divider">
                        <tr>
                            <td align="center">${imovel.tituloImovel}</td>
                            <td align="center">${imovel.endereco}</td>
                            <td align="center">${imovel.numQuartos}</td>
                            <td align="center">${imovel.numBanheiro}</td>
                            <td align="center">${imovel.numVagas}</td>
                            <td align="center">R$ ${imovel.valorNoite}</td>
                            <td align="center">${imovel.obs}</td>
                        </tr>
                    </tbody>
                </c:forEach>
            </table>

            <br>
            <br>

            <table class="table-contato">
                <c:forEach var="imovel" items="${imovel}">
                    <thead>
                        <tr>
                            <th scope="col">Email de Contato</th>
                            <th scope="col">Telefone de Contato</th>
                        </tr>
                    </thead>
                    <tbody class="table-group-divider">
                        <tr>
                            <td>${imovel.email}</td>
                            <td>${imovel.telefone}</td>
                        </tr>
                    </tbody>
                </c:forEach>
            </table>
        </div>
    </div>

    <footer class="footer">
        <div class="container p-4">
            <div class="row">
                <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                    <h5 class="text-uppercase"><strong>Contatos</strong></h5>
                    <p>
                        <ul>
                            <li>Istagram</li>
                            <li>Facebook</li>
                            <li>X</li>
                            <li>realstateAdm@real.com</li>
                        </ul>
                    </p>
                </div>
                <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                    <h5 class="text-uppercase"><strong>Sobre Nosso Site</strong></h5>
                    <p>
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste atque ea quis
                        molestias. Fugiat pariatur maxime quis culpa corporis vitae repudiandae aliquam
                        voluptatem veniam, est atque cumque eum delectus sint!
                    </p>
                </div>
            </div>
        </div>
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.05);">
            2024 Copyright: Real State
