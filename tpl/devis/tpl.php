<div class="container-fluid">
    <div class="row">
        <div class="col-md-12" id="list-container">

        </div>
    </div>
    <div class="row" id="dialog-container">
        <div id="dialogs">
            <div class="container-fluid">
                <div class="row">
                    <form id="addform" class="form-inline" action="ajout_approvisonnement" >

                        <div forminput devis class="form-group marbutton ">
                            <input id="prodId" name="prodId" type="hidden">
                            <label  class="demaproformentet" for="prodCodeDeviBc">Code Devis.</label>
                            <input  required="" readonly="" editmode type="text" class="form-control" id="prodCodeDeviBc" name="prodCodeDeviBc" placeholder="">
                        </div>

                        <div forminput devis class="form-group marbutton">
                            <label  class="demaproformentet"  for="prodExerciceDevis">Exercice Devis.</label>
                            <input  required="" readonly="" editmode type="text" class="form-control" id="prodExerciceDevis" name="prodExerciceDevis" placeholder="">
                        </div>

                        <div forminput devis class="form-group marbutton">
                            <label  class="demaproformentet"  for="prodDateDevis">Date Devis.</label>
                            <input  datepick required=""  editmode type="text" class="form-control" id="prodDateDevis" name="prodDateDevis" placeholder="">
                        </div>

                        <div forminput bc class="form-group marbutton">
                            <label  class="demaproformentet"  for="prodDateDevis">Date B.C</label>
                            <input datepick  required=""  editmode type="text" class="form-control" id="prodDateBc" name="prodDateBc" placeholder="">
                        </div>

                        <div forminput bc class="form-group marbutton">
                            <label  class="demaproformentet"  for="prodExerciceBc">Exercice B.C</label>
                            <input    required="" readonly=""   editmode type="text" class="form-control" id="prodExerciceBc" name="prodExerciceBc" placeholder="">
                        </div>



                        <div  forminput devis  class="form-group marbutton">
                            <label   class="entformentet" for="prodCodeClient">Client</label>
                            <div class="form-control" style="width: 200px;border: 0;"><select required="" dep="frs_typeCode:frs_typeCode"  selectsearch="stk_fournisseur:frs_code:frs_raisonSociale:frs_code;frs_raisonSociale" editmode type="text" class="form-control" id="prodCodeClient" name="prodCodeClient" placeholder=""></select></div>
                        </div>

                        <div  forminput devis   class="form-group marbutton">
                            <label   class="entformentet" for="prodCommerciale">Commerciale</label>
                            <div class="form-control" style="width: 200px;border: 0;"><select required=""   selectsearch="util:IDUTIL:UTINOM:IDUTIL;UTINOM" editmode type="text" class="form-control" id="prodCommerciale" name="prodCommerciale" placeholder=""></select></div>
                        </div>

                        <div  forminput devis  class="form-group marbutton">
                            <label   class="entformentet" for="prodDevise">Devise</label>
                            <div class="form-control" style="width: 200px;border: 0;"><select required=""   selecmodel="stk_devise:devise_code:devise_libelle" editmode type="text" class="form-control" id="prodDevise" name="prodDevise" placeholder=""></select></div>
                        </div>


                    </form>

                    <div class="page-header">
                        <h4>Détail <small></small></h4>
                    </div>
                    <form id="addartbeform" class="form-inline" action="ajout_article_data" >
                        <table class="table table-condensed table-striped">
                            <thead>

                                <tr>


                                    <td>Article</td>
                                    <td>Qte</td>
                                    <td>PU Devise</td>
                                    <td>Tva</td>
                                    <td> <!--Code traçabilité--></td>
                                    <td><!--Code Kit--></td>

                                </tr>
                                <tr class="addartform">

                                    <td class="col-md-3">
                                        <select required="" dep="art_class:art_class"  selectsearch="stk_article:art_code:art_designation:art_code;art_designation" required=""  editmode  class="form-control" id="proddetailArticleCodea" name="proddetailArticleCodea" placeholder=""></select>
                                    </td>

                                    <td class="col-md-2">
                                        <input required=""  editmode type="text" class="form-control" id="proddetailQteDevisa" name="proddetailQteDevisa" placeholder="">
                                    </td>

                                    <td class="col-md-2">
                                        <input required=""  editmode type="text" class="form-control" id="proddetailPrixUniaireDeviseDevisa" name="proddetailPrixUniaireDeviseDevisa" placeholder="">
                                    </td>

                                    <td class="col-md-3">
                                        <select required=""  selecmodel="stk_tva:tva_pourcentage:tva_designation" required=""  editmode  class="form-control" id="proddetailTvaDevisa" name="proddetailTvaDevisa" placeholder=""></select>
                                    </td>

                                    <td class="col-md-3" >
                                        <!--<select  selectsearch="stk_Entre_Detail:ent_codeTrace:ent_codeTrace:ent_codeTrace"  editmode  class="form-control col-md-1" id="demaproLottracecode" name="demaproLottracecode" placeholder=""></select>-->
                                    </td>

                                    <td class="col-md-3" >
                                        <!--<select  selectsearch="stk_Entre_Detail:ent_lotCodeTrace:ent_lotCodeTrace:ent_codeTrace"  editmode  class="form-control col-md-1" id="demaproTracecode" name="demaproTracecode" placeholder=""></select>-->
                                    </td>

                                    <td>
                                        <button type="button" id="valdartline" class="btn btn-primary btn-sm" >Valider art</button>
                                    </td>


                                </tr>

                            </thead>

                        </table>
                    </form>

                    <table class="table table-condensed table-striped" id="detaprotab">
                        <thead>
                            <tr>
                                <th>Code</th>
                                <th>Désignation</th>
                                <th>Unité</th>
                                <th>Qte</th>
                                <th>PU Devise</th>
                                <th>TVA</th>
                                <th>PTTC</th>
                            </tr>
                        </thead>
                        <tbody id="dataartlineobject">
                        </tbody>

                    </table>

                </div>
            </div>
        </div>
    </div>
</div>


<div style="display: none">
    <div id="printarea">
        <table style="width: 100%;font-size: 12px;" id="detaprotabprint">
            <thead>
                <tr>
                    <th colspan="4">
            <div style="display: inline-block;float: left;">
                <div style="">
                    <img src="<?php echo WEBROOT ?>/lib/img/logo.jpg" width="100%"  /> 
                </div> 
            </div>
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
            <div style="text-align: center;font-size: 18px;font-weight: bold;">Devis</div>
            <div style="text-align: center;font-size: 18px;font-weight: bold;">N° <span id="prodCodeDeviBci"></span></div>
            </th>
            </tr>

            <tr>
                <td colspan="4" class="spacingpring"></td>

            </tr>

            <tr>
                <th class="col-md-6">Code devis : <span id="prodCodeDeviBcp"></span></th>
                <th  class="col-md-6">Date : <span id="prodDateDevisp"></span></th>
            </tr>

            <tr>
                <th  class="col-md-6">Exercice devis : <span id="prodExerciceDevisp"></span></th>
                <th  class="col-md-6">Commercial : <span id="prodCommercialep"></span></th>

            </tr>

            <tr>
                <th  class="col-md-6">Devise : <span id="prodDevisep"></span></th>
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
                                         <th>Unité</th>
                                    <th>Qte</th>
                                    <th>Prix unitaire</th>
                                    <th>TVA</th>
                                    <th>PTTC</th>
                                </tr>
                            </thead>
                            <tbody id="dataartlineobjectp">
                            </tbody>
                            <tbody>
                                <tr>
                                    <td class="itemart" colspan="7" > </td>

                                </tr>
                                <tr>
                                    <td class="itemart" colspan="4" style="text-align: center;" >Total HTVA</td>
                                    <td class="itemart" colspan="3" style="text-align: center;"  id="htva"></td>
                                </tr>


                                <tr>
                                    <td class="itemart" colspan="4" style="text-align: center;"  >TVA</td>
                                    <td class="itemart" colspan="3" style="text-align: center;"   id="tva"></td>
                                </tr>


                                <tr>
                                    <td class="itemart" colspan="4" style="text-align: center;"  >Timbre</td>
                                    <td class="itemart" colspan="3" style="text-align: center;"   id="timbre"></td>
                                </tr>

                                <tr>
                                    <td class="itemart" colspan="4" style="text-align: center;"  >Totale TTC</td>
                                    <td class="itemart" colspan="3" style="text-align: center;"   id="ttc"></td>
                                </tr>

                            </tbody>
                        </table>


                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="spacingpring"></td>
                </tr>

                <tr>
                    <td colspan="4">
                        <div style="display: inline-block;float: left;padding-left: 60px;">Résponsable de Gestion</div>
                        <div style="display: inline-block;float: right;padding-right: 60px;"> Responsable Commerciale </div>
                    </td>

                </tr>
            </tbody>
        </table>

    </div>
</div>
<input type="hidden" id="frs_typeCode" name="frs_typeCode" value="2" >
<input type="hidden" id="art_class" name="art_class" value="1">
