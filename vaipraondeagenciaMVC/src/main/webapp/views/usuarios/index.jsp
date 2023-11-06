<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt">
  <head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="index.css">
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Vai pra onde? A ag�ncia que te leva pro mundo!</title>
  </head>
  <body>
  
    <nav class="navbar col-12 position-fixed navbar-expand-lg navbar-dark bg-dark" style="z-index: 999;">
        <div class="container-fluid col-11 m-auto">
          <a class="navbar-brand" href="index.html">Vai pra onde? Sua ag�ncia de viagens!</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="index.html">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="destinos.html">Destinos</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="promocoes.html">Promo��es</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contato.html">Contato</a>
              </li>
              
            </ul>
          </div>
        </div>
      </nav>

      <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="./riodejaneiro.png" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>Rio de Janeiro</h5>
              <p>Venha conhecer a cidade maravilhosa! Em at� 12x sem juros!</p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="./londres.png" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>Londres em at� 12x sem juros</h5>
              <p>Conhe�a a terra da rainha junto com a gente!</p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="./portodegalinhas.png" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>Porto de Galinhas - PE</h5>
              <p>O caribe brasileiro. Em at� 12x sem juros.</p>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>


      <div align="center">
      <h1>Escolha sua viagem</h1>
      <form>
          <label for="destino">Para onde quer ir:</label>
          <select id="destino" name="destino">
              <option value="rio">Rio de Janeiro</option>
              <option value="sp">S�o Paulo</option>
              <option value="bh">Belo Horizonte</option>
              <option value="bh">Londres</option>
              <option value="bh">Jap�o</option>
              <option value="bh">Argentina</option>
          </select>

          <br>
          <label for="destino">De onde est� saindo:</label>
          <select id="destino" name="destino">
              <option value="rio">Rio de Janeiro</option>
              <option value="sp">S�o Paulo</option>
              <option value="bh">Belo Horizonte</option>
              <option value="bh">Londres</option>
              <option value="bh">Jap�o</option>
              <option value="bh">Argentina</option>
          </select>
  
          <br>
  
          <label for="dataIda">Ida:</label>
          <input type="date" id="dataIda" name="dataIda" required>
  
          <br>
  
          <label for="dataVolta">Volta:</label>
          <input type="date" id="dataVolta" name="dataVolta" required>
  
          <br>
  
          <label for="numAdultos">Adultos:</label>
          <input type="number" id="numAdultos" name="numAdultos" min="1" value="1">
  
          <br>
  
          <label for="numCriancas">Crian�as:</label>
          <input type="number" id="numCriancas" name="numCriancas" min="0" value="0">
  
          <br>
  
          <button type="submit">Pesquisar</button>
      </form>
  </div>
      <br>
   
    
    <div class="row">
        <div class="col-sm-6">
          <div class="card">
            <div class="card-body">
              <img src="./brasilia.png" class="card-img-top" alt="...">
              <br>
              <br>
              <h5 class="card-title">Bras�lia por apenas R$250</h5>
              <p class="card-text">Partida de estados selecionados.</p>
              <a href="https://www.cvc.com.br/?utm_source=google&utm_medium=cpc_br&utm_content=2023_ic_t-roas_31-mar_perene&gclid=CjwKCAjwtuOlBhBREiwA7agf1kWxEazX16JMmlqBRyVScbW2jFRMzQE0aUdHzbGWxGiIEZI8_B7SQhoCZNYQAvD_BwE" class="btn btn-primary">Confira!</a>
            </div>
          </div>
        </div>
      
        <div class="col-sm-6">
          <div class="card">
            <div class="card-body">
              <img src="./saopaulo.png" class="card-img-top" alt="...">
              <br>
              <br>
              <h5 class="card-title">S�o Paulo por R$100</h5>
              <p class="card-text">Ponte �rea saindo do RJ.</p>
              <a href="https://www.cvc.com.br/?utm_source=google&utm_medium=cpc_br&utm_content=2023_ic_t-roas_31-mar_perene&gclid=CjwKCAjwtuOlBhBREiwA7agf1kWxEazX16JMmlqBRyVScbW2jFRMzQE0aUdHzbGWxGiIEZI8_B7SQhoCZNYQAvD_BwE" class="btn btn-primary">Confira!</a>
            </div>
          </div>
        </div>
      </div>
      <hr>
      <div class="row">
        <div class="col-sm-6">
          <div class="card">
            <div class="card-body">
              <img src="./recife.png" class="card-img-top" alt="...">
              <br>
              <br>
              <h5 class="card-title">Recife por apenas R$350</h5>
              <p class="card-text">Flexibilidade para viajar? Aproveite!</p>
              <a href="#" class="btn btn-primary">Confira!</a>
            </div>
          </div>
        </div>
      
        <div class="col-sm-6">
          <div class="card">
            <div class="card-body">
              <img src="./riodejaneiro.png" class="card-img-top" alt="...">
              <br>
              <br>
              <h5 class="card-title">Rio de Janeiro por R$200</h5>
              <p class="card-text">Venha curtir a cidade maravilhosa!</p>
              <a href="#" class="btn btn-primary">Confira!</a>
            </div>
          </div>
        </div>
      </div>
    
    <tr>
    <td>
    <br>
    </tr>
</td>
    <br>
    <br>
    <div class="col-11 m-auto">
        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </div>
    <footer style="background-color: #333;" class="page-footer font-small blue">
        <div class="text-center">
            <a href="https://recode.org.br/sobre-a-recode/?gclid=CjwKCAjwtuOlBhBREiwA7agf1iRvwrBdPwVSmhuQJFJna7Bgf-849tF1V8kuV4HMT_DcY9qM-BE7NRoCZm8QAvD_BwE">� Recode Pro 2023 - Desenvolvido por Myllene Nascimento</a>
        </div>
    </footer>
  </body>
</html>

	<script src="script.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>