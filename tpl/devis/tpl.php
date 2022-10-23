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

                        <div forminput devis class="form-group marbutton ">
                            <input id="prodId" name="prodId" type="hidden">
                            <label class="demaproformentet" for="prodCodeDeviBc">Code Devis.</label>
                            <input required="" readonly="" editmode type="text" class="form-control" id="prodCodeDeviBc" name="prodCodeDeviBc" placeholder="">
                        </div>

                        <div forminput devis class="form-group marbutton">
                            <label class="demaproformentet" for="prodExerciceDevis">Exercice Devis.</label>
                            <input required="" readonly="" editmode type="text" class="form-control" id="prodExerciceDevis" name="prodExerciceDevis" placeholder="">
                        </div>

                        <div forminput devis class="form-group marbutton">
                            <label class="demaproformentet" for="prodDateDevis">Date Devis.</label>
                            <input datepick required="" editmode type="text" class="form-control" id="prodDateDevis" name="prodDateDevis" placeholder="">
                        </div>

                        <div forminput bc class="form-group marbutton">
                            <label class="demaproformentet" for="prodDateDevis">Date B.C</label>
                            <input datepick required="" editmode type="text" class="form-control" id="prodDateBc" name="prodDateBc" placeholder="">
                        </div>

                        <div forminput bc class="form-group marbutton">
                            <label class="demaproformentet" for="prodExerciceBc">Exercice B.C</label>
                            <input required="" readonly="" editmode type="text" class="form-control" id="prodExerciceBc" name="prodExerciceBc" placeholder="">
                        </div>



                        <div forminput devis class="form-group marbutton">
                            <label class="entformentet" for="prodCodeClient">Client</label>
                            <div class="form-control" style="width: 200px;border: 0;"><select required="" dep="frs_typeCode:frs_typeCode" selectsearch="stk_fournisseur:frs_code:frs_raisonSociale:frs_code;frs_raisonSociale" editmode type="text" class="form-control" id="prodCodeClient" name="prodCodeClient" placeholder=""></select></div>
                        </div>

                        <div forminput devis class="form-group marbutton">
                            <label class="entformentet" for="prodCommerciale">Commerciale</label>
                            <div class="form-control" style="width: 200px;border: 0;"><select required="" selectsearch="util:IDUTIL:UTINOM:IDUTIL;UTINOM" editmode type="text" class="form-control" id="prodCommerciale" name="prodCommerciale" placeholder=""></select></div>
                        </div>

                        <div forminput devis class="form-group marbutton">
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


                                    <td>Article</td>
                                    <td>Poids Net en Kg</td>
                                    <td>Nbre des Pièces</td>
                                    <td>Prix de Kg</td>
                                    <td>PU Devise</td>
                                    <td>Tva</td>
                                    <td>
                                        <!--Code traçabilité-->
                                    </td>
                                    <td>
                                        <!--Code Kit-->
                                    </td>

                                </tr>
                                <tr class="addartform">

                                    <td class="col-md-3">
                                        <select required="" dep="art_class:art_class" selectsearch="stk_article:art_code:art_designation:art_code;art_designation;art_code:art_weight" required="" editmode class="form-control" id="proddetailArticleCodea" name="proddetailArticleCodea" placeholder=""></select>
                                    </td>

                                    <td class="col-md-2">
                                        <input required="" editmode type="text" class="form-control" id="netWeight" name="netWeight" placeholder="">
                                    </td>

                                    <td class="col-md-2">
                                        <input required="" editmode type="text" class="form-control" id="proddetailQteDevisa" name="proddetailQteDevisa" placeholder="">
                                        <input type="hidden" id="weightArticle" value="" />
                                    </td>
                                    <td class="col-md-2">
                                        <input required="" editmode type="text" class="form-control" id="priceOneUnit" name="priceOneUnit" placeholder="">
                                    </td>
                                    <td class="col-md-2">
                                        <input required="" editmode type="text" class="form-control" id="proddetailPrixUniaireDeviseDevisa" name="proddetailPrixUniaireDeviseDevisa" placeholder="">
                                    </td>

                                    <td class="col-md-3">
                                        <select required="" selecmodel="stk_tva:tva_pourcentage:tva_designation" required="" editmode class="form-control" id="proddetailTvaDevisa" name="proddetailTvaDevisa" placeholder=""></select>
                                    </td>

                                    <!-- <td class="col-md-1">
                                        <select  selectsearch="stk_Entre_Detail:ent_codeTrace:ent_codeTrace:ent_codeTrace"  editmode  class="form-control col-md-1" id="demaproLottracecode" name="demaproLottracecode" placeholder=""></select>
                                    </td> -->

                                    <td class="col-md-3">
                                        <!--<select  selectsearch="stk_Entre_Detail:ent_lotCodeTrace:ent_lotCodeTrace:ent_codeTrace"  editmode  class="form-control col-md-1" id="demaproTracecode" name="demaproTracecode" placeholder=""></select>-->
                                    </td>

                                    <td>
                                        <button type="button" id="valdartline" class="btn btn-primary btn-sm">Valider art</button>
                                    </td>


                                </tr>

                            </thead>

                        </table>
                    </form>

                    <table class="table table-condensed table-striped" id="detaprotab">
                        <thead>
                            <tr>
                                <th>N°</th>
                                <th>Désignation</th>
                                <!-- <th>Unité</th> -->
                                <th>Poids Net en Kg</th>
                                <th>Nbre des Pièces</th>
                                <th>Prix de Kg</th>
                                <th>PU Devise</th>
                                <th>TVA</th>
                                <th>PTTC <span class="_devise"></span></th>
                            </tr>
                        </thead>
                        <tbody id="dataartlineobject">
                        </tbody>

                        
                    </table>
                    <!-- START  : Note sous le Devis  -->
                    <div class="col-md-6" id="detail-invoice-before" style="display:none">
                            <div class="col-lg-10">
                                <div class="input-group input-group-sm ">
                                    <span class="input-group-addon">Note Optionnelle sous le Devis :</span>
                                    <textarea id="not-edit" class="form-control" rows="4" cols="70"><b> Texte  en gras : </b> Texte Normal.<br/>  Retour à la ligne.</textarea>
                                </div>
                            </div>
                            <button id="help-comment"class="btn btn-primary btn-sm">?</button>
                        </div>
                        <!-- END  : Note sous le Devis  -->

                </div>
            </div>
        </div>
    </div>
</div>


<div style="display: none">
    <div id="printarea">
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

            .gris {
                color: #D3D3D3 !important;
            }

            .dark-gris,
            .dark-gris>span {
                color: #808080 !important;
            }

            .dark-gris-txt,
            .dark-gris-txt>span {
                color: #707070 !important;
            }

            .fwn {
                font-weight: normal !important;
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

            .adress-invoice,
            .adress-invoice>span {
                /* color: #404040!important; */
                font-size: 14px !important;
                font-family: Arial !important;
                margin-right: 10px;
                margin-right: 10px;

            }

            body {
                -webkit-print-color-adjust: exact;
                /*chrome & webkit browsers*/
                color-adjust: exact;
                /*firefox & IE */
            }

            .head-table,
            .head-table>th,
            .head-table>td {
                background-color: rgb(184 179 126);
                background-color: #ada66b !important;
                color: #fff !important;
                font-weight: bold;
                font-size: 14px;
                padding-bottom: 10px !important;
                padding-top: 7px !important;
                border: 1px solid #000
            }

            .head-span {
                color: #fff !important;
            }

            .fs14 {
                font-size: 14px;
            }

            .fs16 {
                font-size: 16px;
            }

            #notebefore {
                width: 400px;
                font-size: 16px;
                font-style: italic;
                margin-left: 20px;
                margin-bottom: 10px;
                font-weight: inherit;
                font-family: Arial;
                border-left: 2px solid #545454;
                padding-left: 7px;
                line-height: 23px;

            }

            #noteafter {
                width: 550px;
                margin-top: 25px;
                font-size: 14px;
                margin-left: 20px;
                margin-bottom: 10px;
                font-weight: inherit;
                font-family: Arial;
                color: #000;
                line-height: 23px;
                /* border-left: 2px solid #545454; */
                /* padding-left: 7px; */

            }

            table.tabprint tbody>tr>td,
            table.tabprint thead>tr>th {
                text-align: left;
            }

            @media print {
                body {
                    -webkit-print-color-adjust: exact;
                    /*chrome & webkit browsers*/
                    color-adjust: exact;
                    /*firefox & IE */

                }

                table.tabprint {
                    border-collapse: unset;
                }

                .head-table,
                .head-table>th,
                .head-table>td {
                    background-color: rgb(184 179 126);
                    background-color: #ada66b !important;
                    color: #fff !important;
                    font-weight: bold;
                    font-size: 14px;

                    border: 1px solid #000
                }

                #dataartlineobjectpf,
                #dataartlineobjectpf>tr {
                    border: 1px solid #000
                }
            }


            @media print {

                .footer,
                #non-printable {
                    display: none !important;
                }

                #printable {
                    display: block;
                }
            }
        </style>
        <table style="width: 100%;font-size: 12px;" id="detaprotabprint">
            <thead>
                <tr>
                    <th colspan="4">


                        <table style="width: 100%;font-size: 12px;" border=0 id="detaprotabprint">
                            <thead>
                                <tr>
                                    <th colspan="3" style="width:65%">
                                        <div style="display: inline-block;float: left;">
                                            <div>
                                                <img src="<?php echo WEBROOT ?>/lib/img/logo.jpg" width="100%" />
                                            </div>


                                        </div>
                                        <div class="adress-invoice">
                                            <div class="dark-gris">
                                                <div class="dark-gris" style="font-size:33px;font-family:Arial, Helvetica, sans-serif;padding-top:10px">HAZOUA</div>
                                                <div class="dark-gris-txt fs14 fwn"> Avenue Almaghreb Alarabie Hazoua 2223, Tozeur</div>
                                                <div class="dark-gris-txt fs14 fwn">Tel: 00 216 76 44 01 03</div>
                                                <div class="dark-gris-txt fs14 fwn">Fax: 00 216 76 44 01 02</div>
                                                <div class="dark-gris-txt fs14 fwn">E-mail: benighreb@gmail.com</div>

                                            </div>

                                    </th>
                                    <th style="text-align:right;padding-right:20px!important;vertical-align: top!important">

                                        <div class="dark-gris fs14 fwn" style="margin-top: 3px!important;font-family: Arial!important;padding-bottom:5px;color:#232323!important">
                                            Edité le: <span class=" fs14 fwn" style="color:#232323!important" id="prodDateDevisp"></span>

                                        </div>
                                    </th>
                                </tr>
                            </thead>
                        </table>

                    </th>
                </tr>



                <tr>
                    <td colspan="4" class="spacingpring"></td>

                </tr>
                <tr>
                    <th colspan="4">
                        <div style="text-align: center;font-size: 22px;font-weight: bold;">Devis</div>
                        <div style="text-align: center;font-size: 22px;font-weight: bold;">N° <span id="prodCodeDeviBci"></span></div>
                    </th>
                </tr>

                <tr>
                    <td colspan="4" class="spacingpring"></td>

                </tr>

                <tr>
                    <th class="col-md-2">&nbsp;</th>
                    <th class="col-md-4 fs16 fwn" style="padding-bottom: 5px!important;padding-top:3px!important;">Code devis : <span id="prodCodeDeviBcp"></span></th>
                    <th class="col-md-4 fs16 fwn" style="padding-bottom: 5px!important;padding-top: 3px!important;">Devise : <span id="prodDevisep"></span></th>
                    <th class="col-md-2">&nbsp;</th>
                </tr>

                <tr>
                    <th class="col-md-2">&nbsp;</th>
                    <th class="col-md-4 fs16 fwn" style="padding-bottom: 5px!important;padding-top: 3px!important;">Exercice devis : <span id="prodExerciceDevisp"></span></th>
                    <th class="col-md-4 fs16 fwn" style="padding-bottom: 5px!important;padding-top: 3px!important;">Commercial : <span id="prodCommercialep"></span></th>
                    <th class="col-md-2">&nbsp;</th>

                </tr>

                <tr>
                    <th class="col-md-2">&nbsp;</th>

                    <th class="col-md-4 fs16 fwn" style="padding-bottom: 5px!important;padding-top: 3px!important;">Cient : <span id="prodClientp"></span></th>
                    <th class="col-md-4 fs16 fwn" style="padding-bottom: 5px!important;padding-top: 3px!important;">&nbsp;</th>
                    <th class="col-md-2">&nbsp;</th>
                </tr>


            </thead>
            <tbody>
                <tr>
                    <td colspan="4" class="spacingpring-min"></td>

                </tr>
                <tr>
                    <td colspan="4" class="contentpring">

                        <table class="table table-condensed table-bordered tabprint" style="font-size: 12px;">
                            <thead class="head-table">
                                <tr class="head-table">
                                    <th>Code</th>
                                    <th>Désignation</th>
                                    <th>Poids Net </th>
                                    <th>Qte</th>
                                    <th>Prix Kg</th>
                                    <th>Prix Art.</th>
                                    <th>TVA</th>
                                    <th>PTTC <span class="head-span _devise"></span></th>
                                </tr>
                            </thead>
                            <tbody id="dataartlineobjectp">
                            </tbody>

                            <tbody id="invoice_footer">
                                <tr>
                                    <td class="itemart" colspan="8"> </td>

                                </tr>
                                <tr>
                                    <td class="itemart" colspan="4">&nbsp; </td>
                                    <td class="itemart" colspan="3" style="text-align: right;">Total HTVA en &euro; : </td>
                                    <td class="itemart" colspan="1" style="text-align: left;" id="htva"></td>
                                </tr>

                                <tr>
                                    <td class="itemart" colspan="4">&nbsp; </td>
                                    <td class="itemart" colspan="3" style="text-align: right;">TVA en &euro; : </td>
                                    <td class="itemart" colspan="1" style="text-align: left;" id="tva"></td>
                                </tr>


                                <tr>
                                    <td class="itemart" colspan="4">&nbsp; </td>
                                    <td class="itemart" colspan="3" style="text-align: right;">Totale TTC ( &#x20AC;) : </td>
                                    <td class="itemart" colspan="1" style="text-align: left;" id="ttc"></td>
                                </tr>

                            </tbody>
                        </table>

                        <div id="noteafter-opt"> </div>
                    </td>
                </tr>

                <tr>
                    <td colspan="4" class="spacingpring"></td>
                </tr>

                <tr>
                    <td colspan="4">
                        <div style="display: inline-block;float: left;padding-left: 60px;">&nbsp;</div>
                        <div style="display: inline-block;float: right;padding-right: 60px;"> Responsable Commerciale </div>
                    </td>

                </tr>
            </tbody>
        </table>
        <div class="footer fwn">
            Siège Sociale: Avenue Almaghreb Alarabie Hazoua 2223, Tunisie - Tel: +216 76 440 103 Fax: +216 76 440 102
            Société à responsabilité limitée (SARL)- MF: 792424A - CD: 806979E - RC: B123862002 Tribunal Tunis FLO ID: 3494
            - ADD en qualité d'entreprise industrielle totalement exportatrice N° DCE-02-065B-1 du 25/04/2022
            BIC: ATBKTNTT <br />IBAN : TN59 0103 0072 1100 0097 1891 - Banque: ATB Tozeur

        </div>

    </div>
</div>
<input type="hidden" id="frs_typeCode" name="frs_typeCode" value="2">
<input type="hidden" id="art_class" name="art_class" value="1">