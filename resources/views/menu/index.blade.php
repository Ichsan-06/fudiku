@extends('template/home')

@section('title','Fudiku - Cara Baru Pesan Catering')

@section('main')
<div class="fudiku-search-area">
    <div class="search-content">
        <div class="fudiku-search">
            <div class="form-field">
                <i class="icofont-rounded-down"></i></button>
                <input type="text" class="form-control" value="{{ $location }}">
            </div>
        </div>
        <div class="fudiku-category">
            <ul class="nav">
                @foreach($categories as $category)
                <li class="nav-item">
                    <a href="{{ url("menu/$category->slug/$location") }}" class="nav-link" >{{ $category->name}}</a>
                </li>                                    
                @endforeach   
            </ul>
        </div>
    </div> 
</div>
@if ($count == 0)
<div class="fudiku-not-available-area">
    <div class="container-lg">
        <div class="not-available-content">
            <div class="not-available-img">
                <img src="{{ asset('img/vector/not-available.png') }}" alt="">
            </div>
            <div class="not-available-title">
                <h5 class="title">Maaf, layanan belum tersedia di daerahmu.</h5>
            </div>
        </div>
    </div>
</div>    
@else

<div class="fudiku-delivery-area">
    <div class="container-lg">
        <div class="delivery-content">
            <div class="delivery-info">
                <h6><strong>Pengantaran 11.00 - 13.00 WIB</strong></h6>
                <small>Pesananmu akan tiba secepatnya.</small>
            </div>
        </div>
    </div>
</div>


@foreach ($sub_category as $sub)
<div class="fudiku-menu-area">
    <div class="container-lg">
        {{-- <form action="{{ route('order') }}" method="POST"> --}}
            @csrf
            <input type="hidden" name="location" value="{{ $location }}">
                <input type="hidden" name="id" value="{{ $sub->id }}">
                @php
                    $product = App\Product::where('id_sub_category',$sub->id)
                    ->where( 'date_delivery', '>', \Carbon\Carbon::now())
                    ->limit(15)
                    ->get();                    
                @endphp
                <div class="menu-content">
                    <div class="menu-title">
                        <h3 class="title">{{ $sub->name }}</h3>
                        <p class="subtitle">{{ $sub->information }}</p>
                    </div>
                    <div class="menu owl-carousel owl-theme">
                        @foreach($product as $products)
                        <div class="menu-item">
                                <div class="menu-img">
                                    <img src='{{ asset("img/product/$products->image") }}' alt="">
                                </div>
                                <div class="menu-desc">
                                    <span class="date">{{$products->date_delivery->isoFormat('dddd, D MMMM Y') }}</span>
                                    <p class="menu-name">{{$products->name }}</p>
                                </div>
                            </div>
                        @endforeach
                    </div>
                    <div class="menu-cta">
                        {{-- <button type="submit" class="">Langganan</button> --}}
                        <a href="{{ url("/order/$location/$sub->id") }}" class="btn next">Langganan</a>
                    </div>
                </div>
                {{-- </form> --}}
                
    </div>
</div>
@endforeach 
@endif

@endsection


@section('script')
    
@endsection