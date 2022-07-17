<form id="get_histprix_form" class="form-inline" direct action="get_histprix" callback="populate_list_histprix" addid="exe mag">
    <!-- <div class="form-group"> -->
        <div class="row">
            <div class="col-md-5">
            <select required="" selectsearch="stk_article:art_code:art_designation:art_code;art_designation" type="text" name="artCode" class="form-control input-sm" id="artCode" placeholder="Code article"> </select>

            </div>
            <div class="col-md-3" >
            <input required="" datepick  type="text" name="date" class="form-control input-sm" id="date" placeholder="depuis (Date)">


            </div>
            <div class="col-md-4" >    
                <button type="submit" class="btn btn-primary btn-sm">Historique des prix</button>
</div>
        </div> 
    <!-- </div> -->

</form>