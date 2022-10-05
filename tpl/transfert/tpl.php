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
                            <label  class="transformentet" for="transCode">Code Trans.</label>
                            <input required="" readonly="" editmode type="text" class="form-control" id="transCode" name="transCode" placeholder="">
                        </div>

                        <div class="form-group marbutton">
                            <label  class="transformentet"  for="transExercice">Exercice Trans.</label>
                            <input  required="" readonly="" editmode type="text" class="form-control" id="transExercice" name="transExercice" placeholder="">
                        </div>

                        <div class="form-group marbutton">
                            <label  class="transformentet"  for="transDate">Date demande</label>
                            <input  <?php
                            $date = new Zend_Date();
                            echo 'value="' . $date->toString("dd/MM/yyyy") . '"';
                            ?> required=""  editmode type="text" readonly="readonly" class="form-control" id="stkTransDatedem" name="stkTransDatedem" placeholder="">
                        </div>

                        <div class="form-group marbutton">
                            <label  class="transformentet"  for="transDate">Date livraison</label>
                            <input  editmode type="text" readonly="readonly" class="form-control" id="stkTransDateliv" name="stkTransDateliv" placeholder="">
                        </div>
                        <br>
                        <div class="form-group marbutton">
                            <label  class="transformentet"  for="transDate">Mag demandeur : </label>
                            <span id="labelMagDemandeur" style="font-weight:bold"></span>
                            <input  required=""  editmode type="hidden" readonly="readonly" class="form-control" id="transMagdem" name="transMagdem" placeholder="">
                        </div>

                        <div class="form-group marbutton">
                            <label  class="transformentet"  for="transDate">Mag expediteur</label>
                            <select style="width:171px;"   required="" editmode type="text" class="form-control" id="transMagliv" name="transMagliv" placeholder="">

                            </select>
                        </div>

                        <div class="form-group marbutton">
                            <label  class="transformentet"  for="transObs">Observation</label>
                            <input  editmode type="text"   class="form-control" id="transObs" name="transObs" placeholder="">
                        </div>

                    </form>

                    <div class="page-header">
                        <h4>Détail <small></small></h4>
                    </div>

                    <form id="addartbeform" class="form-inline" action="chk_art_trans" direct callback="ajout_article_trans"  addid="exe mag transArtcode transMagliv" >
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
                                        <select required="" dep="art_etatCode:art_etatCode"  selectsearch="stk_article:art_code:art_designation:art_code;art_designation" required=""  editmode  class="form-control" id="transArtcode" name="transArtcode" placeholder=""></select>
                                    </td>

                                    <td class="col-md-2">
                                        <input required=""  editmode type="text" class="form-control" id="transQte" name="transQte" placeholder="">
                                    </td>

                                    <td class="col-md-3" >
                                        <!--<select  selectsearch="stk_Entre_Detail:ent_codeTrace:ent_codeTrace:ent_codeTrace"  editmode  class="form-control col-md-1" id="transLottracecode" name="transLottracecode" placeholder=""></select>-->
                                    </td>

                                    <td class="col-md-3" >
                                        <!--<select  selectsearch="stk_Entre_Detail:ent_lotCodeTrace:ent_lotCodeTrace:ent_codeTrace"  editmode  class="form-control col-md-1" id="transTracecode" name="transTracecode" placeholder=""></select>-->
                                    </td>

                                    <td>
                                        <button type="button" id="valdartline" class="btn btn-primary btn-sm" >Ajouter Art.</button>
                                    </td>

                                </tr>

                            </thead>

                        </table>
                    </form>

                    <table class="table table-condensed table-striped" id="dettranstab">
                        <thead>
                            <tr>

                                <th>Code</th>
                                <th>Désignation</th>
                                <th>Qte dem</th>
                                <th>Qte liv</th>

                            </tr>
                        </thead>
                        <tbody id="transartlineobject">
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
            <div style="text-align: center;font-size: 18px;font-weight: bold;">Bon de Transfert</div>
            <div style="text-align: center;font-size: 18px;font-weight: bold;">N° <span id="transCodei"></span></div>
            </th>
            </tr>

            <tr>
                <td colspan="4" class="spacingpring"></td>

            </tr>

            <tr>
                <th class="col-md-6">Mag demmaneur : <span id="transMagdemp"></span></th>
                <th  class="col-md-6">Mag expediteur : <span id="transMaglivp"></span></th>
            </tr>

            <tr>
                <th  class="col-md-6">Exercice transfert : <span id="transExercicep"></span></th>
                <th  class="col-md-6">Date demande: <span id="stkTransDatedemp"></span></th>
            </tr>


            <tr>
                <th  class="col-md-6">Date livraison: <span id="stkTransDatelivp"></span></th>
                <th  class="col-md-6"></th>
            </tr>

            </thead>
            <tbody>
                <tr>
                    <td colspan="4" class="spacingpring"></td>

                </tr>
                <tr>
                    <td colspan="4" class="contentpring">

                        <table class="table table-condensed table-bordered tabprint" style="font-size: 12px;" id="dettranstabprint">
                            <thead>
                                <tr>

                                    <th>Code</th>
                                    <th>Désignation</th>
                                    <th>Tracage article</th>
                                    <th>Qte</th>

                                </tr>
                            </thead>
                            <tbody id="transartlineobjectp">
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
                        <div style="display: inline-block;float: right;padding-right: 60px;"> Service demandeur</div>
                    </td>

                </tr>
            </tbody>
        </table>

    </div>
</div>


<input type="hidden" id="art_etatCode" value="11"> 
<input id="dateinp" <?php
       $date = new Zend_Date();
       echo 'value="' . $date->toString("dd/MM/yyyy") . '"';
       ?>  type="hidden" >