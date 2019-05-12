<div class="col-md-10 col-md-offset-1">
<div class="page-header">
<h1> Gestion de  <small></small></h1>
</div>
</div>
<div class="clearfix"></div>

<div class="col-md-12">
<nav class="navbar navbar-default" role="navigation">
<div class="navbar-header">  <a class="navbar-brand" href="#">Filtre</a></div>
<div class="navbar-inner">

<form class="navbar-form" id="filtre_" action="get_">
<div class="pull-right" style="display: inline-block">
<input type="submit" name="subhide" style="display: none;" />
<button class="btn btn-primary btn-sm" id="btn_chercher"  ><span class="glyphicon glyphicon-search"> </span> Chercher </button>
<button type="button" class="btn btn-primary btn-sm" id="btn_ajout"  ><span class="glyphicon glyphicon-plus"> </span> Ajouter un  </button>
<button type="button" class="btn btn-success btn-sm" id="btn_imp"  ><span class="glyphicon glyphicon-print"> </span> Imprimer </button>
</div>
<div class="col-md-8">
<div class="col-md-3">
<div class="input-group input-group-sm">
<span class="input-group-addon">dq: </span>
<input type="text" class="form-control" id="cons_codeR" name="cons_codeR" />
</div>
</div>
<div class="col-md-3">
<div class="input-group input-group-sm">
<span class="input-group-addon">fdsqd: </span>
<input type="text" class="form-control" id="cons_artCodeR" name="cons_artCodeR" />
</div>
</div>
</div>

</form>

</div>
</nav>

</div>

<div class="col-md-12" id="printarea">

<table class="tablesorter table table-bordered table-condensed" id="expexcel">
<thead>
<tr class="fixedhead">
<th colspan="8"><center><h3>Liste de </h3></center></th>
</tr>
<tr class="fixedhead">
<th>dq</th>
<th>fdsqd</th>
<th>fqs</th>
<th>dfsqdf</th>
<th>qsdf</th>
<th>cons_qte</th>
<th>cons_traceCode</th>
<th>cons_lotTraceCode</th>
<th class="noprint" >OPERATION </th>
</tr>
</thead>
<tbody id="data_"></tbody>
</table>
</div>
<div id="ajoutdiag" title="Ajout " >
<form id="_ajout" action="ajout_">

<div class="col-md-12 ">
<br/>
<div class="col-md-6">
<div class="well well-sm entstyle" id="entbeinp">
<input type="hidden" id="cons_codeK" name="cons_codeK" /><input type="hidden" id="cons_artCodeK" name="cons_artCodeK" /><div class="input-group input-group-sm">
<span class="input-group-addon">dq : </span>
<input type="text" class="form-control" id="cons_code" name="cons_code" />
</div>
<br/>
<div class="input-group input-group-sm">
<span class="input-group-addon">fdsqd : </span>
<input type="text" class="form-control" id="cons_artCode" name="cons_artCode" />
</div>
<br/>
<div class="input-group input-group-sm">
<span class="input-group-addon">fqs : </span>
<input type="text" class="form-control" id="cons_exercice" name="cons_exercice" />
</div>
<br/>
<div class="input-group input-group-sm">
<span class="input-group-addon">dfsqdf : </span>
<input type="text" class="form-control" id="cons_seq" name="cons_seq" />
</div>
<br/>
<div class="input-group input-group-sm">
<span class="input-group-addon">qsdf : </span>
<input type="text" class="form-control" id="cons_qtedem" name="cons_qtedem" />
</div>
<br/>
</div>
</div>
<div class="col-md-6">
<div class="well well-sm entstyle" id="entbeinp">
<div class="input-group input-group-sm">
<span class="input-group-addon">cons_qte : </span>
<input type="text" class="form-control" id="cons_qte" name="cons_qte" />
</div>
<br/>
<div class="input-group input-group-sm">
<span class="input-group-addon">cons_traceCode : </span>
<input type="text" class="form-control" id="cons_traceCode" name="cons_traceCode" />
</div>
<br/>
<div class="input-group input-group-sm">
<span class="input-group-addon">cons_lotTraceCode : </span>
<input type="text" class="form-control" id="cons_lotTraceCode" name="cons_lotTraceCode" />
</div>
<br/>
</div>
</div>
</div>
</form>
</div>
