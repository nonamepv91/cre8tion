@extends('layout.index')
@section('content')
<div class="columns-container">
    <div class="container" id="columns">
        <!-- breadcrumb -->
        <div class="breadcrumb clearfix">
            <a class="home" href="#" title="Return to Home">Home</a>
            <span class="navigation-pipe">&nbsp;</span>
            <span class="navigation_page">{{$privacy->title_vi}}</span>
        </div>
        <!-- ./breadcrumb -->
        <!-- row -->
        <div class="row">
           
            <div class="col-xs-12 col-sm-12">
                <!-- page heading-->
                <h2 class="page-heading">
                    <span class="page-heading-title2">{{$privacy->$title}}</span>
                </h2>
                <!-- Content page -->
                <div class="content-text clearfix">

				{!! $privacy->$content !!}

                </div>

                </div>
                <!-- ./Content page -->
            </div>
            <!-- ./ Center colunm -->
        </div>
        <!-- ./row-->
    </div>
</div>

@endsection 