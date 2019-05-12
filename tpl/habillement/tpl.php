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

                        <div class="form-group marbutton ">
                            <label  class="demaproformentet" for="demaproCode">Code Appro.</label>
                            <input required="" readonly="" editmode type="text" class="form-control" id="demaproCode" name="demaproCode" placeholder="">
                        </div>
                        
                        <div class="form-group marbutton">
                            <label  class="demaproformentet"  for="demaproExercice">Exercice Appro.</label>
                            <input  required="" readonly="" editmode type="text" class="form-control" id="demaproExercice" name="demaproExercice" placeholder="">
                        </div>
                        
                         <div class="form-group marbutton">
                            <label  class="demaproformentet"  for="demaproDate">Date Appro.</label>
                            <input  datepick required=""  editmode type="text" class="form-control" id="demaproDate" name="demaproDate" placeholder="">
                        </div>
          

                    </form>

                    <div class="page-header">
                        <h4>Détail <small></small></h4>
                    </div>
                    <form id="addartbeform" class="form-inline" action="ajout_article_demapro" >
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
                                        <select required=""  selectsearch="stk_article:art_code:art_designation:art_code;art_designation" required=""  editmode  class="form-control" id="demaproArtcode" name="demaproArtcode" placeholder=""></select>
                                    </td>

                                    <td class="col-md-2">
                                        <input required=""  editmode type="text" class="form-control" id="demaproQte" name="demaproQte" placeholder="">
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
                                <th>Qte</th>

                            </tr>
                        </thead>
                        <tbody id="demaproartlineobject">
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
                        <div style="text-align: center;font-size: 18px;font-weight: bold;">Demande d'approvisionnement</div>
                        <div style="text-align: center;font-size: 18px;font-weight: bold;">N° <span id="demaproCodei"></span></div>
                    </th>
                </tr>

                <tr>
                    <td colspan="4" class="spacingpring"></td>

                </tr>

                <tr>
                    <th class="col-md-6">Code d'approvisionnement : <span id="demaproCodep"></span></th>
                    <th  class="col-md-6">Date : <span id="demaproDatep"></span></th>
                </tr>

                <tr>
                    <th  class="col-md-6">Exercice Approvisionnement : <span id="demaproExercicep"></span></th>
                
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
                                    <th>Qte</th>
                                </tr>
                            </thead>
                            <tbody id="demaproartlineobjectp">
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
                        <div style="display: inline-block;float: right;padding-right: 60px;"> Unité de gestion des achats </div>
                    </td>

                </tr>
            </tbody>
        </table>
    
    </div>
</div>