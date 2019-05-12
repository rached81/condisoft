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
                            <label  class="entformentet" for="entDatereception">Date de reception</label>
                            <input editmode  required="" datepick   type="text" class="form-control" id="entDatereception" name="entDatereception" placeholder="">
                        </div>
                    
                        <div class="form-group marbutton">
                            <label  class="entformentet" for="entDatebl">Date de Fabrication</label>
                            <input  editmode type="text" datepick  class="form-control" id="entDatebl" name="entDatebl" placeholder="">
                        </div>
                     



                        <div class="form-group marbutton">
                            <label  class="entformentet" for="entTypecode">Type</label>
                            <select editmode style="width: 172px" type="text" class="form-control" id="entTypecode" name="entTypecode" placeholder="">
                                <option value="0">Ordinaire</option>
                                <option value="1">Exceptionel</option>
                            </select>
                        </div>
                        
                         <div class="form-group marbutton motif">
                            <label  class="entformentet" for="entMotifcode">Motif</label>
                            <select editmode style="width: 172px" type="text" class="form-control" id="entMotifcode" name="entMotifcode" placeholder="">
                                <option value="0" selected="selected">Retour client</option>
                                <option value="1">Divers</option>
                            </select>
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
                                    <td>Qte</td>
                      
                                    <td>Date peromption</td>
                                   
                            

                                </tr>

                                <tr class="addartform">

                                    <td class="col-md-3">
                                        <select required="" dep="art_etatCode:art_etatCode"  selectsearch="stk_article:art_code:art_designation:art_code;art_designation" required=""  editmode  class="form-control" id="entArtcodea" name="entArtcodea" placeholder=""></select>
                                    </td>

                                    <td>
                                        <input required=""  editmode type="text" class="form-control" id="entQtea" name="entQtea" placeholder="">
                                    </td>

                                 

                                    <td>
                                        <input required="" datepick  editmode type="text" class="form-control" id="entDateperomptiona" name="entDateperomptiona" placeholder="">
                                    </td>

                                     

                                 
                                       <!-- <select  selecmodel="stk_tva:tva_code:tva_designation"  editmode  class="form-control col-md-1" id="tvaCode" name="tvaCode" placeholder=""></select> -->
                                    

                                    <td>
                                        <button type="button" id="valdartline" class="btn btn-primary btn-sm" >Valider art</button>
                                    </td>


                                </tr>

                            </thead>

                        </table>
                    </form>

                    <table class="table table-condensed table-striped" id="detbetab">
                        <thead>
                            <tr>
                                <th>Code</th>
                                <th>Désignation</th>
                                <th>Tracage article</th>
                                <th>Qte</th>
                             
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
                </tr>

                <tr>
                    <th  class="col-md-4">Exercice BE : <span id="entExercicep"></span></th>
                  <th  class="col-md-4">Date de Fabrication : <span id="entDateblp"></span></th>
                </tr>


                <tr>
                    <th  class="col-md-4">Observation : <span id="entObservationp"></span></th>
                </tr>


                <tr>
          
                    <th  class="col-md-4">Type : <span id="entTypecodep"></span></th>
                    <th  class="col-md-4" id="motf">Motif : <span id="entMotifcodep"></span></th>
                </tr>

            

            </thead>
            <tbody>

                <tr>
                    <td colspan="4" class="spacingpring"></td>
                </tr>

                <tr>

                    <td colspan="4" class="contentpring">

                        <table class="table table-condensed table-bordered tabprint" style="font-size: 12px;" id="dettranstab">

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