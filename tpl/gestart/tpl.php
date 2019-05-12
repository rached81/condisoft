<div class="container-fluid" > 
    <div class="row-fluid">
        <div class="col-xs-12">

            <button class="btn btn-sm btn-primary pull-right" ng-click="addartdiag()">Ajouter un article</button>

            <div class="input-group input-group-sm">
                <input type="text" ng-model="artSearch" name="artSearch"  placeholder="Recherche Article" class="form-control" >
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
                        <th>Code</th>
                        <th>Désignation</th>
                        <th>Date de création</th>
                        <th>Prix unitaire</th>
                        <th>P.U.M.P</th>
                        <th>Operation</th>
                    <tr>
                </thead>
                <tbody>
                    <tr ng-repeat="art in arts" >
                        <td>{{art.ARTCOD}}</td>
                        <td>{{art.ARTLIB}}</td>
                        <td>{{art.ARTDCR}}</td>
                        <td>{{art.ARTPU}}</td>
                        <td>{{art.ARTPUMP}}</td>
                        <td>
                            <button class="btn btn-xs btn-danger" ng-click="suppArt(art)">Supprimer</button> 
                            <button class="btn btn-xs btn-primary" ng-click="modifArtdiag(art)">Modifier</button>
                        </td>
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
