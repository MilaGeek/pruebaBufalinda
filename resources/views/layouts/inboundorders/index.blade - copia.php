@extends('welcome')

@section('title')
    History
@endsection

@section('extra-css')
    <style type="text/css">
        tfoot input {
            width: 100%;
            padding: 3px;
            box-sizing: border-box;
        }
    </style>
@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header card-header-icon" data-background-color="green">
                    <i class="material-icons">assignment</i>
                </div>
                <div class="card-content">
                    <h4 class="card-title">History</h4>
                    <div class="toolbar">
                        <!--        Here you can write extra buttons/actions for the toolbar              -->
                    </div>
                    <div class="material-datatables">
                        <table id="datatables" class="table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
                            <thead>
                                <tr>
                                    
                                    <th>Date</th>              
                                    <th>Date Export</th>
                                    <th>Air Waybill</th>
                                    <th>Purchase order</th>
                                    <th>Location</th>
                                    <th>Documents</th>
                                    <th>Status</th>
                                    <th class="disabled-sorting text-right">Actions</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Date</th>
                                    <th>Date Export</th>
                                    <th>Air Waybill</th>
                                    <th>Purchase order</th>
                                    <th>Location</th>
                                    <th>Documents</th>
                                    <th>Status</th>
                                    <th class="text-right">Actions</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @foreach($inbound_order as $item)
                                    <tr class="text-center">
                                        <td><?PHP echo date('m/d/Y',strtotime($item->ciord_date));?></td>
                                        <td><?PHP echo date('m/d/Y',strtotime($item->ciord_export_date));?></td>
                                        <td>{{$item->ciord_guia_aerea}}</td>
                                        <td>{{$item->ciord_orden_compra}}</td>
                                        <td>
                                            {{$item->warehouse->house_name}} 
                                            @if($item->id_status == 3 && $item->warehouse->house_step != 3)
                                                <a href="#" class="btn btn-simple btn-warning btn-icon" data-toggle="modal" data-target="#myModal{{ $item->id_ciord}}"><i class="material-icons">edit</i></a>
                                            @endif
                                        </td>
                                        <td>
                                            @if($item->warehouse->house_step == 3)
                                                @if(count($order_doc) > 0)
                                                    @foreach ($cab_doc as $key => $value)
                                                        @if( $key == $item->id_ciord)
                                                            @if (in_array("0", $value))
                                                            <a href="#" class="btn btn-simple btn-success btn-icon" data-toggle="modal" data-target="#myModalDocument{{ $item->id_ciord}}"><i class="material-icons">backup</i></a>
                                                            @endif
                                                        @endif
                                                    @endforeach

                                                @else
                                                    <a href="#" class="btn btn-simple btn-success btn-icon" data-toggle="modal" data-target="#myModalDocument{{ $item->id_ciord}}"><i class="material-icons">backup</i></a>
                                                @endif
                                                
                                                <br>
                                            @if(count($order_doc) > 0)
                                                @foreach ($cab_doc as $key_doc_rut => $doc_rut_val)

                                                    @if($item->id_ciord == $key_doc_rut)

                                                        @foreach($doc_rut_val as $key_doc => $doc_val)

                                                            @foreach($document as $item2)

                                                                @if($item2->id_doc == $key_doc)

                                                                    @if($doc_val != 0)

                                                                    {{$item2->doc_description}} <br>
                                                                            
                                                                    @endif
                                                                        
                                                                @endif

                                                            @endforeach

                                                        @endforeach

                                                    @endif

                                                @endforeach
                                            @endif
                                                
                                            @endif
                                        </td>
                                        
                                        <td>{{$item->statu->status}} </td>
                                        <td class=" text-right">
                                            <a href="{{ url('inbound_orders/show/'. $item->id_ciord) }} " class="btn btn-simple btn-info btn-icon"><i class="material-icons">find_in_page</i></a>
                                        </td>
                                    </tr>
                                    <!-- Classic Modal -->
                                    <div class="modal fade" id="myModal{{ $item->id_ciord}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-small">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="material-icons">clear</i></button>
                                                    <h4 class="modal-title"> Inbound Order #{{ $item->id_ciord}} Location</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="card-content">
                                                        <form action="{{ url('inbound_orders/update/'. $item->id_ciord) }} " method="post">
                                                            {{ csrf_field() }}
                                                            @if($item->warehouse->house_step == 1)
                                                                <div class="row" style="margin-top: -50px;">
                                                                    <div class="col-md-6 col-md-offset-2">
                                                                        <div class="form-group">
                                                                            {!! Form::select('location_index',$location_one, null, ['class' => 'selectpicker form-group', 'data-style' => 'select-with-transition', 'data-size' => '7']) !!}
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            @elseif($item->warehouse->house_step == 2)
                                                                <div class="row" style="margin-top: -50px;">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            {!! Form::select('location_index',$location_two, null, ['class' => 'selectpicker form-group', 'data-style' => 'select-with-transition', 'data-size' => '7']) !!}
                                                                            <input type="hidden" name="location_index_ind" value="2">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            @endif
                                                            <div class="clearfix"></div>
                                                            <button type="submit" class="btn btn-success  btn-sm pull-right">Save</button>
                                                        </form>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <!--  End Modal -->
                                    <!-- Classic Modal -->
                                    <div class="modal fade" id="myModalDocument{{ $item->id_ciord}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                        <i class="material-icons">clear</i>
                                                    </button>
                                                    <h4 class="modal-title"> Inbound Order #{{ $item->id_ciord}} Documents</h4>
                                                </div>
                                                <form action="{{ url('inbound_orders/update/'. $item->id_ciord) }} " method="post" enctype="multipart/form-data">
                                                    {{ csrf_field() }}
                                                    <div class="modal-body">
                                                        <div class="table-responsive">
                                                            @foreach($document as $doc)

                                                            @if($cab_doc == 0)

                                                                @if( $doc->id_doc == '8')
                                                                <input type="hidden" name="id_doc[]" value="{{ $doc->id_doc }}">
                                                                <div class="col-md-4 ">
                                                                    <div class="form-group">
                                                                        <p>{{ $doc->doc_description}}</p>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-5">
                                                                    <div class="form-group label-floating">
                                                                        <div class="fileinput fileinput-new " data-provides="fileinput">
                                                                            <div class="fileinput-preview fileinput-exists thumbnail"></div>
                                                                            <div>
                                                                                <span class="btn btn-success btn-xs btn-file">
                                                                                    <span class="fileinput-new">Select document</span>
                                                                                    <span class="fileinput-exists">Change</span>
                                                                                    <input name="documents_airport[]" type="file" accept="application/pdf"/>
                                                                                </span>
                                                                                <a href="#pablo" class="btn btn-danger btn-xs fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="form-horizontal">
                                                                        @foreach ($pallet as $key => $val)
                                                                        @if($item->id_ciord == $key)
                                                                        @foreach ($val as $key_val)
                                                                        <div class="checkbox checkbox-inline">
                                                                            <label>
                                                                                <input type="checkbox" name="pallet[]">{{$key_val}}
                                                                            </label>
                                                                        </div>
                                                                        @endforeach
                                                                        @endif
                                                                        @endforeach
                                                                    </div>
                                                                </div>
                                                                @else
                                                                <input type="hidden" name="id_doc[]" value="{{ $doc->id_doc }}">
                                                                <div class="col-md-4">
                                                                    <div class="form-group">
                                                                        <p>{{ $doc->doc_description}} {{$doc->id_doc}}</p>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-5">
                                                                    <div class="form-group label-floating">
                                                                        <div class="fileinput fileinput-new " data-provides="fileinput">
                                                                            <div class="fileinput-preview fileinput-exists thumbnail"></div>
                                                                            <div>
                                                                                <span class="btn btn-success btn-xs btn-file">
                                                                                    <span class="fileinput-new">Select document</span>
                                                                                    <span class="fileinput-exists">Change</span>
                                                                                    <input name="documents_airport[]" type="file" accept="application/pdf"/>
                                                                                </span>
                                                                                <a href="#pablo" class="btn btn-danger btn-xs fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                @endif
                                                            @elseif($cab_doc != 0)

                                                                @foreach ($cab_doc as $key => $val)

                                                                @if($item->id_ciord == $key)

                                                                @if($collection[$key][$doc->id_doc] == 0)

                                                                @if( $doc->id_doc == '8')
                                                                <input type="hidden" name="id_doc[]" value="{{ $doc->id_doc }}">
                                                                <div class="col-md-3 ">
                                                                    <div class="form-group">
                                                                        <p>{{ $doc->doc_description}}</p>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-5">
                                                                    <div class="form-group label-floating">
                                                                        <div class="fileinput fileinput-new " data-provides="fileinput">
                                                                            <div class="fileinput-preview fileinput-exists thumbnail"></div>
                                                                            <div>
                                                                                <span class="btn btn-success btn-xs btn-file">
                                                                                    <span class="fileinput-new">Select document</span>
                                                                                    <span class="fileinput-exists">Change</span>
                                                                                    <input name="documents_airport[]" type="file" accept="application/pdf"/>
                                                                                </span>
                                                                                <a href="#pablo" class="btn btn-danger btn-xs fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="form-horizontal">
                                                                        @foreach ($pallet as $key => $val)
                                                                        @if($item->id_ciord == $key)
                                                                        @foreach ($val as $key_val)
                                                                        <div class="checkbox checkbox-inline">
                                                                            <label>
                                                                                <input type="checkbox" name="pallet[]" value="{{ $key_val }}">{{$key_val}}
                                                                            </label>
                                                                        </div>
                                                                        @endforeach
                                                                        @endif
                                                                        @endforeach
                                                                    </div>
                                                                </div>
                                                                @else
                                                                <input type="hidden" name="id_doc[]" value="{{ $doc->id_doc }}">
                                                                <div class="col-md-4 ">
                                                                    <div class="form-group">
                                                                        <p>{{ $doc->doc_description}}</p>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-7">
                                                                    <div class="form-group label-floating">
                                                                        <div class="fileinput fileinput-new " data-provides="fileinput">
                                                                            <div class="fileinput-preview fileinput-exists thumbnail"></div>
                                                                            <div>
                                                                                <span class="btn btn-success btn-xs btn-file">
                                                                                    <span class="fileinput-new">Select document</span>
                                                                                    <span class="fileinput-exists">Change</span>
                                                                                    <input name="documents_airport[]" type="file" accept="application/pdf"/>
                                                                                </span>
                                                                                <a href="#pablo" class="btn btn-danger btn-xs fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                @endif
                                                                
                                                                @endif

                                                                @endif 

                                                                @endforeach

                                                            @endif

                                                            @endforeach
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer text-center">
                                                        <button type="submit" class="btn btn-success btn-sm pull-right" >Save</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!--  End Modal -->
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    
                </div>
                <!-- end content-->
            </div>
            <!--  end card  -->
        </div>
        <!-- end col-md-12 -->
    </div>


@endsection

@section('extra-script')
    <script type="text/javascript">
        $(document).ready(function() {
                demo.initFormExtendedDatetimepickers();

                $('#datatables').DataTable({
                    "pagingType": "full_numbers",
                    "lengthMenu": [
                        [10, 25, 50, -1],
                        [10, 25, 50, "All"]
                    ],
                    responsive: true,
                    language: {
                        search: "_INPUT_",
                        searchPlaceholder: "Search records",
                    }
                });

                $('.card .material-datatables label').addClass('form-group ');
            });
    </script>
@endsection