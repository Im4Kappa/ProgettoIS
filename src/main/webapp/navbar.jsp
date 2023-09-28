<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.19.0/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="css/css.css" rel="stylesheet">
</head>
<nav class="navbar navbar-expand-lg navbar-top">
    <div class="container">
            <span class="navbar-text mr-auto">
                Spedizione gratuita su ordini superiori a €75 | Restituzioni estese fino al 31 gennaio 2023
            </span>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">Aiuto</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Negozio</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Notizie</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">NBA League Pass</a>
            </li>
        </ul>
    </div>
</nav>
<!navbar centrale!>
<nav class="navbar">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="${pageContext.request.contextPath}/image/logo.png" alt="Logo" width="100" height="120" class="d-inline-block align-text-top">
        </a>
        <div class="container">
            <form class="mx-auto my-2 my-lg-0">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Cerca..." aria-label="Cerca..." aria-describedby="button-addon2">
                    <button class="btn btn-search" type="button" id="button-addon2">
                        <span class="iconify" data-icon="system-uicons:search"></span>
                    </button>
                </div>
            </form>
        </div>
    </div>
</nav>
<!navbar inferiore!>
<nav class="navbarsotto navbar-expand-lg navbar-dark">
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    SHOP BY TEAM
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                    <a class="dropdown-item" href="#">Maglie Uomo</a>
                    <a class="dropdown-item" href="#">Maglie Donna</a>
                    <a class="dropdown-item" href="#">Maglie Bambino</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    UOMINI
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                    <a class="dropdown-item" href="#">Cappelli Uomo</a>
                    <a class="dropdown-item" href="#">Cappelli Donna</a>
                    <a class="dropdown-item" href="#">Cappelli Bambino</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    DONNE
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown3">
                    <a class="dropdown-item" href="#">Sciarpe</a>
                    <a class="dropdown-item" href="#">Calze</a>
                    <a class="dropdown-item" href="#">Zaini</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    BAMBINI
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown3">
                    <a class="dropdown-item" href="#">Sciarpe</a>
                    <a class="dropdown-item" href="#">Calze</a>
                    <a class="dropdown-item" href="#">Zaini</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    MAGLIE
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown3">
                    <a class="dropdown-item" href="#">Sciarpe</a>
                    <a class="dropdown-item" href="#">Calze</a>
                    <a class="dropdown-item" href="#">Zaini</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    CALZATURE
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown3">
                    <a class="dropdown-item" href="#">Sciarpe</a>
                    <a class="dropdown-item" href="#">Calze</a>
                    <a class="dropdown-item" href="#">Zaini</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">T-SHIRT</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">RETRO</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">SALDI</a>
            </li>
        </ul>
    </div>
</nav>

<script>
    // Apri i dropdown al passaggio del mouse
    document.querySelectorAll('.nav-item.dropdown').forEach(item => {
        item.addEventListener('mouseover', () => {
            item.querySelector('.dropdown-menu').classList.add('show');
        });

        item.addEventListener('mouseleave', () => {
            item.querySelector('.dropdown-menu').classList.remove('show');
        });
    });
</script>
</html>
