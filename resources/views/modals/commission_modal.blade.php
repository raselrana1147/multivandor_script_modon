<!-- delete Modal -->
<div id="add-commission" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title h6">{{translate('Add Commission')}}</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="modal-body">

                <form class="form form-horizontal mar-top" action="{{route('products.commission.add')}}" method="POST" enctype="multipart/form-data" id="choice_form">
                    <div class="row gutters-5">
                        <div class="col-12">
                            @csrf
                            <input type="hidden" id="set_product_id" name="product_id" value="">
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <input type="number" class="form-control" name="commission" placeholder="{{ translate('Amount') }}" required>
                                    </div>
                                </div>

                                 <div class="form-group row">
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-success btn-circle btn-sm">Add Commission</button>
                                    </div>
                                </div>
                        </div>

                    </div>
               </form>
               
            </div>
        </div>
    </div>
</div><!-- /.modal -->
