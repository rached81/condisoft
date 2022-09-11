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
 
                        <div forminput prod validprod class="form-group marbutton ">
                            <input id="prodId" name="prodId" type="hidden">
                            <label  class="demaproformentet" for="prodCodeProd">Code production.</label>
                            <input  required="" readonly="" editmode type="text" class="form-control" id="prodCodeProd" name="prodCodeProd" placeholder="">
                        </div>

                        <div forminput prod validprod class="form-group marbutton">
                            <label  class="demaproformentet"  for="prodExerciceProd">Exercice production.</label>
                            <input  required="" readonly="" editmode type="text" class="form-control" id="prodExerciceProd" name="prodExerciceProd" placeholder="">
                        </div>
                        <?php $date = new Zend_Date(); ?>
                           <div forminput prod validprod class="form-group marbutton">
                            <label  class="demaproformentet"  for="journeDate">Journée.</label>
                            <input value="<?php  echo $date->toString("dd/MM/yyyy"); ?>"  required="" datepick editmode type="text" class="form-control" id="journeDate" name="journeDate" placeholder="">
                        </div>
                        
                          <div forminput validprod class="form-group marbutton">
                            <label  class="demaproformentet"  for="prodDateProd">Date de fin production.</label>
                            <input   required="" datepick  editmode type="text" class="form-control" id="prodDateProd" name="prodDateProd" placeholder="">
                        </div>

                     

                    </form>

                    <div class="page-header">
                        <h4>Détail <small></small></h4>
                    </div>
                    <form id="addartbeform" class="form-inline" direct action="check_art" callback="ajout_article_data" addid="exe mag" >
                        <table class="table table-condensed table-striped">
                            <thead>

                                <tr>
                                    <td>Article</td>
                                    <td>Qte</td>
                                    <!--<td> Code traçabilité</td> -->
                                    <td> Unité</td>
                                    <!--<td>Code Kit</td>-->
                                    <td> Type de produit</td>


                                </tr>
                                
                                <tr class="addartform">

                                    <td class="col-md-3">
                                        <input required=""  required=""  editmode  class="form-control" id="proddetailArticleCodes" name="proddetailArticleCodes" placeholder=""> 
                                    </td>

                                    <td class="col-md-2">
                                        <input required=""  editmode type="text" class="form-control" id="consprodQtes" name="consprodQtes" placeholder="">
                                    </td>

  
                                    <td class="col-md-3" >
                                       <span id="g_artUnite" ></span> 
                                        <!-- <select  selectsearch="stk_Entre_Detail:ent_codeTrace:ent_codeTrace:ent_codeTrace"  editmode  class="form-control col-md-1" id="demaproLottracecode" name="demaproLottracecode" placeholder=""></select> -->
                                    </td>

                                    <td class="col-md-3" >
                                    <span id="g_artType" ></span> 
                                        <!--<select  selectsearch="stk_Entre_Detail:ent_lotCodeTrace:ent_lotCodeTrace:ent_codeTrace"  editmode  class="form-control col-md-1" id="demaproTracecode" name="demaproTracecode" placeholder=""></select>-->
                                    </td>

                                    <td>
                                        <button type="button" id="valdartline" class="btn btn-primary btn-sm" >Ajouter matiére premiére</button>
                                    </td>


                                </tr>

                            </thead>

                        </table>
                    </form>

                    <table class="table table-condensed table-striped" id="detaprotab">
                        <thead>
                            <tr>
                                <th>Liste matiére premiére<br>Type - Article - Code Frs</th>
                                
                                <th>Code produit conditioné <br> -</th>
                                <th>Désignation produit conditioné <br> -</th>
                                 <th>Unité <br> -</th>
                                 <th>Qte produite <br> -</th>
                                  <th> D.L.C <br> -</th>
                                   <th>Qte autres journées <br> -</th>
                                  <th >Qte demmandé<br> -</th>
                                  <th >Operation<br> -</th>
                                <th forminput validprod > D.L.C <br> -</th>
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
                        <div style="display: inline-block;float: left;">Unité de gestion</div>
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
                        <div style="text-align: center;font-size: 18px;font-weight: bold;">Bon de Production</div>
                        <div style="text-align: center;font-size: 18px;font-weight: bold;">N° <span id="prodCodeProdi"></span></div>
                    </th>
                </tr>

                <tr>
                    <td colspan="4" class="spacingpring"></td>

                </tr>

                <tr>
                    <th class="col-md-6">Code Production : <span id="prodCodeProdp"></span></th>
                    <th  class="col-md-6">Date : <span id="prodDateDevisp"></span></th>
                </tr>

                <tr>
                    <th  class="col-md-6">Exercice Production : <span id="prodExerciceProdp"></span></th>

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
                                    <th>Code MP</th>
                                    <th>Code MF</th>
                                    <th>Designation</th>
                                     <th>Unité</th>
                                    <th>Qte</th>
                                   
                                </tr>
                            </thead>
                            <tbody id="dataartlineobjectp">
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

<div style="display: none;">
    <div id="printbarecode">
      
    </div> 
</div>