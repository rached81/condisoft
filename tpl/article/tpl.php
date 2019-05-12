<div class="container-fluid">
    <div class="row">
        <div class="col-md-12" id="list-container">

        </div>
    </div>
    <div class="row" id="dialog-container">
        <div id="dialogs">
            <div class="container-fluid">
                <div class="row">
                    <form id="addform" class="form-horizontal" action="ajout_article" >
                        <div class="col-md-5">
                            <div class="page-header">
                                <h3 style="display: inline-block;margin: 5px;">Information article <small>Identification</small></h3> Code existant <input type="checkbox" id="existant" name="existant" checked="checked">
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="artCode" class="col-md-12 control-label">Code article</label>
                                    <div class="col-sm-12">
                                        <input type="text" required="required" name="artCode" readonly="readonly"  class="form-control" id="artCode">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="artCategoriecode"  class="col-md-12 control-label">Catégorie</label>
                                    <div class="col-sm-12">
                                        <select cachit required="required" editmode selecmodel="stk_categorie_article:catart_code:catart_designation" class="form-control" name="artCategoriecode" id="artCategoriecode" placeholder="Catégorie"></select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="artClass"  class="col-md-12 control-label">Class</label>
                                    <div class="col-sm-12">
                                        <select cachit required="required" editmode   class="form-control" name="artClass" id="artClass" placeholder="Class">
                                            <option value=""></option>
                                             <option value="1">Produit fini</option>
                                            <option value="2">Matiére Premiére</option>
                                            <option value="3">Consommable</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="frsCode" class="col-md-12  control-label">Forunisseur</label>
                                    <div class="col-sm-12">
                                        <select dep="frs_typeCode:frs_typeCode" required="required" editmode selectsearch="stk_fournisseur:frs_code:frs_raisonSociale:frs_code;frs_raisonSociale" class="form-control" name="frsCode" id="frsCode" placeholder="Forunisseur"></select>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="uniqCode" class="col-md-12 control-label">Code Unique</label>
                                    <div class="col-sm-12">
                                        <input  type="text" readonly="readonly" class="form-control" name="uniqCode" id="uniqCode" placeholder="Code Unique">
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="artDesignation" class="col-md-12 control-label">Désignation</label>
                                    <div class="col-sm-12">
                                        <input type="text" editmode required="required"  class="form-control" name="artDesignation" id="artDesignation" placeholder="Désignation">
                                    </div>
                                </div>
                            </div>
                            
                            
                                  <div class="col-md-6">
                                <div class="form-group">
                                    <label for="artUnite" class="col-md-12 control-label">Unité</label>
                                    <div class="col-sm-12">
                                        <input type="text" editmode required="required"  class="form-control" name="artUnite" id="artUnite" placeholder="Désignation">
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="artDatecreation" class="col-md-12 control-label">Date de creation</label>
                                    <div class="col-sm-12">
                                        <input class="form-control"  readonly="readonly"  name="artDatecreation" id="artDatecreation" placeholder="Date de creation">

                                        <input type="hidden" class="form-control" required="required" readonly="readonly"  <?php
                                        $date = new Zend_Date();
                                        echo 'value="' . $date->toString("yyyy-MM-dd") . '"';
                                        ?> name="artDatecreationh" id="artDatecreationh" >
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="artEtatCode" class="col-md-12 control-label">Etat de l'article</label>
                                    <div class="col-sm-12">
                                        <select required="required" editmode type="text" class="form-control" name="artEtatCode" id="artEtatCode" placeholder="Etat de l'article">
                                            <option value="11">Article actif</option>
                                            <option value="12">Article inactif</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="artDelaislivraison" class="col-md-12 control-label">Délais de production moyen</label>
                                    <div class="col-sm-12">
                                        <input type="text" editmode required="required"  class="form-control" name="artDelaislivraison" id="artDelaislivraison" placeholder="Délais de livraison">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="frsArtref" class="col-md-12 control-label">Référence constructeur</label>
                                    <div class="col-sm-12">
                                        <input type="text" editmode required="required"  class="form-control" name="frsArtref" id="frsArtref" placeholder="Ref.">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="artStockMinimale" class="col-md-12 control-label">Stock de reserve</label>
                                    <div class="col-sm-12">
                                        <input type="text" editmode required="required"  class="form-control" name="artStockMinimale" id="artStockMinimale" placeholder="Stk reserve">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="artPrix" class="col-md-12 control-label">Prix</label>
                                    <div class="col-sm-12">
                                        <input type="text" editmode required="required"  class="form-control" name="artPrix" id="artPrix" placeholder="Prix unitaire">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="artTva" class="col-md-12 control-label">TVA</label>
                                    <div class="col-sm-12">
                                        <input type="text" editmode required="required"  class="form-control" name="artTva" id="artTva" placeholder="Tva article">
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="artDescription" class="col-md-12 control-label">Déscription</label>
                                    <div class="col-sm-12">
                                        <textarea type="text" editmode   class="form-control" name="artDescription" id="artDescription" placeholder="Déscription"></textarea>
                                    </div>
                                </div>
                            </div>



                        </div>

                        <div class="col-md-3">
                            <div class="page-header">
                                <h3>Image de l'article <small>visuel</small></h3>
                            </div>

                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="artImage" class="col-md-12 control-label">Fichier image</label>
                                        <div class="col-sm-12">
                                            <input  type="file" editmode  class="form-control" name="artImage" id="artImage" placeholder="Fichier">
                                        </div>
                                    </div>
                                </div> 
                            </div>
                            <div class="col-md-12">
                                <img src="<?php echo WEBROOT ?>/lib/img/thumbnail.png" class="img-thumbnail" id="articleimage"  width="100%" height="200">
                            </div>


                        </div>
                        <div class="col-md-4">
                            <div class="page-header">
                                <h3>Stockage <small>mouvements et alertes</small></h3>
                            </div>
                            <div class="col-md-12" id="liststk"></div>
                            <div class="col-md-12" id="listmvt"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="catarticle">
    <div class="row">
        <div class="col-lg-12 ">

            <div class="input-group input-group-sm">

                <div class="input-group-btn">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Catégorie d'articles <span class="caret"></span></button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="javascript:;" id="btn_aj_cat">Crée une catégorie</a></li>
                        <li class="divider"></li>
                        <li><a href="javascript:;" id="btn_sup_cat">Supprimer la catégorie selectioné</a></li>
                    </ul>
                </div>

                <select cachit selecmodel="stk_categorie_article:catart_code:catart_designation" class="form-control" name="artCategrie" id="artCategrie">

                </select>

            </div>

        </div>
    </div>
</div>

<div style="display: none;">
    <div id="printbarecode">

    </div> 
</div>

<input type="hidden" id="frs_typeCode" name="frs_typeCode" value="1" >