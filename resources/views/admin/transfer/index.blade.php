@extends('template/admin')

@section('title','Admin')

@section('main')

@section('main-heading')

    <div class="breadcrumb-area">
        <div class="breadcrumb">
            <li class="breadcrumb-item">Dashboard</li>
            <li class="breadcrumb-item active">Transfer</li>
        </div>

    </div>
    <div class="add-area ml-auto">
        <a href="#" class="btn add-btn" data-toggle="modal" data-target="#exampleModal">
            Tambah Data
        </a>
    </div>

@endsection 
<div class="table-area">
    <div class="table-header">
    </div>
    <div class="table-body">
        @if ($message = Session::get('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>{{ $message }}</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        @endif
        @if (count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Bank</th>
                    <th scope="col">Nomor Rekening</th>
                    <th scope="col">Atas Nama</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($table as $data)
                    <tr>
                        <th scope="row">{{ $loop->index + 1 }}</th>
                        <td scope="row">{{ $data->name }}</td>                                    
                        <td scope="row">{{ $data->no_rekening }}</td>                                    
                        <td scope="row">{{ $data->name_rekening }}</td>                                    
                        <td scope="row">
                        <a href='{{ url("admin/deleteTransfer/$data->id") }}' class="btn btn-danger btn-sm">Delete</a>
                        <button href='' class="btn updateBtn btn-sm btn-info" data-id="{{ $data->id }}">Update</button>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>    
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Tambah Metode Pembayaran</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form action="{{ route('postTransfer') }}" method="post" enctype="multipart/form-data">
            <div class="modal-body">
                @csrf
                <div class="form-group">
                    <label for="exampleInputEmail1">Name</label>
                    <input type="text" name="name" class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Nomor Rekening</label>
                    <input type="text" name="no_rekening" class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Atas Nama</label>
                    <input type="text" name="name_rekening" class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Logo</label>
                    <input type="file" name="logo" class="form-control">
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                <button type="submit" class="btn btn-primary">Tambah</button>
            </div>
        </form>
        </div>
    </div>
</div>


<div class="modal fade" id="updateModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="editFormKategori" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="id" id='id'>
                @csrf
                <div class="modal-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Name</label>
                        <input type="text" name="name" id='name' class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Nomor Rekening</label>
                        <input type="text" name="no_rekening" id="no_rekening" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Atas Nama</label>
                        <input type="text" name="name_rekening" id="atas_nama" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Logo</label><br>
                        <input type="file" name="logo" id="logo" class="form-control">
                        <i>*isi jika mau diupdate</i>
                    </div>
                </div>
                
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Tambah</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection


@section('script')
    <script>
        $(document).ready(function(){
            $('.updateBtn').click(function(){
                $('.modal-title').text('Update Data')
                $('#updateModal').modal('show');
                
                $tr = $(this).closest('tr');

                var data = $tr.children('td').map(function(){
                    return $(this).text();
                }).get();

                var dataId = $(this).attr('data-id');


                $('#name').val(data[0]);
                $('#no_rekening').val(data[1]);
                $('#atas_nama').val(dataId);
                $('#id').val(dataId);
                
            });  
        });
        
        // $('#editFormKategori').on('submit',function(e){
        //     e.preventDefault();
        //     var id = $('#id').val();

        //     $.ajax({
        //         type:'POST',
        //         url : '/admin/updateCategory/'+id,
        //         data:$('#editFormKategori').serialize(),
        //         success:function(response){
        //             console.log(response);
        //             $('#updateModal').modal('hide');
        //             window.location.reload();
        //         },
        //         error:function(error){
        //             console.id(id)
        //         } 
        //     });
        // })
    </script>
@endsection