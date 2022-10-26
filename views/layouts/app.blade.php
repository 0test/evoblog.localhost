<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8" />
    <base href="{{ $modx->getConfig('site_url') }}">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="template/css/main.min.css" />
    <title>index</title>
</head>

<body class="is-preload">
    <div id="wrapper">
        @include('parts.header')
        @include('parts.menu')
        <main id="main">
            @yield('content')
        </main>
        @include('parts.sidebar')
    </div>
    <script src="template/js/all.min.js"></script>
</body>
</html>
