<div class="container-fluid">
    <div class="row">
        <div class="col-md-12" id="list-container">

        </div>
    </div>
    <div class="row" id="dialog-container">
        <div id="dialogs">
            <div class="container-fluid">
                <div class="row">
                    <form id="addform" class="form-horizontal" action="ajout_fournisseur" >
                        <div class="col-md-8 col-md-offset-2">
                            
                            <div class="page-header">
                                <h3>Information clients et fournisseurs  <small>Identification</small></h3>
                            </div>

                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="frsCode" class="col-md-12 control-label">Code clients</label>
                                    <div class="col-sm-12">
                                        <input type="text"  name="frsCode" readonly="readonly"  class="form-control" id="frsCode">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="frsRaisonsociale"  class="col-md-12 control-label">Raison sociale</label>
                                    <div class="col-sm-12">
                                        <input type="text" editmode required="required" name="frsRaisonsociale"   class="form-control" id="frsRaisonsociale" placeholder="Raison sociale">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="frsAdresse" class="col-md-12  control-label">Adresse</label>
                                    <div class="col-sm-12">
                                        <input type="text" editmode name="frsAdresse"  class="form-control" id="frsAdresse" placeholder="Adresse">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="frsTel" class="col-md-12 control-label">Téléphone</label>
                                    <div class="col-sm-12">
                                        <input  type="text" editmode  class="form-control" name="frsTel" id="frsTel" placeholder="Téléphone">
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="frsFax" class="col-md-12 control-label">Fax</label>
                                    <div class="col-sm-12">
                                        <input type="text" editmode  class="form-control" name="frsFax" id="frsFax" placeholder="Fax">
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="frsEmail" class="col-md-12 control-label">Email</label>
                                    <div class="col-sm-12">
                                        <input class="form-control" editmode   name="frsEmail" id="frsEmail" placeholder="E-mail">
                                    </div>
                                </div>
                            </div>

       <div class="col-md-6">
                                <div class="form-group">
                                    <label for="frsMf" class="col-md-12 control-label">Matricule Fiscale</label>
                                    <div class="col-sm-12">
                                        <input class="form-control" editmode   name="frsMf" id="frsMf" placeholder="M-F">
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="frsTypecode" class="col-md-12 control-label">Classement</label>
                                    <div class="col-sm-12">
                                        <select required="required" editmode type="text" class="form-control" name="frsTypecode" id="frsTypecode" placeholder="Type fournisseur">
                                            <option value="1">Fournisseur</option>
                                            <option value="2">Client</option>
                                        </select>
                                    </div>
                                </div>
                            </div>                      

                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>