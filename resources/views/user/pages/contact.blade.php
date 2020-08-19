 @extends('user.master')
@section('content')

<div class="columns-container">
    <div class="container" id="columns">
        <!-- breadcrumb -->

        <div class="breadcrumb clearfix" style="font-size: 11px; font-weight: bold; color: black">
            <a class="home" href="#" title="Return to Home">Home</a>
            <span class="navigation-pipe"><span class="navigation-pipe"></span></span>
            <a href="#" title="Return to Home">Liên hệ</a>
        </div>
        @include('admin.blocks.errors')
        <!-- ./breadcrumb -->
        <!-- page heading-->
        <h2 class="page-heading">
            <span class="page-heading-title2">Liên hệ</span>
        </h2>
        <!-- ../page heading-->
        <div id="contact" class="page-content page-contact">
            <div id="message-box-conact"></div>
            <div class="row">
                
                <div class="col-sm-6">
                   <form action="{{route('addcontact')}}" method="post">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                       <div class="contact-form-box">
                       <div class="form-selector">
                            <label class="group-title-control">Họ Tên <span style="color: red; font-size: 20px">*</span></label>
                            <input type="text" class="form-control input-sm" id="name" name="name" required="" />
                        </div>
                        <div class="form-selector">
                            <label class="group-title-control">Email <span style="color: red; font-size: 20px">*</span></label>
                            <input type="text" class="form-control input-sm" id="email" name="email" required="" />
                        </div>
                        <div class="form-selector">
                            <label class="group-title-control">Điện Thoại <span style="color: red; font-size: 20px">*</span></label>
                            <input type="text" class="form-control input-sm" id="phone" name="phone" required="" />
                        </div>
                        <div class="form-selector">
                            <label class="group-title-control">Nội Dung <span style="color: red; font-size: 20px">*</span></label>
                            <textarea class="form-control input-sm" rows="10" id="message" name="content" required=""></textarea>
                        </div>
                        <div class="form-selector">
                            <button id="btn-send-contact" class="btn btn-send">Gửi</button>
                        </div>
                    </div>
                   </form>
                    
                </div>
                <div class="col-xs-12 col-sm-6" id="contact_form_map" style="margin-top: 40px">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.092306905984!2d106.68464931530129!3d10.804241992302696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528db3cdb4fd1%3A0x9da116cb40a986ab!2zMUEgTmd1eeG7hW4gVsSDbiDEkOG6rXUsIFBoxrDhu51uZyA1LCBQaMO6IE5odeG6rW4sIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1544841770493" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection 