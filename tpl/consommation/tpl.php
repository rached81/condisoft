<div class="container-fluid">
    <div class="row">
        <div class="col-md-12" id="list-container">

        </div>
    </div>
    <div class="row" id="dialog-container">
        <div id="dialogs">
            <div class="container-fluid">
                <div class="row">
                    <form id="addform" class="form-inline" action="ajout_demapro" >

                        <div class="form-group marbutton ">
                            <label  class="consformentet" for="consCode">Code Cons.</label>
                            <input required="" readonly="" editmode type="text" class="form-control" id="consCode" name="consCode" placeholder="">
                        </div>

                        <div class="form-group marbutton">
                            <label  class="consformentet"  for="consExercice">Exercice Cons.</label>
                            <input  required="" readonly="" editmode type="text" class="form-control" id="consExercice" name="consExercice" placeholder="">
                        </div>

                        <div class="form-group marbutton">
                            <label  class="consformentet"  for="consDate">Date demmande</label>
                            <input   readonly="readonly"   <?php
                            $date = new Zend_Date();
                            echo 'value="' . $date->toString("dd/MM/yyyy") . '"';
                            ?>  editmode type="text" class="form-control" id="consDatedem" name="consDatedem" placeholder="">
                        </div>

                        <div class="form-group marbutton">
                            <label  class="consformentet"  for="consDate">Date livraison</label>
                            <input   readonly="readonly"   editmode type="text" class="form-control" id="consDate" name="consDate" placeholder="">
                        </div>

                        <div class="form-group marbutton">
                            <label   class="consformentet" for="consAffectationtypecode">Unité commerciale</label>
                            <div class="form-control" style="width: 200px;border: 0;padding:0px"><select required=""  selectsearch="stk_affectation_type:afftype_code:afftype_designation:afftype_code;afftype_designation" editmode  class="form-control" id="consAffectationtypecode" name="consAffectationtypecode" placeholder=""></select></div>
                        </div>

                        <div class="form-group marbutton">
                            <label   class="consformentet" for="consAffectationcode">Gouvernora</label>
                            <div class="form-control" style="width: 200px;border: 0;padding:0px"><select required=""  selectsearch="stk_affectation_analityque:affectation_code:affectation_designation:affectation_code;affectation_designation" editmode dep="affectation_type:consAffectationtypecode" class="form-control" id="consAffectationcode" name="consAffectationcode" placeholder=""></select></div>
                        </div>
                        
                          <div class="form-group marbutton">
                            <label   class="entformentet" for="consClientcode">Client</label>
                            <div class="form-control" style="width: 200px;border: 0;"><select required=""  selectsearch="stk_fournisseur:frs_code:frs_raisonSociale:frs_code;frs_raisonSociale" editmode type="text" class="form-control" id="consClientcode" name="consClientcode" placeholder=""></select></div>
                        </div>


                        <div class="form-group marbutton">
                            <label  class="entformentet" for="consType">Type</label>
                            <div class="form-control"  style="width: 200px;border: 0;padding:0px"><select required editmode style="width: 172px" type="text" class="form-control" id="consType" name="consType" placeholder="">
                                    <option value="0">Ordinaire</option>
                                    <option value="1">Exceptionel</option>
                                </select></div>
                        </div>

                        <div class="form-group marbutton motif">
                            <label  class="entformentet" for="consMotif">Motif</label>
                            <div class="form-control" style="width: 200px;border: 0;padding:0px"><select selecmodel="stk_consommation_motif:consmot_code:consmot_lib" editmode style="width: 172px" type="text" class="form-control" id="consMotif" name="consMotif" placeholder="">

                                </select></div>
                        </div>

                        <div class="form-group marbutton">
                            <label  class="entformentet" for="consObservation">Observation</label>
                            <input editmode type="text" class="form-control" id="consObservation" name="consObservation" placeholder="">
                        </div>



                    </form>

                    <div class="page-header">
                        <h4>Détail <small></small></h4>
                    </div>

                    <form id="addartbeform" class="form-inline" action="chk_art_cons" direct callback="ajout_article_cons"  addid="exe mag consArtcode" >
                        <table class="table table-condensed table-striped">
                            <thead>

                                <tr>

                                    <td>Article</td>
                                    <td>Qte</td>
                                    <td> <!--Code traçabilité--></td>
                                    <td><!--Code Kit--></td>

                                </tr>
                                <tr class="addartform">

                                    <td class="col-md-3">
                                        <select required="" dep="art_etatCode:art_etatCode"  selectsearch="stk_article:art_code:art_designation:art_code;art_designation" required=""  editmode  class="form-control" id="consArtcode" name="consArtcode" placeholder=""></select>
                                    </td>

                                    <td class="col-md-2">
                                        <input required=""  editmode type="text" class="form-control" id="consQte" name="consQte" placeholder="">
                                    </td>

                                    <td class="col-md-3" >
                                        <!--<select  selectsearch="stk_Entre_Detail:ent_codeTrace:ent_codeTrace:ent_codeTrace"  editmode  class="form-control col-md-1" id="consLottracecode" name="consLottracecode" placeholder=""></select>-->
                                    </td>

                                    <td class="col-md-3" >
                                        <!--<select  selectsearch="stk_Entre_Detail:ent_lotCodeTrace:ent_lotCodeTrace:ent_codeTrace"  editmode  class="form-control col-md-1" id="consTracecode" name="consTracecode" placeholder=""></select>-->
                                    </td>

                                    <td>
                                        <button type="button" id="valdartline" class="btn btn-primary btn-sm" >Ajouter Art.</button>
                                    </td>

                                </tr>

                            </thead>

                        </table>
                    </form>

                    <table class="table table-condensed table-striped" id="detconstab">
                        <thead>
                            <tr>

                                <th>Code</th>
                                <th>Désignation</th>
                             
                                <th>Qte Demandé</th>
                                <th>Qte livré</th>

                            </tr>
                        </thead>
                        <tbody id="consartlineobject">
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>

