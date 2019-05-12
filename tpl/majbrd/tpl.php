<div class="container-fluid" > 
    <div class="row-fluid">
        <div class="col-xs-12">

            <button ng-if="brdpage.length > 0" class="btn btn-sm btn-primary pull-right" ng-click="BrdSave()">Sauvegarder</button>

            <div class="input-group input-group-sm">
                <div class="input-group number-spinner">
                    <span class="input-group-addon">Page N°</span>
                    <span class="input-group-btn data-dwn">
                        <button class="btn btn-default btn-info" data-dir="dwn"><span class="glyphicon glyphicon-minus"></span></button>
                    </span>
                    <input type="text" ng-model="envs.page" ng-change="getBrdPage()" min="1" max="9" name="page"  class="form-control" >
                    <span class="input-group-btn data-up">
                        <button class="btn btn-default btn-info" data-dir="up"><span class="glyphicon glyphicon-plus"></span></button>
                    </span>
                </div>

            </div>
        </div>
    </div>
    <br/>
    <br/>
    <div class="row-fluid">
        <div class="col-xs-12">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th colspan="2">Date de l'inventaire</th>
                        <th style="width: 15%;" colspan="1"><input class="form-control" type="text" readonly="readonly" id="dateinvt" ng-model="brd.dateinvt"></th>
                    <tr>
                    <tr>
                        <th>Code</th>
                        <th>Désignation</th>
                        <th>Date</th>
                        <th style="width: 15%;">Qte inventaire</th>
                    <tr>
                </thead>
                <tbody>
                    <tr ng-repeat="art in brdpage" >
                        <td>{{art.INVART}}</td>
                        <td>{{art.ARTLIB}}</td>
                        <td>{{art.INVDATE = brd.dateinvt}}</td>
                        <td style="width: 15%;"><input  class="form-control" type="text" ng-model="art.INVQTE" ng-change="art.INVQTE = checkFloat(art.INVQTE)"></td>
                    </tr>
                </tbody>
            </table>

        </div>
    </div>

</div>

<div id="form_art" style="display: none;" title="Ajout article">

    <form id="formArt" action="addArt" name="formArt" >
        <br>
        <div class="input-group input-group-sm" id="inpcodart">
            <span class="input-group-addon" ><span style="width: 130px;display: inline-block;">Code article</span></span>
            <input class="form-control" required="" maxlength="7" ng-model="artinp.ARTCOD" id="ARTCOD" name="ARTCOD"/>
        </div>
        <br>

        <div class="input-group input-group-sm">
            <span class="input-group-addon"><span style="width: 130px;display: inline-block;">Libelle article</span></span>
            <input class="form-control" required="" ng-model="artinp.ARTLIB" id="ARTLIB" name="ARTLIB" />
            <input type="hidden" class="form-control" required="" ng-model="artinp.ARTCOD" id="ARTCOD" name="ARTCOD"/>
        </div>
        <br>

        <div class="input-group input-group-sm">
            <span class="input-group-addon"><span style="width: 130px;display: inline-block;">Prix unitaire</span></span>
            <input class="form-control" required="" ng-model="artinp.ARTPU" id="ARTPU" name="ARTPU" />
        </div>
        <br>

        <div class="input-group input-group-sm">
            <span class="input-group-addon"><span style="width: 130px;display: inline-block;">Code TVA</span></span>
            <input class="form-control" required="" ng-model="artinp.ARTTVA" id="ARTTVA" name="ARTTVA" />
        </div>
        <br>
        <div class="input-group input-group-sm">
            <span class="input-group-addon"><span style="width: 130px;display: inline-block;">Unité de distribution</span></span>
            <input class="form-control" required="" ng-model="artinp.UDCOD"  id="UDCOD" name="UDCOD" />
        </div>

    </form>
</div>
