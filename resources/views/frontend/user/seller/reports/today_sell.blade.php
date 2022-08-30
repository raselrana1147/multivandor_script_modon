@extends('frontend.layouts.user_panel')

@section('panel_content')
    

    <div class="card">

        <div class="card-header">
            <div class="col text-center text-md-left">
                <h5 class="mb-md-0 h6">{{ translate('Today Selling history') }}</h5>
            </div>
        </div>
        
        <div class="card-body">
        
        <table class="table table-bordered aiz-table mb-0">
        <thead>
            <tr>
                <th>#</th>
                <th>{{ translate('Order Code') }}</th>
             {{--    <th>{{ translate('Admin Commission') }}</th>
                <th>{{ translate('Seller Earning') }}</th> --}}
                <th>{{ translate('Sub Total') }}</th>
                <th>{{ translate('Created At') }}</th>
            </tr>
        </thead>
        <tbody>
            @php

                $grand_total=0;
                // $total_commission=0;
                // $total_earning=0;

            @endphp
            @foreach ($sells as $key => $sell)
            @php

               // $grand_total+=$sell->order->grand_total;
               // $total_commission+=$sell->admin_commission;
                $grand_total+=$sell->grand_total;

            @endphp
            <tr>
                <td>{{ ($key+1) }}</td>
                <td>{{ $sell->code }}</td>
                {{-- <td>{{ $sell->admin_commission }}</td>
                <td>{{ $sell->seller_earning }}</td> --}}
                <td>{{ $sell->grand_total }}</td>
                <td>{{ $sell->created_at }}</td>
            </tr>
            @endforeach
            

        </tbody>

    </table>
        <div class="calculation-area">
            {{-- <span><strong>Total Commission: {{$total_commission}}</strong></span>
            <span><strong>Total Earning: {{$total_earning}}</strong></span> --}}
            <span><strong>Grand Total: {{$grand_total}}</strong></span>
        </div>
    <div class="aiz-pagination mt-4">
        {{ $sells->links() }}
    </div>


        </div>
    </div>

@endsection
