

  <style>
      #map-canvas {
        height: 335px;
		width:100%;
        margin: 0px;
        padding: 0px
      }
    </style>

 <script>
	    
    var locations = [
	    
['Manchester HS', 38.6881293, -83.6093611], 
['Felicity-Franklin HS', 38.836544, -84.0979824], 
['Georgetown Jr-Sr HS', 38.8645138, -83.9040944], 
['Southern Hills Career & Technical Center', 38.890912, -83.891498], 
['New Richmond HS', 38.954386, -84.269377], 
['Bethel Tate HS', 38.9629491, -84.0647057], 
['Bethel Christian Academy', 38.9636771, -84.0807664], 
['Ulysses S Grant Joint Voc Sch', 38.9655188, -84.0932495], 
['Eastern Brown HS', 39.0078448, -83.8085377], 
['Western Brown HS', 39.0312517, -83.9368658], 
['Whiteoak HS', 39.0420037, -83.7544403], 
['Calvary Free Will Baptist Sch', 39.056406, -84.1969529], 
['Amelia HS', 39.0603954, -84.230095], 
['Anderson HS', 39.0696235, -84.3487527], 
['Batavia HS', 39.0732811, -84.1290199], 
['Archbishop McNicholas HS', 39.0860074, -84.3771673], 
['Glen Este HS', 39.086533, -84.26263], 
['Cincinnati Christian University', 39.0930395, -84.5667665], 
['Antonelli College', 39.1042953, -84.5107698], 
['Turpin HS', 39.1055139, -84.3670461], 
['School for Creative/Performng Arts', 39.1071974, -84.5168543], 
['Value Learning and Teaching Academy', 39.1081238, -84.5092995], 
['Art Academy of Cincinnati', 39.1086516, -84.4977791], 
['Virtual HS', 39.1088428, -84.5221383], 
['Christian Center Academy', 39.109113, -84.300523], 
['Bible Baptist Christian School', 39.109184, -84.294288], 
['Robert A Taft HS', 39.1093979, -84.5226026], 
['Cincinnati Job Corps Academy', 39.1105084, -84.5321243], 
['Cincinnati College Prep Academy', 39.1109975, -84.5283995], 
['Elder HS', 39.111911, -84.580051], 
['Seton HS', 39.1129551, -84.5786573], 
['Gods Bible School and College', 39.1157754, -84.5057962], 
['Gods Bible School', 39.1157754, -84.5057962], 
['Mount Auburn International Academy', 39.1202965, -84.5063775], 
['Western Hills Design Technology HS', 39.1246481, -84.5998789], 
['Western Hills HS', 39.1246481, -84.5998789], 
['Western Hills University HS', 39.1246481, -84.5998789], 
['Gilbert A Dater HS', 39.1249314, -84.6013118], 
['Union Institute', 39.1272078, -84.500095], 
['Life Skills Center Cincinnati', 39.1279488, -84.4888358], 
['Hughes HS', 39.1286928, -84.5217978], 
['Miami Valley Christian Academy', 39.128773, -84.360942], 
['Purcell Marian HS', 39.1303391, -84.4747718], 
['Clermont Northeastern HS', 39.1304934, -84.1032031], 
['University of Cincinnati', 39.1331454, -84.509213], 
['Walnut Hills HS', 39.1402691, -84.4795349], 
['Withrow HS', 39.1409168, -84.4503677], 
['Withrow University HS', 39.1410112, -84.4526435], 
['Withrow International', 39.1410112, -84.4526435], 
['Mother of Mercy HS', 39.1411093, -84.6015566], 
['Mariemont HS', 39.1448124, -84.3650771], 
['Oak Hills HS', 39.1473918, -84.6493848], 
['Connecticut JET', 39.1489142, -84.47952], 
['Domestic Cases', 39.1489142, -84.47952], 
['Xavier University', 39.1489142, -84.47952], 
['Home School', 39.1489142, -84.47952], 
['Foreign Cases', 39.1489142, -84.47952], 
['Cincinnati State Technical and CC', 39.1496174, -84.5361338], 
['President Drive Christian Sch', 39.1516189, -84.561909], 
['St Edmund Campion Academy', 39.1525652, -84.4279318], 
['Norwood Baptist Christian Sch', 39.15762, -84.459687], 
['Immaculate Conception Academy', 39.1579158, -84.4495928], 
['Norwood HS', 39.1613074, -84.4594646], 
['Light House Community School', 39.1627078, -84.3903832], 
['Roger Bacon HS', 39.1629111, -84.5023214], 
['Shroder Paideia Academy', 39.165796, -84.40833], 
['St Bernard-Elmwood Place HS', 39.1662024, -84.496403], 
['Seven Hills Upper School', 39.1678011, -84.4017577], 
['Taylor HS', 39.1700291, -84.7510121], 
['Horizon Science Academy-Cincinnati', 39.1774404, -84.4812433], 
['Milford HS', 39.180111, -84.241533], 
['Cincinnati Country Day School', 39.1857494, -84.3275852], 
['Indian Hill HS', 39.1861128, -84.344921], 
['Diamond Oaks', 39.1866874, -84.6570041], 
['Fayetteville-Perry HS', 39.1867298, -83.9321521], 
['La Salle HS', 39.1882803, -84.5867252], 
['Clark Montessori', 39.1889314, -84.5203245], 
['Gamble Montessori', 39.1889314, -84.5203245], 
['Entrepreneurship HS', 39.1889314, -84.5203245], 
['Woodward HS', 39.1894129, -84.4635063], 
['Aiken Public Service Learning HS', 39.1921749, -84.5506691], 
['Dorius Academy', 39.1922979, -84.3079561], 
['Calvary Christian Academy', 39.1959348, -84.2333504], 
['Summit Academy - Cincinnati', 39.1972665, -84.5446468], 
['Regl Inst Torah Secular Stdies', 39.1973781, -84.4581924], 
['McAuley HS', 39.2006215, -84.5534077], 
['Milford Christian Academy', 39.2008202, -84.2105068], 
['Madeira HS', 39.20106, -84.365696], 
['Life Skills Center of Hamilton County', 39.201337, -84.4558897], 
['Harmony Community School', 39.2030122, -84.4625213], 
['St Xavier HS', 39.2085737, -84.5064417], 
['Deer Park HS', 39.210576, -84.3994274], 
['Chatfield College', 39.210674, -83.885384], 
['Central Baptist HS', 39.2114574, -84.5194235], 
['Apostolic Christian Academy', 39.2125219, -84.5023018], 
['North College Hill HS', 39.2178863, -84.5502709], 
['Moeller HS', 39.220108, -84.358654], 
['Goshen HS', 39.2279925, -84.156341], 
['Lockland HS', 39.2292249, -84.4577201], 
['University of Cincinnati Raymond Walters College', 39.2329891, -84.3998629], 
['Wyoming HS', 39.2339519, -84.4699196], 
['Southern State Community College', 39.2364808, -83.6139477], 
['Mt. Healthy HS', 39.241447, -84.552364], 
['Lynchburg-Clay HS', 39.2460351, -83.7924517], 
['Mount Hope Christian Academy', 39.2474063, -84.7232415], 
['Ursuline Academy', 39.248199, -84.370913], 
['William Henry Harrison High SC', 39.2553974, -84.769861], 
['Immanuel Christian School', 39.25574, -84.578598], 
['Brown Mackie College - Cincinnati', 39.2559048, -84.4570233], 
['St Rita School for theDeaf', 39.2562361, -84.445392], 
['Harrison Christian School', 39.260047, -84.805121], 
['Schilling Sch Gifted Children', 39.2652299, -84.3400795], 
['Sycamore HS', 39.2669071, -84.3521889], 
['Northwest HS', 39.271577, -84.5763635], 
['Village Christian School', 39.2851402, -84.134555], 
['Winton Woods HS', 39.2867837, -84.5266027], 
['Scarlet Oaks Career Developmnt', 39.2876168, -84.4159509], 
['Calvary Christian Academy', 39.2950263, -84.5035242], 
['Blanchester HS', 39.2965327, -83.9750524], 
['Cincinnati Christian Schools', 39.303671, -84.485148], 
['Mars Hill Academy', 39.3101369, -84.3362775], 
['Clinton County Christian Sch', 39.3236736, -83.6910336], 
['Ross Senior HS', 39.3297193, -84.6353451], 
['Lakota West HS', 39.3305262, -84.431728], 
['Fairfield HS', 39.3368987, -84.5180005], 
['Fairfield Local HS', 39.3450634, -83.5529748], 
['William Mason HS', 39.345084, -84.308095], 
['McClain HS', 39.3518358, -83.3873208], 
['Kings HS', 39.3542687, -84.255116], 
['Little Miami HS', 39.3566802, -84.1596589], 
['Miami University: Hamilton Campus', 39.3778365, -84.5635778], 
['Lakota East HS', 39.38171, -84.372772], 
['Stephen T Badin HS', 39.3952987, -84.5924976], 
['Hamilton Christian School', 39.407865, -84.601151], 
['East Clinton Local HS', 39.418323, -83.648484], 
['Hamilton HS', 39.4250306, -84.5784696], 
['Warren County Career Center', 39.4276449, -84.1938235], 
['Lebanon Correctional Institute', 39.4343725, -84.2988715], 
['Temple Christian Academy', 39.4353373, -84.2029922], 
['Warren County Virtual Community School', 39.4353834, -84.2028791], 
['New Miami HS', 39.439201, -84.5361022], 
['Wilmington College', 39.4453393, -83.8285375], 
['Clinton-Massie HS', 39.4465456, -83.9852437], 
['Wilmington HS', 39.4494182, -83.8388956], 
['Monroe Jr-Sr HS', 39.4495631, -84.3812655], 
['H T R Christian School', 39.455651, -84.418812], 
['Lebanon HS', 39.4641568, -84.1810339], 
['Edgewood HS', 39.4790453, -84.4878793], 
['Clinton Baptist School', 39.4823293, -83.8409808], 
['Bishop Fenwick HS', 39.4919824, -84.2944764], 
['Sure Foundation Christian Acad', 39.5017317, -83.9994689], 
['Miami University: Oxford Campus', 39.5086906, -84.7300176], 
['Franklin Wesleyan Academy', 39.514137, -84.317655], 
['Middletown Christian School', 39.5150576, -84.3982763], 
['Middletown HS', 39.5220611, -84.3501005], 
['Miami University: Middletown Campus', 39.5269823, -84.3559416], 
['Springboro HS', 39.532741, -84.240096], 
['Madison HS', 39.533917, -84.443381], 
['Waynesville HS', 39.5367154, -84.0930559], 
['Franklin HS', 39.553742, -84.2869221], 
['Carlisle HS', 39.587482, -84.320369], 
['Western Hills Adult HS', 39.1246481, -84.5998789], 
['Oyler School', 39.1171129, -84.5599436], 
['DePaul Cristo Rey HS', 39.1463314, -84.5358422], 
['Colerain HS', 39.2323645, -84.6026755], 
['Woodward Career Technical HS', 39.1890723, -84.4649883], 
['Finneytown HS', 39.2291205, -84.5156693], 
['Williamsburg HS', 39.0516284, -84.065669], 
['Aiken University HS', 39.1921749, -84.5506691], 
['P.A.C.E. HS', 39.1760388, -84.470703], 
['Princeton HS', 39.2720616, -84.4431761], 
['Talawanda HS', 39.499379, -84.746016], 
['Ridgeville Christian School', 39.530398, -84.177705], 
['D Russel Lee Career Center', 39.4089031, -84.4922551], 
['Loveland HS', 39.2797883, -84.2750784], 
['Live Oaks Career Dev Center', 39.197442, -84.219968], 
['Aiken HS', 39.1921749, -84.5506691], 
['Reading Community Jr-Sr HS', 39.220904, -84.426914], 
['Ripley Union Lewis Huntington', 38.7238354, -83.8322886], 
['Riverview East Academy', 39.1137664, -84.4409313], 
['Hillsboro HS', 39.1835315, -83.6142587], 
['Cincinnati Hills Christian Academy', 39.2775372, -84.3372097], 
['Summit Country Day School', 39.1296606, -84.4595531], 
['Mount Notre Dame HS', 39.22075, -84.4298768], 
['St Ursula Academy', 39.1248564, -84.4815268], 
['<strong style="color:#000">Mount St. Joseph University</strong> <br>  <a href="XXX">Meet Your Counselor</a>', 39.0949555, -84.6384041], 
['GED', 39.1489142, -84.47952], 
['University of Cincinnati: Clermont College', 39.0802407, -84.1946483], 
 ];  
	    
var map;
var MY_MAPTYPE_ID = 'custom_style';



  var featureOpts = [
{
    "stylers": [
      { "hue": "#011f43" },
      { "saturation": 25 },
      { "visibility": "on" },
      { "gamma": 1.6 }
    ]
  }
  ];

  var mapOptions = {
    zoom: 11,
    center: new google.maps.LatLng(  39.1489142, -84.47952),
    mapTypeControlOptions: {
      mapTypeIds: [google.maps.MapTypeId.ROADMAP, MY_MAPTYPE_ID]
    },
    mapTypeId: MY_MAPTYPE_ID
  };

  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
	  

   var infowindow = new google.maps.InfoWindow();

    var marker, i;

    for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
	    icon: 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',  
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map
      });
      
      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        }
      })(marker, i));
    }
	
	  

  var styledMapOptions = {
    name: 'Custom Style'
  };

  var customMapType = new google.maps.StyledMapType(featureOpts, styledMapOptions);

  map.mapTypes.set(MY_MAPTYPE_ID, customMapType);
  
  



    </script>
    
        
    <div style="width:100%"><div id="map-canvas"></div> </div>