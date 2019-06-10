<form id="get_fournisseur_form" class="form-inline" direct action="get_fournisseur" callback="populate_list">
  <div class="form-group">
      <input type="text" name="frsCoder" class="form-control input-sm" id="frsCoder" placeholder="Code , Désignation clients">
  </div>
  <button type="submit" class="btn btn-primary btn-sm">Recherche</button> <button type="submit" class="btn btn-primary btn-sm">Mise à jour</button>
  <button dr="creationfournisseur" type="button" id="btn_nouveau_fournisseur" class="btn btn-success btn-sm">Nouveau Fournisseur</button>
  <button dr="creationfournisseur" type="button" id="btn_nouveau_client" class="btn btn-success btn-sm">Nouveau Client</button>
</form>