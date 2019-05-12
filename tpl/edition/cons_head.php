<form id="get_cons_form" class="form-inline" direct action="get_cons" callback="populate_list_cons" addid="exe mag">

    <div class="form-group">
        <span style="display: inline-block">Affectation : </span>
        <div style="display: inline-block;width: 230px;">
            <select required=""  selectsearch="stk_fournisseur:frs_code:frs_raisonSociale:frs_code;frs_raisonSociale"  name="affectation" class="form-control input-sm" id="affectation" placeholder="Affectation"></select>
        </div>
        
        <input required="" datepick  type="text" name="date" class="form-control input-sm" id="date" placeholder="depuis (Date)">

    </div>
    
    <button type="submit" class="btn btn-primary btn-sm">Génération</button>

</form>