<div style="display: none">
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
                        <div style="text-align: center;font-size: 18px;font-weight: bold;">Bon de sortie</div>
                        <div style="text-align: center;font-size: 18px;font-weight: bold;">N° <span id="consCodei"></span></div>
                    </th>
                </tr>

                <tr>
                    <td colspan="4" class="spacingpring"></td>

                </tr>

                <tr>
                    <th class="col-md-6">Code consomamtion : <span id="consCodep"></span></th>
                    <th  class="col-md-6">Affectation : <span id="consAffectationcodep"></span></th>
                </tr>

                <tr>
                    <th  class="col-md-6">Exercice consomamtion : <span id="consExercicep"></span></th>
                    <th  class="col-md-6">Unitée Commerciale : <span id="consAffectationtypecodep"></span></th>
                </tr>



                <tr>
                    <th  class="col-md-6">Date demmande : <span id="consDatedemp"></span></th>
                    <th  class="col-md-6">Date livraison: <span id="consDatep"></span></th>
                </tr>
                
                 <tr>
                    <th  class="col-md-6">Type  : <span id="consTypep"></span></th>
                    <th  class="col-md-6">Motif : <span id="consMotifp"></span></th>
                </tr>
                
                 <tr>
                     <th  class="col-md-6">Client  : <span id="consClientcodep"></span></th>
                    <th  class="col-md-6">Observation  : <span id="ConsObservationp"></span></th>
                  
                </tr>


            </thead>
            <tbody>
                <tr>
                    <td colspan="4" class="spacingpring"></td>

                </tr>
                <tr>
                    <td colspan="4" class="contentpring">

                        <table id="detconstabprint" class="table table-condensed table-bordered tabprint" style="font-size: 12px;">
                            <thead>
                                <tr>

                                    <th>Code</th>
                                    <th>Désignation</th>

                                    <th>Qte demandé</th>
                                    <th>Qte livré</th>
                                    <th>Prix unitaire</th>
                                    <th>TVA</th>
                                    <th>Prix totale TTC</th>

                                </tr>
                            </thead>
                            <tbody id="consartlineobjectp">
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
                        <div style="display: inline-block;float: right;padding-right: 60px;"> Client </div>
                    </td>

                </tr>
            </tbody>
        </table>

    </div>
</div>

<div id="analytique">
    <div class="row">
        <div class="col-lg-12 ">

            <div class="input-group input-group-sm">

                <div class="input-group-btn">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Unité Commerciale <span class="caret"></span></button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="javascript:;" id="btn_aj_typeaff">Crée une Unité Commerciale</a></li>
                        <li class="divider"></li>
                        <li><a href="javascript:;" id="btn_sup_typeaff">Supprimer l'Unité Commerciale selectionée</a></li>
                    </ul>
                </div>

                <select callback="modelautoaff" cachit selecmodel="stk_affectation_type:afftype_code:afftype_designation" class="form-control" name="typeAffectation" id="typeAffectation">

                </select>

            </div>

        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 ">

            <div class="input-group input-group-sm">

                <div class="input-group-btn">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Affectation <span class="caret"></span></button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="javascript:;" id="btn_aj_aff">Crée une Affectation</a></li>
                        <li class="divider"></li>
                        <li><a href="javascript:;" id="btn_sup_aff">Supprimer l'affectation selectioné</a></li>
                    </ul>
                </div>

                <select cachit selecmodelaff="stk_affectation_analityque:affectation_code:affectation_designation" class="form-control" name="affectation" id="affectation">

                </select>

            </div>

        </div>
    </div>
</div>
<input type="hidden" id="art_etatCode" value="11"> 

<input id="dateinp" <?php
       $date = new Zend_Date();
       echo 'value="' . $date->toString("dd/MM/yyyy") . '"';
       ?>  type="hidden" >