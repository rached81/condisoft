<div class="container-fluid">
    <div class="row">
        <div class="col-md-12" id="list-container">

        </div>
    </div>
    <div class="row" id="dialog-container">
        <div id="dialogs">
            <div class="container-fluid">
                <div class="row">
                    <form id="addform" class="form-inline" action="ajout_entree" >

                        <div class="form-group marbutton">
                            <label  class="entformentet" for="entCode">Code BE</label>
                            <input required="" readonly="" editmode type="text" class="form-control" id="entCode" name="entCode" placeholder="">
                        </div>
                        <div class="form-group marbutton">
                            <label  class="entformentet"  for="entExercice">Exercice Be</label>
                            <input  required="" readonly="" editmode type="text" class="form-control" id="entExercice" name="entExercice" placeholder="">
                        </div>
                        <div class="form-group marbutton">
                            <label  class="entformentet" for="entBcolcode">N° Bc</label>
                            <input required="" editmode type="text" class="form-control" id="entBcolcode" name="entBcolcode" placeholder="">
                        </div>
                        <div class="form-group marbutton">
                            <label  class="entformentet" for="entBcolexercice">Exercice Bc</label>
                            <input required="" editmode type="text" class="form-control" id="entBcolexercice" name="entBcolexercice" placeholder="">
                        </div>
                        <div class="form-group marbutton beetr">
                            <label  class="entformentet" for="entContratcode">N° Contrat</label>
                            <input editmode type="text" class="form-control" id="entContratcode" name="entContratcode" placeholder="">
                        </div>
                        <div class="form-group marbutton beetr">
                            <label  class="entformentet" for="entContratexercice">Exercice Contrat</label>
                            <input editmode type="text" class="form-control" id="entContratexercice" name="entContratexercice" placeholder="">
                        </div>
                        <div class="form-group marbutton">
                            <label  class="entformentet" for="entDatereception">Date reception</label>
                            <input editmode  required="" datepick   type="text" class="form-control" id="entDatereception" name="entDatereception" placeholder="">
                        </div>
                        <div class="form-group marbutton">
                            <label  required="" class="entformentet" for="entNumbl">N° BL</label>
                            <input editmode type="text" class="form-control" id="entNumbl" name="entNumbl" placeholder="">
                        </div>
                        <div class="form-group marbutton">
                            <label  class="entformentet" for="entDatebl">Date BL</label>
                            <input  editmode type="text" datepick  class="form-control" id="entDatebl" name="entDatebl" placeholder="">
                        </div>
                        <div class="form-group marbutton">
                            <label  class="entformentet" for="entNumfacture">N° facture</label>
                            <input editmode type="text" class="form-control" id="entNumfacture" name="entNumfacture" placeholder="">
                        </div>
                        <div class="form-group marbutton">
                            <label  class="entformentet" for="entDatefacture">Date Facture</label>
                            <input datepick  editmode type="text" class="form-control" id="entDatefacture" name="entDatefacture" placeholder="">
                        </div>



                        <div class="form-group marbutton">
                            <label  class="entformentet" for="entTypecode">Type</label>
                            <select editmode style="width: 172px" type="text" class="form-control" id="entTypecode" name="entTypecode" placeholder="">
                                <option value="0">Bon de commande</option>
                                <option value="1">Marché</option>
                            </select>
                        </div>

                        <div class="form-group marbutton beetr">
                            <label  class="entformentet" for="entNumtransit">Transit</label>
                            <input editmode type="text" class="form-control" id="entNumtransit" name="entNumtransit" placeholder="">
                        </div>
                        <div class="form-group marbutton beetr">
                            <label  class="entformentet" for="entDevise">Devise</label>
                            <input editmode type="text" class="form-control" id="entDevise" name="entDevise" placeholder="">
                        </div>
                        <div class="form-group marbutton beetr" >
                            <label  class="entformentet" for="entCours">Cours</label>
                            <input editmode type="text" class="form-control" id="entCours" name="entCours" placeholder="">
                        </div>

                        <div class="form-group marbutton">
                            <label  class="entformentet" for="entObservation">Observation</label>
                            <input editmode type="text" class="form-control" id="entObservation" name="entObservation" placeholder="">
                        </div>

                        <div class="form-group marbutton">
                            <label   class="entformentet" for="entFournisseurcode">Fournisseur</label>
                            <div class="form-control" style="width: 200px;border: 0;"><select required="" dep="frs_typeCode:frs_typeCode"  selectsearch="stk_fournisseur:frs_code:frs_raisonSociale:frs_code;frs_raisonSociale" editmode type="text" class="form-control" id="entFournisseurcode" name="entFournisseurcode" placeholder=""></select></div>
                        </div>

                    </form>

                    <div class="page-header">
                        <h4>Détail <small></small></h4>
                    </div>

                    <form id="addartbeform" class="form-inline" action="ajout_article_be" >
                        <table class="table table-condensed table-striped">
                            <thead>

                                <tr>

                                    <td>Article</td>
                                    <td>Qte</td>
                                    <td>Qte surp.</td>
                                    <td>D.L.C</td>
                                    <td>P.U</td>
                                    <td>Code Tva</td>

                                </tr>

                                <tr class="addartform">

                                    <td class="col-md-3">
                                        <select required="" dep="art_class:art_class"  selectsearch="stk_article:art_code:art_designation:art_code;art_designation" required=""  editmode  class="form-control" id="entArtcode" name="entArtcode" placeholder=""></select>
                                    </td>

                                    <td>
                                        <input required=""  editmode type="text" class="form-control" id="entQte" name="entQte" placeholder="">
                                    </td>

                                    <td>
                                        <input   editmode type="text" class="form-control" id="entQtesurplus" name="entQtesurplus" placeholder="">
                                    </td>

                                    <td>
                                        <input required="" datepick  editmode type="text" class="form-control" id="entDateperomption" name="entDateperomption" placeholder="">
                                    </td>

                                    <td>
                                        <input   editmode type="text" class="form-control" id="entPu" name="entPu" placeholder="">
                                    </td>

                                    <td>
                                        <select  selecmodel="stk_tva:tva_code:tva_designation"  editmode  class="form-control col-md-1" id="tvaCode" name="tvaCode" placeholder=""></select>
                                    </td>

                                    <td>
                                        <button type="button" id="valdartline" class="btn btn-primary btn-sm" >Valider art</button>
                                    </td>


                                </tr>

                            </thead>

                        </table>
                    </form>

                    <table class="table table-condensed table-striped">
                        <thead>
                            <tr>
                                <th>Code</th>
                                <th>Désignation</th>
                                <th>Tracage article</th>
                                <th>Qte</th>
                                <th>Qte surplus</th>
                                <th>D. Peromption</th>
                                <th>P.U</th>
                                <th>Tva</th>
                                <th>Prix totale HT</th>
                                <th>Supp</th>
                            </tr>
                        </thead>
                        <tbody id="entartlineobject">
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>


