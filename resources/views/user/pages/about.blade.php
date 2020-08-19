 @extends('user.master')
@section('content')
<!-- Home slideder-->
<!-- END Home slideder-->

<div class="columns-container">
    <div class="container" id="columns">
        <!-- breadcrumb -->
        <div class="breadcrumb clearfix" style="font-size: 11px; font-weight: bold; color: black">
            <a class="home" href="#" title="Return to Home">Home</a>
            <span class="navigation-pipe"><span class="navigation-pipe"></span></span>
            <a href="#" title="Return to Home">Giới thiệu</a>
        </div>
        <!-- ./breadcrumb -->
        <!-- row -->
        <div class="row">
            <div class="col-xs-12 col-sm-12">
                <!-- page heading-->
                <h2 class="page-heading">
                    <span class="page-heading-title2">{{$about->title_vi}}</span>
                </h2>
                <!-- Content page -->
                <div class="content-text clearfix">
                    {!! $about->content_vi !!}
                </div>
                <!-- ./Content page -->
            </div>
            <!-- ./ Center colunm -->
        </div>
        <!-- ./row-->
    </div>
</div>

@endsection 