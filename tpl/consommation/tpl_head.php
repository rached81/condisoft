<form id="get_cons_form" class="form-inline" direct action="get_cons" callback="populate_list" addid="exe mag">
  <div class="form-group">
      <input type="text" name="consCode" class="form-control input-sm" id="consCoder" placeholder="Code Consommation">
  </div>
  <button type="submit" class="btn btn-primary btn-sm">Recherche</button> <button type="submit" class="btn btn-primary btn-sm">Mise à jour</button>
  <button dr="creationcons" type="button" id="btn_nouveau_cons" class="btn btn-success btn-sm">Nouveau</button>
  <button dr="affectationcons" type="button" id="btn_gestion_aff" class="btn btn-success btn-sm">Gestion des affectations</button>
</form>