@extends('template.home')

@section('title','Fudiku - Cara Baru Pesan Catering')

@section('main')


<div class="fudiku-cart-area">
    <div class="container-lg">
        <div class="cart-title">
            <!-- <h4>Keranjang saya</h4> -->
        </div>
        @foreach ($table_payment as $payment)
            
            @php
                $tableOrder = DB::table('order')
                                ->where('code_order',$payment->code_order)
                                ->join('subscription','order.subcription','=','subscription.id')
                                ->join('sub_category','order.sub_category','=','sub_category.id')
                                ->join('profile','order.id_customer','=','profile.id')
                                ->select('order.created_at AS tanggal_pesanan', 'subscription.name AS subscription_name','subscription.duration', 'sub_category.name AS subCat_name','profile.*')
                                ->first();
                if ($payment->status = 0) {
                    $bg = '#F0F0F0';
                }
                else{
                    $bg = '#FFFFFF';              
                }
            @endphp             
            <div class="cart-content d-block" style="background-color: {{ $bg }}">
                <div class="cart-desc">
                    <h5 class="subcategory">{{ $tableOrder->subCat_name }}</h5>
                    <h6 class="packet">{{ $tableOrder->subscription_name }} - <span>{{ $tableOrder->duration }} Hari</span></h6>
                    <!-- <h6 class="date">{{ date('D, j F Y',strtotime($tableOrder->tanggal_pesanan) ) }} </h6> -->
                    <h5 class="price">Rp.{{ getPrice($payment->amount) }}</h5>
                    <p class="address">{{ $tableOrder->alamat_lengkap }}
                    </p>
                    {{-- <div class="menu-desc">
                        <button class="btn k btn-danger">Detail</button>
                    </div> --}}
                </div>
                <div class="cart-menu owl-carousel owl-theme">
                    @php
                        $tableProduct = DB::table('order')
                                        ->where('code_order',$payment->code_order)
                                        ->join('product','order.date_delivery','=','product.date_delivery')
                                        ->get();
                    @endphp
                    @foreach ($tableProduct as $product)
                        <div class="cart-item">
                            <div class="cart-img">
                                <img src='{{ asset("img/product/$product->image") }}' class="w-100" alt="">
                            </div>
                            <div class="cart-desc">
                            <span class="date">{{date('d-m-Y', strtotime($product->date_delivery)) }}</span>  
                            <p class="name">{{ $product->name }}</p> 
                            </div>
                        </div>
                    @endforeach
                    {{-- @for($i = 1 ; $i < 7 ; $i++)
                    <div class="cart-item">
                        <div class="cart-img">
                            <img src="{{ asset('img/menu/ayam-goreng.jpg') }}" class="w-100" alt="">
                        </div>
                        <div class="cart-desc">
                        <span class="date">Rab 21 Okt 2020</span>  
                        <p class="name">Ayam Bakar</p> 
                        </div>
                    </div>
                    @endfor --}}
                </div>
            </div>
        @endforeach

        {{-- <div class="cart-content" style="background: #FFF;">
            <div class="cart-desc">
                <h5 class="subcategory">Chicken Club</h5>
                <h6 class="packet">Favorite - <span>5 Hari</span></h6>
                <p class="address">Jalan Beringin Pasar V Gg.Mentimun 26
                    Kecamatan Percut Sei Tuan, Kab. Deli Serdang
                </p>
                <h6 class="date">Rabu, 21 Okt, Kamis, 22 Okt,Jum'at...</h6>
                <h5 class="price">Rp.69999</h5>
            </div>
            <div class="cart-menu">
               <div class="menu-img">
                <img src="{{ asset('img/menu/ayam.jpg') }}" alt="">
               </div>
               <div class="menu-desc">
                    <p class="menu-date">Rabu, 21 Oktober 2020</p>
                    <h6 class="menu-name">Ayam Bakar</h6>
               </div>

            </div>
        </div> --}}
    </div>
</div>

<div class="mobile-bottom-nav fixed-bottom">
  <nav class="navbar navbar-expand-lg">
    <div class="container-lg">
      <ul class="navbar-nav">
        <li class="nav-item">
            <a href="{{ route('profile') }}" class="nav-link"><i class="flaticon-user"></i></a>
            Profile
        </li>
        <li class="nav-item active">
            <a href="{{ route('home') }}" class="nav-link"><i class="flaticon-house"></i></a>
            Home
        </li>
        <li class="nav-item">
            <a href="{{ route('cart') }}" class="nav-link"><i class="flaticon-shopping-bag"></i></a>
            Cart
        </li>
      </ul>
    </div>
  </nav>
</div>
@endsection