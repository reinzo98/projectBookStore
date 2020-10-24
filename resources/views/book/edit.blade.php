@extends('templateadmin')

@section('titlepage')
    Insert Book
@endsection

@section('namaAdminLogin')

@endsection

@section('namaAdminLogin2')

@endsection

@section('emailAdminLogin')

@endsection

@include('alert')

@section('content')
<br/>
<form method="post" enctype="multipart/form-data">
    @csrf
    ID : <input type="text" class="form-control" value="{{ $Book->id }}" readonly>
    Title : <input type="text" class="form-control" name="nama" value="{{ $Book->nama }}" required>
    Genre : <select class="form-control" value="{{ $Book->genre }}" name="genre">
                @foreach ($genreArr as $g)
                    <option value="{{ $g->id }}">{{ $g->nama }}</option>
                @endforeach
            </select>
    Blurb : <textarea name="blurb" class="form-control" value="{{ $Book->blurb }}" rows="5"></textarea>
    Stock : <input type="number" class="form-control" min="0" value="{{ $Book->stok }}" name="stok" value="0" required>
    Writer : <input type="text" class="form-control" value="{{ $Book->penulis }}" readonly>
    Rating : <input type="number" class="form-control" value="{{ $Book->rating }}" name="rating" min="0" max="5" value="0" required>
    Languange : <input type="text" class="form-control" value="{{ $Book->bahasa_id }}" readonly>
    Gambar : <div class="form-group">
                <input type="file" name="gambar" class="form-control">
            </div>
    Purchase Price : <input type="number" class="form-control" value="{{ $Book->harga_beli }}" name="harga_beli" min="0" value="0" required>
    Selling Price : <input type="number" class="form-control" value="{{ $Book->harga_jual }}" name="harga_jual" min="0" value="0" required>
    Discount : <input type="number" class="form-control" value="{{ $Book->diskon }}" name="diskon" min="0" value="0" required> <br/>
    <button formaction="/book/edit/{{ $Book->id }}" type="submit" class="btn btn-primary">Update</button>
</form>
@endsection

