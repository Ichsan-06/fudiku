@extends('template.home')

@section('title','Fudiku - Cara Baru Pesan Catering')

@section('main')

<div class="fudiku-schedule-area">
    <div class="container-lg">
        <div class="schedule-content">
            <form action="{{ route('form') }}" method="POST">
                @csrf
                <div class="row">
                    <div class="col-md-4">
                        <div class="schedule-calendar">
                            <div class="fudiku-calendar" data-language='en' 
                            data-multiple-dates="{{ $tb_subscription->duration }}"
                            data-multiple-dates-separator=","
                            ></div>
                            <input type="text" name="tanggal" id="tanggal" required style="display:none;">
                            <input type="hidden" name="id_subcategory" value="{{ $subCategory->id }}">
                            <input type="hidden" name="id_subscription" value="{{ $id_subscription }}">
                            <input type="hidden" name="location" value="{{ $location }}">
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="schedule-menu">
                            <div class="schedule-title">
                                <h3 class="title">{{ $subCategory->name }}</h3>
                                <span class="subtitle">{{ $subCategory->information }}</span>
                            </div>
                            <div class="schedule-menu-item owl-carousel owl-theme">
                                @foreach ($product as $products)
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
                            <div class="schedule-cta">
                                <button class="btn next">Lanjutkan</button>
                            </div>
                        </div>
                    </div>   
                </div>
                
            </form>
        </div>
        
    </div>
</div>

@endsection

@section('script')
    <script>
        $(document).ready(function(){
            var myDates = $('.fudiku-calendar').datepicker().data('datepicker');
            var today = new Date();
            var dd = today.getDate()+1;
            var mm = today.getMonth();
            var yyyy = today.getFullYear();


            var todayMax = new Date();
            var ddMax = todayMax.getDate()+15;
            var mmMax = todayMax.getMonth();
            var yyyyMax = todayMax.getFullYear();


            $('.fudiku-calendar').datepicker({
                language: 'en',
                minDate : new Date(yyyy,mm,dd),
                maxDate : new Date(yyyyMax,mmMax,ddMax),
                onSelect: function(fd, date) {
                    $('#tanggal').val(fd);
                }
            })
        });
        

    </script>

@endsection