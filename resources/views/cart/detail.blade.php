@extends('template.home')

@section('title','Fudiku - Cara Baru Pesan Catering')

@section('main')

<div class="fudiku-cart-detail-area">
    <div class="container-lg">
        <div class="cart-detail-content">
            <div class="cart-content">
                <div class="row">
                    <div class="col-md-8">
                        <div class="cart-menu">
                            <div class="cart-title">
                                <h5 class="title">Chicken Club</h5>
                                <h6 class="subtitle">Favorite - <span>5 Hari</span></h6>
                                <p class="address">Jalan Beringin Pasar V Gg.Mentimun 26
                                    Kecamatan Percut Sei Tuan, Kab. Deli Serdang
                                </p>
                            </div>
                            <div class="cart-menu-item owl-carousel owl-theme">
                                @for($i = 1 ; $i < 7 ; $i++)
                                <div class="cart-item">
                                    <div class="cart-img">
                                        <img src="{{ asset('img/menu/ayam2.jpg') }}" class="w-100" alt="">
                                    </div>
                                    <div class="cart-desc">
                                    <p class="date">Rab 21 Okt 2020</p>  
                                    <h6>Ayam Bakar</h6> 
                                    </div>
                                </div>
                                @endfor
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="cart-information">
                            
                            <h6 class="title">Status Pembayaran</h6>
                            <h5 class="price">Rp. 69.999</h5>
                            <a href="">Selengkapnya</a>            
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection