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
                            <label  class="entformentet" for="entBcolcode">N° Recu de livraison MP</label>
                            <input required="" editmode type="text" class="form-control" id="entBcolcode" name="entBcolcode" placeholder="">
                        </div>
                        <div class="form-group marbutton">
                            <label  class="entformentet" for="entBcolexercice">N° de Parcelle</label>
                            <input required="" editmode type="text" class="form-control" id="entBcolexercice" name="entBcolexercice" placeholder="">
                        </div>
                        <!-- <div class="form-group marbutton beetr">  -->
                        <div class="form-group marbutton"> 
                            <label  class="entformentet" for="entContratcode">Class</label>
                            
                            <select style="width: 172px" type="text"  editmode type="text" class="form-control" id="entContratcode" name="entContratcode" >
                                <!-- <option value="0" selected= "true" > Choisir la Catégorie</option> -->
                                <option value="A">  A</option>
                                <option value="B">  B</option>
                                <option value="C">  C</option>
                                
                            </select>
                        </div>
                        <!-- <div class="form-group marbutton beetr"> -->
                        <div class="form-group marbutton">
                            <label  class="entformentet" for="entContratexercice">N° de Charge</label>
                            <input editmode type="text" class="form-control" id="entContratexercice" name="entContratexercice" placeholder="">
                        </div>
                        <div class="form-group marbutton">
                            <label  class="entformentet" for="entDatereception">Date reception</label>
                            <input editmode  required="" datepick   type="text" class="form-control" id="entDatereception" name="entDatereception" placeholder="">
                        </div>
                        <div class="form-group marbutton">
                            <label  required="" class="entformentet" for="entNumbl">Moustiquaire</label>
                            <select editmode style="width: 172px" type="text" class="form-control" id="entNumbl" name="entNumbl" placeholder="">
                                <option value="Oui">Oui</option>
                                <option value="Non">Non</option>
                            </select>

                            <!-- <label style="margin-left: 12px!important" class="radio-inline"><input  editmode type="radio" value="Non" class="" id="" name="entNumbl" checked>Non</label>
                            <label style="margin-left: 12px!important;width:110px" class="radio-inline"><input   editmode type="radio" value="Oui" id="entNumbl" name="entNumbl" >Oui</label> -->
                        </div>
                         <div class="form-group marbutton" style="display:none">
                            <label  class="entformentet" for="entDatebl">Date BL</label>
                            <input  editmode type="hidden"  class="form-control" id="entDatebl" name="entDatebl" placeholder="">
                        </div> 
                         <div class="form-group marbutton" style="display:none">
                            <label  class="entformentet" for="entTypecode">Type</label>
                            <select editmode style="width: 172px" type="text" class="form-control" id="entTypecode" name="entTypecode" placeholder="">
                                <option value="0">Bon de commande</option>
                                <option value="1">Marché</option>
                            </select>
                        </div>

                        <!-- <div class="form-group marbutton beetr">  -->
                        <div class="form-group marbutton ">   
                            <label  class="entformentet" for="entNumtransit">N° de Caisse</label>
                            <input editmode type="text" class="form-control" id="entNumtransit" name="entNumtransit" placeholder="">
                        </div>
                        <!-- <div class="form-group marbutton beetr"> -->
                        <div class="form-group marbutton ">
                        <label  class="entformentet" for="entDevise">Infestation (%)</label>
                            <input editmode type="text" class="form-control" id="entDevise" name="entDevise" placeholder="">
                        </div>
                        <!-- <div class="form-group marbutton beetr" > -->
                        <div class="form-group marbutton " style="display:none">
                            <label  class="entformentet" for="entCours">Cours</label>
                            <input editmode type="text" class="form-control" id="entCours" name="entCours" placeholder="">
                        </div>
                        <div class="form-group marbutton">
                            <label   class="entformentet" for="entFournisseurcode">Fournisseur</label>
                            <div class="form-control" style="width: 200px;border: 0;"><select required="" dep="frs_typeCode:frs_typeCode"  selectsearch="stk_fournisseur:frs_code:frs_raisonSociale:frs_code;frs_raisonSociale" editmode type="text" class="form-control" id="entFournisseurcode" name="entFournisseurcode" placeholder=""></select></div>
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
                            <label  class="entformentet" for="entObservation">Observation</label>
                            <input editmode type="text" class="form-control" id="entObservation" name="entObservation" placeholder="">
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
                                    <td>Qte en Kg</td>
                                    <td>Qte surp. en Kg</td>
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
                                <th>Qte en kg</th>
                                <th>Qte surplus  en kg</th>
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

                border: 1px solid #000
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
        </style>
        <table style="width: 100%;font-size: 12px;">
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
                                        <!-- <div class="dark-gris" style="font-size: 22px!important;font-family: Arial!important;padding-bottom:5px">
                                            Bon D'Entrée
                                        </div>
                                        <div class="dark-gris-txt fs14 fwn" style="margin-top: 3px;">
                                            N° : <span id="entCodei"></span>
                                        </div> -->
                                        <div class="dark-gris fs14 fwn" style="margin-top: 3px!important;font-family: Arial!important;padding-bottom:5px">
                                            <!-- 04 Avril 2022  -->
                                            Edité le: <span class="dark-gris fs14 fwn" id="entDatereceptionp"></span>
                                            
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
                        <div style="text-align: center;font-size: 20px;font-weight: bold;">Bon d'entrée</div>
                        <div style="text-align: center;font-size: 20px;font-weight: bold;">N° <span id="entCodep"></span></div>
                    </th>
                </tr>

                <tr>
                    <td colspan="4" class="spacingpring"></td>

                </tr>

                <tr>
                    <!-- <th class="col-md-4 fs14 dark-gris-txt" >Code BE : <span id="entCodep"></span></th> -->
                    <!-- <th  class="col-md-4 fs14">Date reception : <span id="entDatereceptionp"></span></th> -->
                    <th  class="col-md-4 etrbep fs16">N° de Caisse : <span id="entNumtransitp"></span></th>
                </tr>

                <tr>
                    <th  class="col-md-4  fs16 ">Exercice BE : <span id="entExercicep"></span></th>
                    <th  class="col-md-4 fs16 ">Moustiquaire : <span id="entNumblp"></span></th>
                    <th  class="col-md-4 etrbep fs16 ">Infestation  : <span id="entDevisep"></span>%</th>
                </tr>


                <tr>

                    <th  class="col-md-4  fs16">N° Récu de Livraison : <span id="entBcolcodep"></span></th>
                    <th  class="col-md-4  fs16">Fournisseur : <span id="entFournisseurcodep"></span></th>
                    <!-- <th  class="col-md-4">Date BL : <span id="entDateblp"></span></th> -->
                    <!-- <th  class="col-md-4 etrbep">Cours : <span id="entCoursp"></span></th> -->
                </tr>

                <tr>
                    <th  class="col-md-4  fs16">N° de Parcelle : <span id="entBcolexercicep"></span></th>
                    <th  class="col-md-4 etrbep  fs16">N° facture : <span id="entNumfacturep"></span></th>
                    <th  class="col-md-4  fs14">Observation : <span id="entObservationp"></span></th>
                </tr>


                <tr>
                    <th  class="col-md-4  fs16">Class : <span id="entContratcodep"></span></th>
                    <th  class="col-md-4 etrbep  fs16">Date Facture : <span id="entDatefacturep"></span></th>
                    <!-- <th  class="col-md-4  fs14">Fournisseur : <span id="entFournisseurcodep"></span></th> -->
                </tr>

                <tr>
                    <!-- <th  class="col-md-4">Exercice Contrat : <span id="entContratexercicep"></span></th> -->
                    <!-- <th  class="col-md-4">Type : <span id="entTypecodep"></span></th> -->

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