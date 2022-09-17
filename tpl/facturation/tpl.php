<div class="container-fluid">
    <div class="row">
        <div class="col-md-12" id="list-container">

        </div>
    </div>
    <div class="row" id="dialog-container">
        <div id="dialogs">
            <div class="container-fluid">
                <div class="row">
                    <form id="addform" class="form-inline" action="ajout_approvisonnement">

                        <div forminput genfacture facturebl class="form-group marbutton ">
                            <input id="prodId" name="prodId" type="hidden">
                            <label class="demaproformentet" for="prodCodeDeviBc">Code B.C.</label>
                            <input required="" readonly="" editmode type="text" class="form-control" id="prodCodeDeviBc" name="prodCodeDeviBc" placeholder="">
                        </div>

                        <div forminput genfacture facturebl class="form-group marbutton">
                            <label class="demaproformentet" for="prodExerciceBc">Exercice B.C.</label>
                            <input required="" readonly="" editmode type="text" class="form-control" id="prodExerciceBc" name="prodExerciceBc" placeholder="">
                        </div>

                        <div forminput genfacture facturebl class="form-group marbutton ">

                            <label class="demaproformentet" for="prodCodeProd">Code production.</label>
                            <input required="" readonly="" editmode type="text" class="form-control" id="prodCodeProd" name="prodCodeProd" placeholder="">
                        </div>

                        <div forminput genfacture facturebl class="form-group marbutton">
                            <label class="demaproformentet" for="prodExerciceProd">Exercice production.</label>
                            <input required="" readonly="" editmode type="text" class="form-control" id="prodExerciceProd" name="prodExerciceProd" placeholder="">
                        </div>

                        <div forminput genfacture facturebl class="form-group marbutton">
                            <label class="demaproformentet" for="prodDateProd">Date de production.</label>
                            <input required="" readonly="" datepick editmode type="text" class="form-control" id="prodDateProd" name="prodDateProd" placeholder="">
                        </div>

                        <div forminput genfacture facturebl class="form-group marbutton">
                            <label class="entformentet" for="prodCodeClient">Client</label>
                            <div class="form-control" style="width: 200px;border: 0;"><select required="" readonly="" selectsearch="stk_fournisseur:frs_code:frs_raisonSociale:frs_code;frs_raisonSociale" editmode type="text" class="form-control" id="prodCodeClient" name="prodCodeClient" placeholder=""></select></div>
                        </div>

                        <div forminput genfacture facturebl class="form-group marbutton ">
                            <label class="demaproformentet" for="prodCodeFacture">Code Facture.</label>
                            <input required="" readonly="" editmode type="text" class="form-control" id="prodCodeFacture" name="prodCodeFacture" placeholder="">
                        </div>

                        <div forminput genfacture facturebl class="form-group marbutton">
                            <label class="demaproformentet" for="prodExerciceBlfacture">Exercice Facture/BL</label>
                            <input required="" readonly="" editmode type="text" class="form-control" id="prodExerciceBlfacture" name="prodExerciceBlfacture" placeholder="">
                        </div>


                        <div forminput genfacture facturebl class="form-group marbutton ">
                            <label class="demaproformentet" for="prodCodeBl">Code BL.</label>
                            <input required="" readonly="" editmode type="text" class="form-control" id="prodCodeBl" name="prodCodeBl" placeholder="">
                        </div>

                        <div forminput genfacture facturebl class="form-group marbutton">
                            <label class="demaproformentet" for="prodDateBl">Date de BL.</label>
                            <input required="" datepick editmode type="text" class="form-control" id="prodDateBl" name="prodDateBl" placeholder="">
                        </div>

                        <div forminput genfacture facturebl class="form-group marbutton">
                            <label class="demaproformentet" for="prodDateFacture">Date de Facture.</label>
                            <input required="" datepick editmode type="text" class="form-control" id="prodDateFacture" name="prodDateFacture" placeholder="">
                        </div>


                        <div forminput genfacture facturebl class="form-group marbutton">
                            <label class="entformentet" for="prodDevise">Devise</label>
                            <div class="form-control" style="width: 200px;border: 0;"><select required="" selecmodel="stk_devise:devise_code:devise_libelle" editmode type="text" class="form-control" id="prodDevise" name="prodDevise" placeholder=""></select></div>
                        </div>



                    </form>

                    <div class="page-header">
                        <h4>Détail <small></small></h4>
                    </div>
                    <form id="addartbeform" class="form-inline" action="ajout_article_data">
                        <table class="table table-condensed table-striped">
                            <thead>

                                <tr>
                                    <td>Prix unitaire</td>
                                    <td>T.V.A</td>
                                    <td>
                                        <!--Code traçabilité-->
                                    </td>
                                    <td>
                                        <!--Code Kit-->
                                    </td>

                                </tr>

                                <tr class="addartform">

                                    <td class="col-md-3">
                                        <input required="" required="" editmode class="form-control" id="proddetailPrixUniaireDevises" name="proddetailPrixUniaireDevises" placeholder="">
                                    </td>

                                    <td class="col-md-2">
                                        <select required="" selecmodel="stk_tva:tva_code:tva_designation" required="" editmode class="form-control" id="proddetailTvas" name="proddetailTvas" placeholder=""></select>
                                    </td>


                                    <td class="col-md-3">
                                        <!--<select  selectsearch="stk_Entre_Detail:ent_codeTrace:ent_codeTrace:ent_codeTrace"  editmode  class="form-control col-md-1" id="demaproLottracecode" name="demaproLottracecode" placeholder=""></select>-->
                                    </td>

                                    <td class="col-md-3">
                                        <!--<select  selectsearch="stk_Entre_Detail:ent_lotCodeTrace:ent_lotCodeTrace:ent_codeTrace"  editmode  class="form-control col-md-1" id="demaproTracecode" name="demaproTracecode" placeholder=""></select>-->
                                    </td>

                                    <td>
                                        <button type="button" id="valdartline" class="btn btn-primary btn-sm">Reévaluer le prix</button>
                                    </td>


                                </tr>

                            </thead>

                        </table>
                    </form>

                    <table class="table table-condensed table-striped" id="detaprotab">
                        <thead>
                            <tr>
                                <th>Code produit conditioné <br> -</th>
                                <th>Désignation produit conditioné <br> -</th>
                                <th>Unité<br> -</th>
                                <th>Qte produit conditioné <br> -</th>

                                <th> Prix unitaire <br> -</th>
                                <th> TVA <br> -</th>
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
    <!-- <div> -->
    <div id="printareaf">
        <style>
            #invoice_footer,
            #invoice_footer>tr,
            #invoice_footer>tr>td {
                border: 0px !important;
                font-weight: bold;
            }

            .footer {
                position: fixed;
                bottom: 0;
                width: 100%;
                text-align: center;
                z-index: 99999999;
                padding-top: 5px;
                border-top: 2px solid rgb(184 179 126)
            }
            .gris{
                color: #D3D3D3!important;
            }
            .dark-gris, .dark-gris>span{
                color: #808080!important;
            }
            #pspdfkit-footer {
                display: flow-root;
                position: absolute;
                left: 0;
                right: 0;
                bottom: 0;
                box-sizing: border-box;
                width: 100%;
            }

            div#bottomproducts_filter {
                display: none;
            }

            table#middeltabl {
                margin-bottom: 15px;
            }

            div#bottomproducts_info {
                display: none;
                height: 0px !important;
            }
            .adress-invoice, .adress-invoice>span{
                color: #404040!important;
                font-size:16px!important;
                font-family:Arial!important;
                margin-right: 10px;
                margin-right: 10px;
                
            }
            .head-table, .head-table>th{
                background-color: rgb(184 179 126);
                background-color: #ada66b!important;
                color: #fff!important;
                font-weight: bold;
     
                border: 1px solid #fff
            }
        </style>
        <table style="width: 100%;font-size: 12px;" border=0 id="detaprotabprint">
            <thead>
                <tr>
                    <th colspan="3" style="width:70%">
                        <div style="display: inline-block;float: left;">
                            <div style="">
                                <img src="<?php echo WEBROOT ?>/lib/img/logo.jpg" width="100%" />
                            </div>
                            

                        </div>
                        <div class="adress-invoice">
                        <div class="dark-gris" > 
                        <div class="dark-gris" style="font-size:33px;font-family:Arial, Helvetica, sans-serif;padding-top:10px">HAZOUA</div>
                          <div class="dark-gris"> Avenue Almaghreb Alarabie Hazoua 2223, Tozeur</div>
                          <div class="dark-gris">Tel: 00 216 76 44 01 03</div>
                          <div class="dark-gris">Fax: 00 216 76 44 01 02</div>
                          <div class="dark-gris">E-mail:  benighreb@gmail.com</div>

                            </div>
                      
                    </th>
                    <th>&nbsp;</th>
                </tr>
                <tr>
                  
                    <th colspan="4" class="gris"style="padding-right:20px!important;width:30%;text-align:right; font-weight: bolder;font-size: 16px;color:#9a9a9a!important;">
                        <div class="dark-gris" style="font-size: 25px!important;font-family: Arial!important;padding-bottom:15px">
                            FACTURE
                        </div>
                        <div  class="dark-gris" style="margin-top: 5px;">
                            N° :  <span id="prodCodeFacturepf"></span>
                        </div>
                        <div  class="dark-gris" style="margin-top: 5px;">
                            <!-- 04 Avril 2022  -->
                            DATE: 
                            <?php
                                $date = new Zend_Date();
                                echo $date->toString("dd-MM-yyyy");
                            ?>
                        </div>

                    </th>
                </tr>

                <tr>
                    <td colspan="4" class="spacingpring"></td>

                </tr>

                <tr>
                    <th  width="55%" colspan="2" >
                        <!-- Code facture : <span id="prodCodeFacturepf"></span> -->
                    </th>
                    <th class="adress-invoice" width="45%" colspan="2"  >
                    <div class="dark-gris" style="font-size:25px">DESTINATAIRE</div>    
                    </th>
                </tr>
                <tr>
                    <th  width="55%" colspan="2" >
                        <!-- Code facture : <span id="prodCodeFacturepf"></span> -->
                    </th>
                    <th class="adress-invoice"  width="45%" colspan="2" >
                       Client : <span id="prodClienpf"></span>
                
                    </th>
                </tr>
                <tr>
                    <th  width="55%" colspan="2" >
                        <!-- Client : <span id="prodClienpf"></span> -->
                    </th>
                    <th  class="adress-invoice" width="45%" colspan="2"  >Adresse : <span id="clientAdress"></span></th>
                </tr>

                <tr>
                    <th colspan="2"  width="55%">

                        <!-- Exercice facture : <span id="prodExerciceFacturepf"></span> -->
                    </th>
                    <th class="adress-invoice" colspan="2"  >Devise : <span id="prodDevisepf"></span></th>
                </tr>

                <tr>
                    <th colspan="2" >
                        <!-- Commercial : <span id="prodCommercialepf"></span> -->
                    </th>
                    <th class="adress-invoice" colspan="2"  >Matricule Fiscale : <span id="frsMf"></span></th>
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
                                <tr  class="head-table" style="">
                                    <th>Code</th>
                                    <th>Désignation</th>
                                    <!-- <th>Unité</th> -->
                                    <th>Qte</th>
                                    <th>Prix unitaire en &euro;</th>
                                    <th>TVA</th>
                                    <th>PTTTC en &euro;</th>
                                </tr>
                            </thead>
                            <tbody id="dataartlineobjectpf">
                            </tbody>
                            <tbody id="invoice_footer">
                                <tr>
                                    <td class="itemart" colspan="6"> </td>

                                </tr>
                                <tr>
                                    <td class="itemart" colspan="3">&nbsp; </td>
                                    <td class="itemart" colspan="2" style="text-align: right;">Total HTVA en &euro; : </td>
                                    <td class="itemart" colspan="1" style="text-align: left;" id="htva"></td>
                                </tr>

                                <tr>
                                    <td class="itemart" colspan="3">&nbsp; </td>
                                    <td class="itemart" colspan="2" style="text-align: right;">TVA en &euro; : </td>
                                    <td class="itemart" colspan="1" style="text-align: left;" id="tva"></td>
                                </tr>


                                <!-- <tr>
                                    <td style="border:0px" class="itemart" colspan="4" >&nbsp; </td>
                                    <td class="itemart" colspan="2" style="text-align: right;"  >Timbre : </td>
                                    <td class="itemart" colspan="1" style="text-align: left;"   id="timbre"></td>
                                </tr> -->

                                <tr>
                                    <td class="itemart" colspan="3">&nbsp; </td>
                                    <td class="itemart" colspan="2" style="text-align: right;">Totale TTC ( &#x20AC;) : </td>
                                    <td class="itemart" colspan="1" style="text-align: left;" id="ttc"></td>
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
        <div class="footer">
        Adresse: Avenue Almaghreb Alarabie Hazoua 2223, Tozeur - Tel: 00 216 76 44 01 03
        Société à responsabilité limitée (SARL) - RC : B0XXXXXXXXX - Matricule fiscal : 159XXXXXX/A/M/000
IBAN : TN59 0860 XXXX XXXX XXXX XXXX 

        </div>
    </div>
</div>





<div style="display: none">
    <div id="printareab">
        <table style="width: 100%;font-size: 12px;" id="detaprotabprint">
            <thead>
                <tr>
                    <th colspan="4">
                        <div style="display: inline-block;float: left;">
                            <div style="">
                                <img src="<?php echo WEBROOT ?>/lib/img/logo.jpg" width="100%" />
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
                        <div style="text-align: center;font-size: 18px;font-weight: bold;">Bon de livraison</div>
                        <div style="text-align: center;font-size: 18px;font-weight: bold;">N° <span id="prodCodeProdib"></span></div>
                    </th>
                </tr>

                <tr>
                    <td colspan="4" class="spacingpring"></td>

                </tr>

                <tr>
                    <th class="col-md-6">Code B.L : <span id="prodCodeBlpb"></span></th>
                    <th class="col-md-6">Date : <span id="prodDateBlpb"></span></th>
                </tr>


                <tr>
                    <th class="col-md-6">Client : <span id="prodClienpb"></span></th>
                    <th class="col-md-6">Adresse : <span id="clientAdresspb"></span></th>
                </tr>

                <tr>
                    <th class="col-md-6">Exercice B.l : <span id="prodExerciceBlpb"></span></th>

                    <th class="col-md-6">Devise : <span id="prodDevisepb"></span></th>
                </tr>



                <tr>
                    <th class="col-md-6">Commercial : <span id="prodCommercialepb"></span></th>
                    <th class="col-md-6">Matricule Fiscale : <span id="frsMfb"></span></th>
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

                                </tr>
                            </thead>
                            <tbody id="dataartlineobjectpb">
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