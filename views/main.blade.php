@extends('layouts.app')

@section('content')
    <!-- Post -->
    <article class="post">
        <header>
            <div class="title">
                <h1><a href="single.html">Magna sed adipiscing</a></h1>
                <a href="single.html" class="image featured"><img src="images/pic02.jpg" alt="" /></a>
            </div>
        </header>
        <p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod
            placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non
            congue ullam corper. Praesent tincidunt
            sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam
            non fringilla.</p>
        <footer>
            <ul class="stats">
                <li><a href="/tags/afrika" class="icon solid fa-tag">Африка</a></li>

                <li><a href="#" class="icon solid fa-heart">28</a></li>
                <li><a href="#" class="icon solid fa-comment">128</a></li>
            </ul>
        </footer>
    </article>

    <!-- Post -->
    <article class="post">
        <header>
            <div class="title">
                <h1><a href="single.html">Ultricies sed magna euismod enim vitae gravida</a></h1>
                <a href="single.html" class="image featured"><img src="images/pic02.jpg" alt="" /></a>
            </div>
        </header>

        <p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod
            placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non
            congue ullam corper.</p>
        <footer>
            <ul class="stats">
                <li><a href="/tags/afrika" class="icon solid fa-tag">Африка</a></li>
                <li><a href="#" class="icon solid fa-heart">28</a></li>
                <li><a href="#" class="icon solid fa-comment">128</a></li>
            </ul>
        </footer>
    </article>

    <!-- Pagination -->
    <ul class="actions special pagination">
        <li><a href="" class="disabled button  previous">&laquo;</a></li>
        <li><a href="#" class="button ">1</a></li>
        <li class=" is-active">2</li>
        <li>...</li>

        <li><a href="#" class="button ">10</a></li>

        <li><a href="#" class="button  next">&raquo;</a></li>
    </ul>
@endsection
