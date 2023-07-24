<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Perpusku | @yield('title')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>

<style>
    .custom-brand {
        font-size: 24px;
        font-weight: bold;
        color: #fff;
    }
</style>

<body>
    <div class="main d-flex flex-column justify-content-between">
        <nav class="navbar navbar-dark navbar-expand-lg bg-primary">
            <div class="container-fluid">
                    <a class="navbar-brand custom-brand" href="#">
                    <span style="font-family: Cambria;">PERPUSKU</span>
                    </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </nav>

        <div class="body-content h-100">
            <div class="row g-0 h-100">
                <div class="sidebar col-lg-2 collapse d-lg-block" id="navbarTogglerDemo03">
                    @if (Auth::user())
                        @if (Auth::user()->role_id == 1)
                            <a href="/dashboard" class="@if (request()->route()->uri == 'dashboard') active @endif"><i
                                    class="bi bi-speedometer2"></i> Dashboard</a>
                            <a href="/books" class="@if (request()->route()->uri == 'books' ||
                                    request()->route()->uri == 'book-add' ||
                                    request()->route()->uri == 'book-deleted' ||
                                    request()->route()->uri == 'book-edit/{slug}' ||
                                    request()->route()->uri == 'book-delete/{slug}') active @endif"><i
                                    class="bi bi-journal"></i> Books</a>
                            <a href="/categories" class="@if (request()->route()->uri == 'categories' ||
                                    request()->route()->uri == 'category-add' ||
                                    request()->route()->uri == 'category-deleted' ||
                                    request()->route()->uri == 'category-edit/{slug}' ||
                                    request()->route()->uri == 'category-delete/{slug}') active @endif"><i
                                    class="bi bi-list-ul"></i> Categories</a>
                            <a href="/users" class="@if (request()->route()->uri == 'users' ||
                                    request()->route()->uri == 'registered-users' ||
                                    request()->route()->uri == 'user-detail/{slug}' ||
                                    request()->route()->uri == 'user-ban/{slug}' ||
                                    request()->route()->uri == 'user-banned') active @endif"><i
                                    class="bi bi-people"></i> Users</a>
                            <a href="/rent-logs" class="@if (request()->route()->uri == 'rent-logs') active @endif"><i
                                    class="bi bi-file-earmark-text"></i> Rent Log</a>
                            <a href="/book-rent" class="@if (request()->route()->uri == 'book-rent') active @endif"><i
                                    class="bi bi-journal-check"></i> Book Rent</a>
                            <a href="book-return" class="@if (request()->route()->uri == 'book-return') active @endif"><i
                                    class="bi bi-arrow-counterclockwise"></i> Book Return</a>
                            <a href="/logout"><i class="bi bi-box-arrow-right"></i> Logout</a>
                        @else
                            <a href="/profile" class="@if (request()->route()->uri == 'profile') active @endif"><i
                                    class="bi bi-person"></i> Profile</a>
                            <a href="/"><i class="bi bi-journal"></i> Book List</a>
                            <a href="/logout"><i class="bi bi-box-arrow-right"></i> Logout</a>
                        @endif
                    @else
                        <a href="/login"><i class="bi bi-box-arrow-in-right"></i> Login</a>
                    @endif
                </div>
                <div class="content p-5 col-lg-10">
                    @yield('content')
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous">
    </script>
</body>

</html>
