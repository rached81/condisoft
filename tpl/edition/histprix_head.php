<form id="get_histprix_form" class="form-inline" direct action="get_histprix" callback="populate_list_histprix" addid="exe mag">
    <div class="form-group">
        <select required="" selectsearch="stk_article:art_code:art_designation:art_code;art_designation" type="text" name="artCode" class="form-control input-sm" id="artCode" placeholder="Code article"> </select>
        <input required="" datepick  type="text" name="date" class="form-control input-sm" id="date" placeholder="depuis (Date)">
    </div>
    <button type="submit" class="btn btn-primary btn-sm">Génération de l'historique des prix</button>

</form>