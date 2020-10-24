@extends('templateadmin')

@section('titlepage')
    Insert Genre
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
        Title : <input type="text" class="form-control" name="nama" placeholder="judul buku" required>
        Genre : <select class="form-control" name="genre">
                    @foreach ($genreArr as $g)
                        <option value="{{ $g->id }}">{{ $g->nama }}</option>
                    @endforeach
                </select>
        Blurb : <textarea name="blurb" class="form-control" placeholder="blurb" rows="5"></textarea>
        Stock : <input type="number" class="form-control" min="0" name="stok" value="0" required>
        Writer : <input type="text" class="form-control" name="penulis" placeholder="nama penulis" required>
        Rating : <input type="number" class="form-control" name="rating" min="0" max="5" value="0" required>
        Languange : <select class="form-control" name="bahasa">
                    <option value="1">English</option>
                    <option value="2">Indonesia</option>
                    <option value="3">Chinese</option>

                    {{-- @foreach ($dataPenerbit as $p)
                        <option value="{{ $p->id }}">{{ $p->nama_penerbit }}</option>
                    @endforeach --}}
                </select>
        Gambar : <div class="form-group">
                    <input type="file" name="gambar" class="form-control" required>
                </div>
        Purchase Price : <input type="number" class="form-control" name="harga_beli" min="0" value="0" required>
        Selling Price : <input type="number" class="form-control" name="harga_jual" min="0" value="0" required>
        Discount : <input type="number" class="form-control" name="diskon" min="0" value="0" required> <br/>
        <button formaction="/book/insertBook" type="submit" class="btn btn-primary">Insert</button>
    </form>
@endsection

