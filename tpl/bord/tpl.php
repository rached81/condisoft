<div class="container-fluid" > 
    <div class="row-fluid">
        <div class="col-xs-12">
            <button id="genbrd" class="btn btn-sm btn-primary pull-right" ng-click="generBrd()">Generation des bordereaux vierges</button>
            <button id="impbrd" class="btn btn-sm btn-success pull-right" ng-click="printBrd()">Imprimer</button>
        </div>
    </div>
    <br/>
    <br/>
    <div class="row-fluid">
        <div class="col-xs-12" id="printable" >
            <div class="brdpage" ng-repeat="brd in brds">

                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th colspan="4"> <div class="centerth" >Mag. {{brd[0].INVMAG}}  &nbsp;  &nbsp;  &nbsp;  &nbsp;  Exercice {{brd[0].INVEXE }}  &nbsp;  &nbsp;  &nbsp;  &nbsp; Page numero : {{brd[0].INVPAGE}}  &nbsp;  &nbsp;  &nbsp;  &nbsp; Date d'inventaire : ..................</div></th>
                    </tr>
                    <tr>
                        <th>ARTICLE</th>
                        <th>DESIGNATION</th>
                        <th>QTE</th>
                        <th>OBSERVATION</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="art in brd">
                            <td>{{art.INVART}}</td>
                            <td>{{art.ARTLIB}}</td>
                            <td>.....</td>
                            <td>.....................................</td>
                        </tr>
                    </tbody>
                </table>
                <div class="page-break"></div>
            </div>
        </div>
    </div>

</div>