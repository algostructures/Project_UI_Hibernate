<%--
  Created by IntelliJ IDEA.
  User: prajapas
  Date: 7/25/2017
  Time: 12:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>
    <script src="https://use.fontawesome.com/9d0c2e3dbb.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div class = "row">
    <div class="col-sm-1"></div>
    <div class="col-sm-10">
        <div id="corporate" class = "row row-content">
            <h2>Corporate Leadership</h2>

            <div class="panel-group" id="accordion"
                 role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingPeter">
                        <h3 class="panel-title">
                            <a role="button" data-toggle="collapse"
                               data-parent="#accordion" href="#peter"
                               aria-expanded="true" aria-controls="peter">
                                Peter Pan <small>Chief Epicurious Officer</small></a>
                        </h3>
                    </div>
                    <div role="tabpanel" class="panel-collapse collapse in"
                         id="peter"    aria-labelledby="headingPeter">
                        <div class="panel-body">
                            <p>Our CEO, Peter, credits his hardworking East Asian immigrant parents who undertook the arduous journey to the shores of America with the intention of giving their children the best future. His mother's wizardy in the kitchen whipping up the tastiest dishes with whatever is available inexpensively at the supermarket, was his first inspiration to create the fusion cuisines for which <em>The Frying Pan</em> became well known. He brings his zeal for fusion cuisines to this restaurant, pioneering cross-cultural culinary connections.</p>
                        </div>
                    </div>
                </div>


                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingDanny">
                        <h3 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse"
                               data-parent="#accordion" href="#danny"
                               aria-expanded="false" aria-controls="danny">
                                Dhanasekaran Witherspoon <small>Chief Food Officer</small></a>
                        </h3>
                    </div>
                    <div role="tabpanel" class="panel-collapse collapse"
                         id="danny"    aria-labelledby="headingDanny">
                        <div class="panel-body">
                            <p>Our CFO, Danny, as he is affectionately referred to by his colleagues, comes from a long established family tradition in farming and produce. His experiences growing up on a farm in the Australian outback gave him great appreciation for varieties of food sources. As he puts it in his own words, <em>Everything that runs, wins, and everything that stays, pays!</em></p>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingAgumbe">
                        <h3 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse"
                               data-parent="#accordion" href="#agumbe"
                               aria-expanded="false" aria-controls="agumbe">
                                Agumbe Tang <small>Chief Taste Officer</small></a>
                        </h3>
                    </div>
                    <div role="tabpanel" class="panel-collapse collapse"
                         id="agumbe"    aria-labelledby="headingAgumbe">
                        <div class="panel-body">
                            <p> Blessed with the most discerning gustatory sense, Agumbe, our CFO, personally ensures that every dish that we serve meets his exacting tastes. Our chefs dread the tongue lashing that ensues if their dish does not meet his exacting standards. He lives by his motto, <em>You click only if you survive my lick.</em></p>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingAlberto">
                        <h3 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse"
                               data-parent="#accordion" href="#alberto"
                               aria-expanded="false" aria-controls="alberto">
                                Alberto Somayya <small>Executive Chef</small></a>
                        </h3>
                    </div>
                    <div role="tabpanel" class="panel-collapse collapse"
                         id="alberto"    aria-labelledby="headingAlberto">
                        <div class="panel-body">
                            <p> Award winning three-star Michelin chef with wide International experience having worked closely with whos-who in the culinary world, he specializes in creating mouthwatering Indo-Italian fusion experiences. He says, <em>Put together the cuisines from the two craziest cultures, and you get a winning hit! Amma Mia!</em></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-1"></div>
</div>
</body>
</html>