<div style="display: none;">
    <div id="printarea">
        <table style="width: 100%;font-size: 12px;">
            <thead>
                <tr>
                    <th colspan="4">
                        <div style="display: inline-block;float: left;">Unité de gestion de stock</div>
                        <div style="display: inline-block;float: right;"> Edité le : <?php
                            $date = new Zend_Date();
                            echo $date->toString("yyyy-MM-dd");
                            ?></div>
                    </th>
                </tr>



                <tr>
                    <td colspan="4" class="spacingpring"></td>

                </tr>
                <tr>
                    <th colspan="4">
                        <div style="text-align: center;font-size: 18px;font-weight: bold;">Bon d'entrée</div>
                        <div style="text-align: center;font-size: 18px;font-weight: bold;">N° <span id="entCodei"></span></div>
                    </th>
                </tr>

                <tr>
                    <td colspan="4" class="spacingpring"></td>

                </tr>

                <tr>
                    <th class="col-md-4">Code BE : <span id="entCodep"></span></th>
                    <th  class="col-md-4">Date reception : <span id="entDatereceptionp"></span></th>
                    <th  class="col-md-4 etrbep">Transit : <span id="entNumtransitp"></span></th>
                </tr>

                <tr>
                    <th  class="col-md-4">Exercice BE : <span id="entExercicep"></span></th>
                    <th  class="col-md-4">N° BL : <span id="entNumblp"></span></th>
                    <th  class="col-md-4 etrbep">Devise : <span id="entDevisep"></span></th>
                </tr>


                <tr>
                    <th  class="col-md-4">N° Bc : <span id="entBcolcodep"></span></th>
                    <th  class="col-md-4">Date BL : <span id="entDateblp"></span></th>
                    <th  class="col-md-4 etrbep">Cours : <span id="entCoursp"></span></th>
                </tr>

                <tr>
                    <th  class="col-md-4">Exercice Bc : <span id="entBcolexercicep"></span></th>
                    <th  class="col-md-4">N° facture : <span id="entNumfacturep"></span></th>
                    <th  class="col-md-4">Observation : <span id="entObservationp"></span></th>
                </tr>


                <tr>
                    <th  class="col-md-4">N° Contrat : <span id="entContratcodep"></span></th>
                    <th  class="col-md-4">Date Facture : <span id="entDatefacturep"></span></th>
                    <th  class="col-md-4">Fournisseur : <span id="entFournisseurcodep"></span></th>
                </tr>

                <tr>
                    <th  class="col-md-4">Exercice Contrat : <span id="entContratexercicep"></span></th>
                    <th  class="col-md-4">Type : <span id="entTypecodep"></span></th>

                </tr>

            </thead>
            <tbody>

                <tr>
                    <td colspan="4" class="spacingpring"></td>
                </tr>

                <tr>

                    <td colspan="4" class="contentpring">

                        <table class="table table-condensed table-bordered tabprint" style="font-size: 12px;">

                            <thead>
                                <tr>

                                    <th>Code</th>
                                    <th>Désignation</th>
                                    <th>Tracage article</th>
                                    <th>Qte</th>
                                    <th>Qte surplus</th>
                                    <th>D. Peromption</th>
                                    <th>P.U</th>
                                    <th>Tva</th>
                                    <th>Prix totale HT</th>

                                </tr>
                            </thead>

                            <tbody id="entartlineobjectp">
                            </tbody>

                        </table>

                    </td>

                </tr>

                <tr>
                    <td colspan="4" class="spacingpring"></td>
                </tr>

                <tr>
                    <td colspan="4">
                        <div style="display: inline-block;float: left;padding-left: 60px;">Résponsable magasin</div>

                    </td>
                </tr>
            </tbody>
        </table>

    </div>
</div>
<div style="display: none;">
    <div id="printbarecode">
      
    </div> 
</div>
<input type="hidden" id="art_etatCode" value="11"> 
<input type="hidden" id="frs_typeCode" name="frs_typeCode" value="1" >
<input type="hidden" id="art_class" name="art_class" value="2|3">