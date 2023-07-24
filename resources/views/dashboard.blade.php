@extends('layouts.mainlayout')

@section('title', 'Dashboard')

@section('content')

    <h1>Welcome, {{ Auth::user()->username }}</h1>

    <div class="row mt-5">
        <div class="col-lg-4">
            <div class="card-data book">
                <div class="row">
                    <div class="col-6"><i class="bi bi-journal-bookmark"></i></div>
                    <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                        <div class="card-desc">Books</div>
                        <div class="card-count">{{ $book_count }}</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="card-data category">
                <div class="row">
                    <div class="col-6"><i class="bi bi-list-ul"></i></div>
                    <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                        <div class="card-desc">Categories</div>
                        <div class="card-count">{{ $category_count }}</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="card-data user">
                <div class="row">
                    <div class="col-6"><i class="bi bi-people"></i></div>
                    <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                        <div class="card-desc">Users</div>
                        <div class="card-count">{{ $user_count }}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="mt-5">
        <h2>Rent Log Users</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>User</th>
                    <th>Book Title</th>
                    <th>Rent Date</th>
                    <th>Return Date</th>
                    <th>Actual Return Date</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($rent_logs as $item)
                    @if ($item->actual_return_date === null)
                        <tr>
                            <td>{{ $item->user->username }}</td>
                            <td>{{ $item->book->title }}</td>
                            <td>{{ $item->rent_date }}</td>
                            <td>{{ $item->return_date }}</td>
                            <td>{{ $item->actual_return_date }}</td>
                            <td>{{ $item->jumlah }}</td>
                        </tr>
                    @endif
                @endforeach
                @if (count($rent_logs) == 0)
                    <tr>
                        <td colspan="5" class="text-center">No Data</td>
                    </tr>
                @endif
            </tbody>
        </table>
    </div>
@endsection
