#include <stdint.h>
typedef uint32_t u32;
typedef uint32_t u64;

#ifndef DEBUG
extern volatile u32 tohost;
#define TERM (&tohost)
#endif

#ifdef CAPCHECKER
#define CAP
#endif

#ifdef CAP
#include <cheri_init_globals.h>
#include <cheriintrin.h>
#endif

// HLS IP instance
#define PATTERN_SIZE 4
#define STRING_SIZE (16206)

void CPF(char pattern[PATTERN_SIZE], int kmpNext[PATTERN_SIZE]) {
  int k, q;
  k = 0;
  kmpNext[0] = 0;

c1:
  for (q = 1; q < PATTERN_SIZE; q++) {
  c2:
    while (k > 0 && pattern[k] != pattern[q]) {
      k = kmpNext[q];
    }
    if (pattern[k] == pattern[q]) {
      k++;
    }
    kmpNext[q] = k;
  }
}

void hls_top(int size, char pattern[PATTERN_SIZE], char input[STRING_SIZE],
             int kmpNext[PATTERN_SIZE], int n_matches[1]) {
#pragma HLS INTERFACE m_axi port = pattern
#pragma HLS INTERFACE m_axi port = input
#pragma HLS INTERFACE m_axi port = kmpNext
#pragma HLS INTERFACE m_axi port = n_matches
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return
  int i, q;
  n_matches[0] = 0;

  CPF(pattern, kmpNext);

  q = 0;
k1:
  for (i = 0; i < size; i++) {
  k2:
    while (q > 0 && pattern[q] != input[i]) {
      q = kmpNext[q];
    }
    if (pattern[q] == input[i]) {
      q++;
    }
    if (q >= PATTERN_SIZE) {
      n_matches[0]++;
      q = kmpNext[q - 1];
    }
  }
}

u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};

char a[NUM][PATTERN_SIZE] = {"bull"};
char b[NUM][16206] = {
    "TRwasshotinanassassinationattemptbyJohnSchrankwhohadbeenhavingdisturbing"
    "dreamsaboutTRspredecessorWilliamMcKinleyandalsothoughtthatnopresidentsho"
    "uldservemorethantwotermsSchrankspenttherestofhislifeinamentalinstitution"
    "NoonecametovisithimHediedshortlyafterFranklinDelanoRooseveltTRsfifthcous"
    "inwaselectedtoathirdtermSchrankhadstalkedTRforthousandsofmilesbeforegett"
    "ingaclearshotathiminMilwaukeeSchrankwascaughtonthespotFriendsIshallaskyo"
    "utobeasquietaspossibleIdontknowwhetheryoufullyunderstandthatIhavejustbee"
    "nshotbutittakesmorethanthattokillaBullMooseButfortunatelyIhadmymanuscrip"
    "tsoyouseeIwasgoingtomakealongspeechandthereisabulletthereiswherethebulle"
    "twentthroughanditprobablysavedmefromitgoingintomyheartThebulletisinmenow"
    "sothatIcannotmakeaverylongspeechbutIwilltrymybestAndnowfriendsIwanttotak"
    "eadvantageofthisincidenttosayawordofsolemnwarningtomyfellowcountrymenFir"
    "stofallIwanttosaythisaboutmyselfIhavealtogethertooimportantthingstothink"
    "oftofeelanyconcernovermyowndeathandnowIcannotspeaktoyouinsincerelywithin"
    "fiveminutesofbeingshotIamtellingyoutheliteraltruthwhenIsaythatmyconcerni"
    "sformanyotherthingsItisnotintheleastformyownlifeIwantyoutounderstandthat"
    "IamaheadofthegameanywayNomanhashadahappierlifethanIhaveledahappierlifein"
    "everywayIhavebeenabletodocertainthingsthatIgreatlywishedtodoandIamintere"
    "stedindoingotherthingsIcantellyouwithabsolutetruthfulnessthatIamverymuch"
    "uninterestedinwhetherIamshotornotItwasjustaswhenIwascolonelofmyregimentI"
    "alwaysfeltthataprivatewastobeexcusedforfeelingattimessomepangsofanxietya"
    "bouthispersonalsafetybutIcannotunderstandamanfittobeacolonelwhocanpayany"
    "heedtohispersonalsafetywhenheisoccupiedasheoughttobewiththeabsorbingdesi"
    "retodohisdutyIaminthiscausewithmywholeheartandsoulIbelievethattheProgres"
    "sivemovementismakinglifealittleeasierforallourpeopleamovementtotrytotake"
    "theburdensoffthemenandespeciallythewomenandchildrenofthiscountryIamabsor"
    "bedinthesuccessofthatmovementFriendsIaskyounowthiseveningtoacceptwhatIam"
    "sayingasabsolutelytruewhenItellyouIamnotthinkingofmyownsuccessIamnotthin"
    "kingofmylifeorofanythingconnectedwithmepersonallyIamthinkingofthemovemen"
    "tIsaythisbywayofintroductionbecauseIwanttosaysomethingveryserioustoourpe"
    "opleandespeciallytothenewspapersIdontknowanythingaboutwhothemanwaswhosho"
    "tmetonightHewasseizedatoncebyoneofthestenographersinmypartyMrMartinandIs"
    "upposeisnowinthehandsofthepoliceHeshottokillHeshottheshotthebulletwentin"
    "hereIwillshowyouIamgoingtoaskyoutobeasquietaspossibleforIamnotabletogive"
    "tochallengeofthebullmoosequiteasloudlyNowIdonotknowwhohewasorwhatherepre"
    "sentedHewasacowardHestoodinthedarknessinthecrowdaroundtheautomobileandwh"
    "entheycheeredmeandIgotuptobowhesteppedforwardandshotmeinthedarknessNowfr"
    "iendsofcourseIdonotknowasIsayanythingabouthimbutitisaverynaturalthingtha"
    "tweakandviciousmindsshouldbeinflamedtoactsofviolencebythekindofawfulmend"
    "acityandabusethathavebeenheapeduponmeforthelastthreemonthsbythepapersint"
    "heinterestofnotonlyMrDebsbutofMrWilsonandMrTaftFriendsIwilldisownandrepu"
    "diateanymanofmypartywhoattackswithsuchfoulslanderandabuseanyopponentofan"
    "yotherpartyandnowIwishtosayseriouslytoallthedailynewspaperstotheRepublic"
    "anstheDemocratandSocialistpartiesthattheycannotmonthinmonthoutandyearina"
    "ndyearoutmakethekindofuntruthfulofbitterassaultthattheyhavemadeandnotexp"
    "ectthatbrutalviolentnaturesorbrutalandviolentcharactersespeciallywhenthe"
    "brutalityisaccompaniedbyanotverystrongmindtheycannotexpectthatsuchnature"
    "swillbeunaffectedbyitNowfriendsIamnotspeakingformyselfatallIgiveyoumywor"
    "dIdonotcarearapaboutbeingshotnotarapIhavehadagoodmanyexperiencesinmytime"
    "andthisisoneofthemWhatIcareforismycountryIwishIwereabletoimpressuponmype"
    "opleourpeoplethedutytofeelstronglybuttospeakthetruthoftheiropponentsIsay"
    "nowIhaveneversaidonewordonethestumpagainstanyopponentthatIcannotdefendIh"
    "avesaidnothingthatIcouldnotsubstantiateandnothingthatIoughtnottohavesaid"
    "nothingthatInothingthatlookingbackatIwouldnotsayagainNowfriendsitoughtno"
    "ttobetoomuchtoaskthatouropponents[speakingtosomeoneonthestage]"
    "IamnotsickatallIamallrightIcannottellyouofwhatinfinitesimalimportanceIre"
    "gardthisincidentascomparedwiththegreatissuesatstakeinthiscampaignandIask"
    "itnotformysakenottheleastintheworldbutforthesakeofcommoncountrythattheym"
    "akeuptheirmindstospeakonlythetruthandnotusethatkindofslanderandmendacity"
    "whichiftakenseriouslymustinciteweakandviolentnaturestocrimesofviolenceDo"
    "ntyoumakeanymistakeDontyoupitymeIamallrightIamallrightandyoucannotescape"
    "listeningtothespeecheitherAndnowfriendsthisincidentthathasjustoccurredth"
    "isefforttoassassinatemeemphasizestoapeculiardegreetheneedoftheProgressiv"
    "emovementFriendseverygoodcitizenoughttodoeverythinginhisorherpowertoprev"
    "entthecomingofthedaywhenweshallseeinthiscountrytworecognizedcreedsfighti"
    "ngoneanotherwhenweshallseethecreedoftheHavenotsarraignedagainstthecreedo"
    "ftheHavesWhenthatdaycomesthensuchincidentsasthistonightwillbecommonplace"
    "inourhistoryWhenyoumakepoormenwhenyoupermittheconditionstogrowsuchthatth"
    "epoormanassuchwillbeswayedbyhissenseofinjuryagainstthemenwhotrytoholdwha"
    "ttheyimproperlyhavewonwhenthatdaycomesthemostawfulpassionswillbeletloose"
    "anditwillbeanilldayforourcountryNowfriendswhatwewhoareinthismovementaree"
    "ndeavoringtodoisforestallanysuchmovementforjusticenowamovementinwhichwea"
    "skalljustmenofgenerousheartstojoinwiththemenwhofeelintheirsoulsthatliftu"
    "pwardwhichbidsthemrefusetobesatisfiedthemselveswhiletheircountrymenandco"
    "untrywomensufferfromavoidablemiseryNowfriendswhatweProgressivesaretrying"
    "todoistoenrollrichorpoorwhatevertheirsocialorindustrialpositiontostandto"
    "getherforthemostelementaryrightsofgoodcitizenshipthoseelementaryrightswh"
    "icharethefoundationofgoodcitizenshipinthisgreatRepublicofoursAtthispoint"
    "arenewedeffortwasmadetopersuadeMrRoosevelttoconcludehisspeechMyfriendsar"
    "ealittlemorenervousthanIamDontyouwasteanysympathyonmeIhavehadanA1timeinl"
    "ifeandIamhavingitnowIneverinmylifewasinanymovementinwhichIwasabletoserve"
    "withsuchwholehearteddevotionasinthisinwhichIwasabletofeelasIdointhisthat"
    "commonwealIhavefoughtforthegoodofourcommoncountryAndnowfriendsIshallhave"
    "tocutshortmuchofthatspeechthatImeanttogiveyoubutIwanttotouchonjusttwoort"
    "hreepointsInthefirstplacespeakingtoyouhereinMilwaukeeIwishtosaythatthePr"
    "ogressivepartyismakingitsappealstoallourfellowcitizenswithoutanyregardto"
    "theircreedortotheirbirthplaceWedonotregardasessentialthewayinwhichamanwo"
    "rshipshisGodorasbeingaffectedbywherehewasbornWeregarditasamatterofspirit"
    "andpurposeInNewYorkwhileIwaspolicecommissionerthetwomenfromwhomIgotthemo"
    "stassistancewereJacobRiiswhowasborninDenmarkandArthurvonBriesenwhowasbor"
    "ninGermanybothofthemasfineexamplesofthebestandhighestAmericancitizenship"
    "asyoucouldfindinanypartofthiscountryIhavejustbeenintroducedbyoneofyourow"
    "nmenhereHenryCochemsHisgrandfatherhisfatherandthatfatherssevenbrothersal"
    "lservedintheUnitedStatesarmyandtheyentereditfouryearsaftertheyhadcometot"
    "hiscountryfromGermanyTwoofthemlefttheirlivesspenttheirlivesonthefieldofb"
    "attleIamallrightIamalittlesoreAnybodyhasarighttobesorewithabulletinhimYo"
    "uwouldfindthatifIwasinbattlenowIwouldbeleadingmymenjustthesameJustthesam"
    "ewayIamgoingtomakethisspeechAtonetimeIpromotedfivemenforgallantryonthefi"
    "eldofbattleAfterwardinmakingsomeinquiriesaboutthemIfoundthattwoofthemwer"
    "eProtestantstwoCatholicandoneaJewOneProtestantcamefromGermanyandonewasbo"
    "rninIrelandIdidnotpromotethembecauseoftheirreligionItjusthappenedthatway"
    "IfallfiveofthemhadbeenJewsIwouldhavepromotedthemorifallfiveofthemhadbeen"
    "ProtestantsIwouldhavepromotedthemoriftheyhadbeenCatholicsInthatregimentI"
    "hadamanborninItalywhodistinguishedhimselfbygallantrytherewasanotheryoung"
    "fellowasonofPolishparentsandanotherwhocameherewhenhewasachildfromBohemia"
    "wholikewisedistinguishedthemselvesandfriendsIassureyouthatIwasincapableo"
    "fconsideringanyquestionwhateverbuttheworthofeachindividualasafightingman"
    "IfhewasagoodfightingmanthenIsawthatUncleSamgotthebenefitofitThatisallIma"
    "kethesameappealtoourcitizenshipIaskinourciviclifethatweinthesamewaypayhe"
    "edonlytothemansqualityofcitizenshiptorepudiateastheworstenemythatwecanha"
    "vewhoevertriestogetustodiscriminatefororagainstanymanbecauseofhiscreedor"
    "birthplaceNowfriendsinthesamewayIwantoutpeopletostandbyoneanotherwithout"
    "regardtodifferencesorclassoroccupationIhavealwaysstoodbylaborunionsIamgo"
    "ingtomakeoneomissiontonightIhavepreparedmyspeechbecauseMrWilsonhadseenfi"
    "ttoattackmebyshowinguphisrecordincomparisonwithmineButIamnotgoingtodotha"
    "ttonightIamgoingtosimplyspeakofwhatImyselfhavedoneandwhatIthinkoughttobe"
    "doneinthiscountryofoursItisessentialthathereshouldbeorganizationsoflabor"
    "ThisisaneraoforganizationCapitalorganizesandthereforelabormustorganizeMy"
    "appealfororganizedlaboristwofoldtotheoutsiderandthecapitalistImakemyappe"
    "altotreatthelaborerfairlytorecognizethefactthathemustorganizethattheremu"
    "stbesuchorganizationthatthelaboringmanmustorganizeforhisownprotectionand"
    "thatitisthedutyoftherestofustohelphimandnothinderhiminorganizingThatison"
    "ehalfappealthatImakeNowtheotherhalfistothelabormanhimselfMyappealtohimis"
    "torememberthatashewantsjusticesohemustdojusticeIwanteverylabormaneveryla"
    "borleadereveryorganizedunionmantotaketheleadindenouncingdisorderandinden"
    "ouncingtheincitingofriotthatinthiscountryweshallproceedundertheprotectio"
    "nofourlawsandwithallrespecttothelawsIwantthelabormentofeelintheirturntha"
    "texactlyasjusticemustbedonethemsotheymustdojusticeTheymustbeartheirdutya"
    "scitizenstheirdutytothisgreatcountryofoursandthattheymustnotrestcontentu"
    "nlesstheydothatdutytothefullestdegreeIknowthesedoctorswhentheygetholdofm"
    "ewillneverletmegobackandtherearejustafewmorethingsthatIwanttosaytoyouAnd"
    "hereIhavegottomakeonecomparisonbetweenMrWilsonandmyselfsimplybecauseheha"
    "sinviteditandIcannotshrinkfromitMrWilsonhasseenfittoattackmetosaythatIdi"
    "dnotdomuchagainstthetrustswhenIwasPresidentIhavegottwoanswerstomaketotha"
    "tInthefirstplacewhatIdidandthenIwanttocomparewhatIdidwhenIwasPresidentwi"
    "thwhatMrWilsondidnotdowhenhewasgovernorWhenItooktheofficetheantitrustlaw"
    "waspracticallyadeadletterandtheinterstatecommercelawinaspooraconditionIh"
    "adtorevivebothlawsIdidIenforcedbothItwillbeeasyenoughtodonowwhatIdidthen"
    "butthereasonthatitiseasynowisbecauseIdiditwhenitwashardNobodywasdoingany"
    "thingIfoundspeedilythattheinterstatecommercelawbybeingmadeperfectcouldbe"
    "madeamostusefulinstrumentforhelpingsolvesomeofourindustrialproblemsSowit"
    "htheantitrustlawIspeedilyfoundoutthatalmosttheonlypositivegoodachievedby"
    "suchasuccessfullawsuitastheNorthernSecuritiessuitforinstancewasinestabli"
    "shingtheprinciplethatthegovernmentwassupremeoverthebigcorporationbutbyit"
    "selfthatthelawdidnotaccomplishanyofthethingsthatweoughttohaveaccomplishe"
    "dandsoIbegantofightfortheamendmentofthelawalongthelinesoftheinterstateco"
    "mmercelawandnowweproposeweProgressivestoestablishandinterstatecommission"
    "havingthesamepoweroverindustrialconcernsthattheInterstateCommerceCommiss"
    "ionhasoverrailroadssothatwheneverthereisinthefutureadecisionrenderedinsu"
    "chimportantmattersastherecentsuitsagainsttheStandardOilthesugarnonotthat"
    "TobaccoTobaccoTrustwewillhaveacommissionwhichwillseethatthedecreeoftheco"
    "urtisreallymadeeffectivethatitisnotmadeamerelynominaldecreeOuropponentsh"
    "avesaidthatweintendtolegalizemonopolyNonsenseTheyhavelegalizedmonopolyAt"
    "thismomenttheStandardOilandTobaccoTrustmonopoliesarelegalizedtheyarebein"
    "gcarriedonunderthedecreeoftheSupremeCourtOurproposalisreallytobreakupmon"
    "opolyOurproposalistolaydowncertainrequirementsandthentorequirethecommerc"
    "ecommissiontheindustrialcommissiontoseethatthetrustsliveuptothoserequire"
    "mentsOuropponentshavespokenasifweweregoingtoletthecommissiondeclarewhatt"
    "hoserequirementsshouldbeNotatallWearegoingtoputtherequirementsinthelawan"
    "dthenseethatthecommissionrequiresthemtoobeythatlawAndnowfriendsasMrWilso"
    "nhasinvitedthecomparisonIonlywanttosaythisMrWilsonhassaidthattheStatesar"
    "etheproperauthoritiestodealwiththetrustsWellabouteightypercentofthetrust"
    "sareorganizedinNewJerseyTheStandardOiltheTobaccotheSugartheBeefallthoset"
    "rustsareorganizedinthestateofNewJerseyandthelawsofNewJerseysaythattheirc"
    "harterscanatanytimebeamendedorrepealediftheymisbehavethemselvesandgiveth"
    "egovernmentamplepowertoactaboutthoselawsandMrWilsonhasbeengovernorayeara"
    "ndninemonthsandhehasnotopenedhislipsThechapterdescribingwhatMrWilsonhasd"
    "oneabouttrustsinNewJerseywouldreadpreciselylikeachapterdescribingsnakesi"
    "nIrelandwhichranTherearenosnakesinIrelandMrWilsonhasdonepreciselyandexac"
    "tlynothingaboutthetrustsItellyouandItoldyouatthebeginningIdonotsayanythi"
    "ngonthestumpthatIdonotbelieveIdonotsayanythingIdonotknowLetanyofMrWilson"
    "sfriendsonTuesdaypointoutonethingorletMrWilsonpointoutonethingthathehasd"
    "oneaboutthetrustsasgovernorofNewJerseyAndnowfriendsthereisonethingIwantt"
    "osayespeciallytoyoupeoplehereinWisconsinAllthatIhavesaidsofariswhatIwoul"
    "dsayinanypartoftheUnionIhaveapeculiarrighttoaskthatinthisgreatcontestyou"
    "menandwomenofWisconsinshallstandwithusYouhavetakentheleadinprogressivemo"
    "vementshereinWisconsinYouhavetaughttherestofustolooktoyouforinspirationa"
    "ndleadershipNowfriendsyouhavemadethatmovementherelocallyYouwillbeingdoin"
    "gadreadfulinjusticetoyourselvesyouwillbedoingadreadfulinjusticetotherest"
    "ofusthroughouttheUnionifyoufailtostandwithusnowthatwearemakingthisnation"
    "almovementWhatIamabouttosaynowIwantyotounderstandIfIspeakofMrWilsonIspea"
    "kwithnomindofbitternessImerelywanttodiscussthedifferenceofpolicybetweent"
    "heProgressiveandtheDemocraticpartyandtoaskyoutothinkforyourselveswhichpa"
    "rtyyouwillfollowIwillsaythatfriendsbecausetheRepublicanpartyisbeatenNobo"
    "dyneedstohaveanyideathatanythingcanbedonewiththeRepublicanpartyWhentheRe"
    "publicanpartynottheRepublicanpartywhenthebossesincontroloftheRepublicanp"
    "artytheBarnesesandPenroseslastJunestolethenominationandwreckedtheRepubli"
    "canpartyforgoodandallIwanttopointouttoyouthatnominallytheystolethatnomin"
    "ationfrommebutitwasreallyfromyouTheydidnotlikemeandthelongertheylivethel"
    "esscausetheywillhavetolikemeButwhiletheydontlikemetheydreadyouYouarethep"
    "eoplethattheydreadTheydreadthepeoplethemselvesandthosebossesandthebigspe"
    "cialinterestsbehindthemmadeuptheirmindthattheywouldratherseetheRepublica"
    "npartywreckedthanseeitcomeunderthecontrolofthepeoplethemselvesSoIamnotde"
    "alingwiththeRepublicanpartyThereareonlytwowaysyoucanvotethisyearYoucanbe"
    "progressiveorreactionaryWhetheryouvoteRepublicanorDemocraticitdoesnotmak"
    "eadifferenceyouarevotingreactionaryNowtheDemocraticpartyinitsplatformand"
    "throughtheutterancesofMrWilsonhasdistinctlycommitteditselftotheoldflintl"
    "ockmuzzleloadeddoctrineofStatesrightsandIhavesaiddistinctlyweareforpeopl"
    "esrightsWearefortherightsofthepeopleIftheycanbeobtainedbestthroughNation"
    "alGovernmentthenwearefornationalrightsWeareforpeoplesrightshoweveritisne"
    "cessarytosecurethemMrWilsonhasmadealongessayagainstSenatorBeveridgesbill"
    "toabolishchildlaborItisthesamekindofargumentthatwouldbemadeagainstourbil"
    "ltoprohibitwomenfromworkingmorethaneighthoursadayinindustryItisthesameki"
    "ndofargumentthatwouldhavetobemadeifitistrueitwouldapplyequallyagainstour"
    "proposaltoinsistthatincontinuousindustriesthereshallbebylawonedaysrestin"
    "sevenandthreeshifteighthourdayYouhavelaborlawshereinWisconsinandchambero"
    "fcommercewilltellyouthatbecauseofthatfactthereareindustriesthatwillnotco"
    "metoWisconsinTheyprefertostayoutsidewheretheycanworkchildrenoftenderyear"
    "swheretheycanworkwomenfourteenandsixteenhoursadaywhereifitisacontinuousi"
    "ndustrytheycanworkmentwelvehoursadayandsevendaysaweekNowfriendsIknowthat"
    "youofWisconsinwouldneverrepealthoselawseveniftheyareatyourcommercialhurt"
    "justasIamtryingtogetNewYorktoadoptsuchlawseventhoughitwillbetotheNewYork"
    "scommercialhurtButifpossibleIwanttoarrangeitsothatwecanhavejusticewithou"
    "tcommercialhurtandyoucanonlygetthatifyouhavejusticeenforcednationallyYou"
    "wontbeburdenedinWisconsinwithindustriesnotcomingtotheStateifthesamegoodl"
    "awsareextendedallovertheotherStatesDoyouseewhatImean?"
    "TheStatesallcompeteinacommonmarketanditisnotjusticetotheemployersofaStat"
    "ethathasenforcedjustandproperlawstohavethemexposedtothecompetitionofanot"
    "herStatewherenosuchlawsareenforcedNowtheDemocraticplatformandtheirspeake"
    "rsdeclareweshallnothavesuchlawsMrWilsonhasdistinctlydeclaredthatweshalln"
    "othaveanationallawtoprohibitthelaborofchildrentoprohibitchildlaborHehasd"
    "istinctlydeclaredthatweshallnothavealawtoestablishaminimumwageforwomenIa"
    "skyoutolookatourdeclarationandhearandreadourplatformaboutsocialandindust"
    "rialjusticeandthenfriendsvotefortheProgressiveticketwithoutregardtomewit"
    "houtregardtomypersonalityforonlybyvotingforthatplatformcanyoubetruetothe"
    "causeofprogressthroughoutthisUnionTRwasshotinanassassinationattemptbyJoh"
    "nSchrankwhohadbeenhavingdisturbingdreamsaboutTRspredecessorWilliamMcKinl"
    "eyandalsothoughtthatnopresidentshouldservemorethantwotermsSchrankspentth"
    "erestofhislifeinamentalinstitutionNoonecametovisithimHediedshortlyafterF"
    "ranklinDelanoRooseveltTRsfifthcousinwaselectedtoathirdtermSchrankhadstal"
    "kedTRforthousandsofmilesbeforegettingaclearshotathiminMilwaukeeSchrankwa"
    "scaughtonthespotFriendsIshallaskyoutobeasquietaspossibleIdontknowwhether"
    "youfullyunderstandthatIhavejustbeenshotbutittakesmorethanthattokillaBull"
    "MooseButfortunatelyIhadmymanuscriptsoyouseeIwasgoingtomakealongspeechand"
    "thereisabulletthereiswherethebulletwentthroughanditprobablysavedmefromit"
    "goingintomyheartThebulletisinmenowsothatIcannotmakeaverylongspeechbutIwi"
    "lltrymybestAndnowfriendsIwanttotakeadvantageofthisincidenttosayawordofso"
    "lemnwarningtomyfellowcountrymenFirstofallIwanttosaythisaboutmyselfIhavea"
    "ltogethertooimportantthingstothinkoftofeelanyconcernovermyowndeathandnow"
    "IcannotspeaktoyouinsincerelywithinfiveminutesofbeingshotIamtellingyouthe"
    "literaltruthwhenIsaythatmyconcernisformanyotherthingsItisnotintheleastfo"
    "rmyownlifeIwantyoutounderstandthatIamaheadofthegameanywayNomanhashadahap"
    "pierlifethanIhaveledahappierlifeineverywayIhavebeenabletodocertainthings"
    "thatIgreatlywishedtodoandIaminterestedindoingotherthingsIcantellyouwitha"
    "bsolutetruthfulnessthatIamverymuchuninterestedinwhetherIamshotornotItwas"
    "justaswhenIwascolonelofmyregimentIalwaysfeltthataprivatewastobeexcusedfo"
    "rfeelingattimessomepangsofanxietyabouthispersonalsafetybutIcannotunderst"
    "andamanfittobeacolonelwhocanpayanyheedtohispersonalsafetywhenheisoccupie"
    "dasheoughttobewiththeabsorbingdesiretodohisdutyIaminthiscausewithmywhole"
    "heartandsoulIbelievethattheProgressivemovementismakinglifealittleeasierf"
    "orallourpeopleamovementtotrytotaketheburdensoffthemenandespeciallythewom"
    "enandchildrenofthiscountryIamabsorbedinthesuccessofthatmovementFriendsIa"
    "skyounowthiseveningtoacceptwhatIamsayingasabsolutelytruewhenItellyouIamn"
    "otthinkingofmyownsuccessIamnotthinkingofmylifeorofanythingconnectedwithm"
    "epersonallyIamthinkingofthemovementIsaythisbywayofintroductionbecauseIwa"
    "nttosaysomethingveryserioustoourpeopleandespeciallytothenewspapersIdontk"
    "nowanythingaboutwhothemanwaswhoshotmetonightHewasseizedatoncebyoneofthes"
    "tenographersinmypartyMrMartinandIsupposeisnowinthehandsofthepoliceHeshot"
    "tokillHeshottheshotthebulletwentinhereIwillshowyouIamgoingtoaskyoutobeas"
    "quietaspossibleforIamnotabletogivetochallengeofthebullmoosequiteasloudly"
    "NowIdonotknowwhohewasorwhatherepresentedHewasacowardHestoodinthedarkness"
    "inthecrowdaroundtheautomobileandwhentheycheeredmeandIgotuptobowhestepped"
    "forwardandshotmeinthedarknessNowfriendsofcourseIdonotknowasIsayanythinga"
    "bouthimbutitisaverynaturalthingthatweakandviciousmindsshouldbeinflamedto"
    "actsofviolencebythekindofawfulmendacityandabusethathavebeenheapeduponmef"
    "orthelastthreemonthsbythepapersintheinterestofnotonlyMrDebsbutofMrWilson"
    "andMrTaftFriendsIwilldisownandrepudiateanymanofmypartywhoattackswithsuch"
    "foulslanderandabuseanyopponentofanyotherpartyandnowIwishtosayseriouslyto"
    "allthedailynewspaperstotheRepublicanstheDemocratandSocialistpartiesthatt"
    "heycannotmonthinmonthoutandyearinandyearoutmakethekindofuntruthfulofbitt"
    "erassaultthattheyhavemadeandnotexpectthatbrutalviolentnaturesorbrutaland"
    "violentcharactersespeciallywhenthebrutalityisaccompaniedbyanotverystrong"
    "mindtheycannotexpectthatsuchnatureswillbeunaffectedbyitNowfriendsIamnots"
    "peakingformyselfatallIgiveyoumywordIdonotcarearapaboutbeingshotnotarapIh"
    "avehadagoodmanyexperiencesinmytimeandthisisoneofthemWhatIcareforismycoun"
    "tryIwishIwereabletoimpressuponmypeopleourpeoplethedutytofeelstronglybutt"
    "ospeakthetruthoftheiropponentsIsaynowIhaveneversaidonewordonethestumpaga"
    "instanyopponentthatIcannotdefendIhavesaidnothingthatIcouldnotsubstantiat"
    "eandnothingthatIoughtnottohavesaidnothingthatInothingthatlookingbackatIw"
    "ouldnotsayagainNowfriendsitoughtnottobetoomuchtoaskthatouropponents["
    "speakingtosomeoneonthestage]"
    "IamnotsickatallIamallrightIcannottellyouofwhatinfinitesimalimportanceIre"
    "gardthisincidentascomparedwiththegreatissuesatstakeinthiscampaignandIask"
    "itnotformysakenottheleastintheworldbutforthesakeofcommoncountrythattheym"
    "akeuptheirmindstospeakonlythetruthandnotusethatkindofslanderandmendacity"
    "whichiftakenseriouslymustinciteweakandviolentnaturestocrimesofviolenceDo"
    "ntyoumakeanymistakeDontyoupitymeIamallrightIamallrightandyoucannotescape"
    "listeningtothespeecheitherAndnowfriendsthisincidentthathasjustoccurredth"
    "isefforttoassassinatemeemphasizestoapeculiardegreetheneedoftheProgressiv"
    "emovementFriendseverygoodcitizenoughttodoeverythinginhisorherpowertoprev"
    "entthecomingofthedaywhenweshallseeinthiscountrytworecognizedcreedsfighti"
    "ngoneanotherwhenweshallseethecreedoftheHavenotsarraignedagainstthecreedo"
    "ftheHavesWhenthatdaycomesthensuchincidentsasthistonightwillbecommonplace"
    "inourhistoryWhenyoumakepoormenwhenyoupermittheconditionstogrowsuchthatth"
    "epoormanassuchwillbeswayedbyhissenseofinjuryagainstthemenwhotrytoholdwha"
    "ttheyimproperlyhavewonwhenthatdaycomesthemostawfulpassionswillbeletloose"
    "anditwillbeanilldayforourcountryNowfriendswhatwewhoareinthismovementaree"
    "ndeavoringtodoisforestallanysuchmovementforjusticenowamovementinwhichwea"
    "skalljustmenofgenerousheartstojoinwiththemenwhofeelintheirsoulsthatliftu"
    "pwardwhichbidsthemrefusetobesatisfiedthemselveswhiletheircountrymenandco"
    "untrywomensufferfromavoidablemiseryNowfriendswhatweProgressivesaretrying"
    "todoistoenrollrichorpoorwhatevertheirsocialorindustrialpositiontostandto"
    "getherforthemostelementaryrightsofgoodcitizenshipthoseelementaryrightswh"
    "icharethefoundationofgoodcitizenshipinthisgreatRepublicofoursAtthispoint"
    "arenewedeffortwasmadetopersuadeMrRoosevelttoconcludehisspeechMyfriendsar"
    "ealittlemorenervousthanIamDontyouwasteanysympathyonmeIhavehadanA1timeinl"
    "ifeandIamhavingitnowIneverinmylifewasinanymovementinwhichIwasabletoserve"
    "withsuchwholehearteddevotionasinthisinwhichIwasabletofeelasIdointhisthat"
    "commonwealIhavefoughtforthegoodofourcommoncountryAndnowfriendsIshallhave"
    "tocutshortmuchofthatspeechthatImeanttogiveyoubutIwanttotouchonjusttwoort"
    "hreepointsInthefirstplacespeakingtoyouhereinMilwaukeeIwishtosaythatthePr"
    "ogressivepartyismakingitsappealstoallourfellowcitizenswithoutanyregardto"
    "theircreedortotheirbirthplaceWedonotregardasessentialthewayinwhichamanwo"
    "rshipshisGodorasbeingaffectedbywherehewasbornWeregarditasamatterofspirit"
    "andpurposeInNewYorkwhileIwaspolicecommissionerthetwomenfromwhomIgotthemo"
    "stassistancewereJacobRiiswhowasborninDenmarkandArthurvonBriesenwhowasbor"
    "ninGermanybothofthemasfineexamplesofthebestandhighestAmericancitizenship"
    "asyoucouldfindinanypartofthiscountryIhavejustbeenintroducedbyoneofyourow"
    "nmenhereHenryCochemsHisgrandfatherhisfatherandthatfatherssevenbrothersal"
    "lservedintheUnitedStatesarmyandtheyentereditfouryearsaftertheyhadcometot"
    "hiscountryfromGermanyTwoofthemlefttheirlivesspenttheirlivesonthefieldofb"
    "attleIamallrightIamalittlesoreAnybodyhasarighttobesorewithabulletinhimYo"
    "uwouldfindthatifIwasinbattlenowIwouldbeleadingmymenjustthesameJustthesam"
    "ewayIamgoingtomakethisspeechAtonetimeIpromotedfivemenforgallantryonthefi"
    "eldofbattleAfterwardinmakingsomeinquiriesaboutthemIfoundthattwoofthemwer"
    "eProtestantstwoCatholicandoneaJewOneProtestantcamefromGermanyandonewasbo"
    "rninIrelandIdidnotpromotethembecauseoftheirreligionItjusthappenedthatway"
    "IfallfiveofthemhadbeenJewsIwouldhavepromotedthemorifallfiveofthemhadbeen"
    "ProtestantsIwouldhavepromotedthemoriftheyhadbeenCatholicsInthatregimentI"
    "hadamanborninItalywhodistinguishedhimselfbygallantrytherewasanotheryoung"
    "fellowasonofPolishparentsandanotherwhocameherewhenhewasachildfromBohemia"
    "wholikewisedistinguishedthemselvesandfriendsIassureyouthatIwasincapableo"
    "fconsideringanyquestionwhateverbuttheworthofeachindividualasafightingman"
    "IfhewasagoodfightingmanthenIsawthatUncleSamgotthebenefitofitThatisallIma"
    "kethesameappealtoourcitizenshipIaskinourciviclifethatweinthesamewaypayhe"
    "edonlytothemansqualityofcitizenshiptorepudiateastheworstenemythatwecanha"
    "vewhoevertriestogetustodiscriminatefororagainstanymanbecauseofhiscreedor"
    "birthplaceNowfriendsinthesamewayIwantoutpeopletostandbyoneanotherwithout"
    "regardtodifferencesorclassoroccupationIhavealwaysstoodbylaborunionsIamgo"
    "ingtomakeoneomissiontonightIhavepreparedmyspeechbecauseMrWilsonhadseenfi"
    "ttoattackmebyshowinguphisrecordincomparisonwithmineButIamnotgoingtodotha"
    "ttonightIamgoingtosimplyspeakofwhatImyselfhavedoneandwhatIthinkoughttobe"
    "doneinthiscountryofoursItisessentialthathereshouldbeorganizationsoflabor"
    "ThisisaneraoforganizationCapitalorganizesandthereforelabormustorganizeMy"
    "appealfororganizedlaboristwofoldtotheoutsiderandthecapitalistImakemyappe"
    "altotreatthelaborerfairlytorecognizethefactthathemustorganizethattheremu"
    "stbesuchorganizationthatthelaboringmanmustorganizeforhisownprotectionand"
    "thatitisthedutyoftherestofustohelphimandnothinderhiminorganizingThatison"
    "ehalfappealthatImakeNowtheotherhalfistothelabormanhimselfMyappealtohimis"
    "torememberthatashewantsjusticesohemustdojusticeIwanteverylabormaneveryla"
    "borleadereveryorganizedunionmantotaketheleadindenouncingdisorderandinden"
    "ouncingtheincitingofriotthatinthiscountryweshallproceedundertheprotectio"
    "nofourlawsandwithallrespecttothelawsIwantthelabormentofeelintheirturntha"
    "texactlyasjusticemustbedonethemsotheymustdojusticeTheymustbeartheirdutya"
    "scitizenstheirdutytothisgreatcountryofoursandthattheymustnotrestcontentu"
    "nlesstheydothatdutytothefullestdegreeIknowthesedoctorswhentheygetholdofm"
    "ewillneverletmegobackandtherearejustafewmorethingsthatIwanttosaytoyouAnd"
    "hereIhavegottomakeonecomparisonbetweenMrWilsonandmyselfsimplybecauseheha"
    "sinviteditandIcannotshrinkfromitMrWilsonhasseenfittoattackmetosaythatIdi"
    "dnotdomuchagainstthetrustswhenIwasPresidentIhavegottwoanswerstomaketotha"
    "tInthefirstplacewhatIdidandthenIwanttocomparewhatIdidwhenIwasPresidentwi"
    "thwhatMrWilsondidnotdowhenhewasgovernorWhenItooktheofficetheantitrustlaw"
    "waspracticallyadeadletterandtheinterstatecommercelawinaspooraconditionIh"
    "adtorevivebothlawsIdidIenforcedbothItwillbeeasyenoughtodonowwhatIdidthen"
    "butthereasonthatitiseasynowisbecauseIdiditwhenitwashardNobodywasdoingany"
    "thingIfoundspeedilythattheinterstatecommercelawbybeingmadeperfectcouldbe"
    "madeamostusefulinstrumentforhelpingsolvesomeofourindustrialproblemsSowit"
    "htheantitrustlawIspeedilyfoundoutthatalmosttheonlypositivegoodachievedby"
    "suchasuccessfullawsuitastheNorthernSecuritiessuitforinstancewasinestabli"
    "shingtheprinciplethatthegovernmentwassupremeoverthebigcorporationbutbyit"
    "selfthatthelawdidnotaccomplishanyofthethingsthatweoughttohaveaccomplishe"
    "dandsoIbegantofightfortheamendmentofthelawalongthelinesoftheinterstateco"
    "mmercelawandnowweproposeweProgressivestoestablishandinterstatecommission"
    "havingthesamepoweroverindustrialconcernsthattheInterstateCommerceCommiss"
    "ionhasoverrailroadssothatwheneverthereisinthefutureadecisionrenderedinsu"
    "chimportantmattersastherecentsuitsagainsttheStandardOilthesugarnonotthat"
    "TobaccoTobaccoTrustwewillhaveacommissionwhichwillseethatthedecreeoftheco"
    "urtisreallymadeeffectivethatitisnotmadeamerelynominaldecreeOuropponentsh"
    "avesaidthatweintendtolegalizemonopolyNonsenseTheyhavelegalizedmonopolyAt"
    "thismomenttheStandardOilandTobaccoTrustmonopoliesarelegalizedtheyarebein"
    "gcarriedonunderthedecreeoftheSupremeCourtOurproposalisreallytobreakupmon"
    "opolyOurproposalistolaydowncertainrequirementsandthentorequirethecommerc"
    "ecommissiontheindustrialcommissiontoseethatthetrustsliveuptothoserequire"
    "mentsOuropponentshavespokenasifweweregoingtoletthecommissiondeclarewhatt"
    "hoserequirementsshouldbeNotatallWearegoingtoputtherequirementsinthelawan"
    "dthenseethatthecommissionrequiresthemtoobeythatlawAndnowfriendsasMrWilso"
    "nhasinvitedthecomparisonIonlywanttosaythisMrWilsonhassaidthattheStatesar"
    "etheproperauthoritiestodealwiththetrustsWellabouteightypercentofthetrust"
    "sareorganizedinNewJerseyTheStandardOiltheTobaccotheSugartheBeefallthoset"
    "rustsareorganizedinthestateofNewJerseyandthelawsofNewJerseysaythattheirc"
    "harterscanatanytimebeamendedorrepealediftheymisbehavethemselvesandgiveth"
    "egovernmentamplepowertoactaboutthoselawsandMrWilsonhasbeengovernorayeara"
    "ndninemonthsandhehasnotopenedhislipsThechapterdescribingwhatMrWilsonhasd"
    "oneabouttrustsinNewJerseywouldreadpreciselylikeachapterdescribingsnakesi"
    "nIrelandwhichranTherearenosnakesinIrelandMrWilsonhasdonepreciselyandexac"
    "tlynothingaboutthetrustsItellyouandItoldyouatthebeginningIdonotsayanythi"
    "ngonthestumpthatIdonotbelieveIdonotsayanythingIdonotknowLetanyofMrWilson"
    "sfriendsonTuesdaypointoutonethingorletMrWilsonpointoutonethingthathehasd"
    "oneaboutthetrustsasgovernorofNewJerseyAndnowfriendsthereisonethingIwantt"
    "osayespeciallytoyoupeoplehereinWisconsinAllthatIhavesaidsofariswhatIwoul"
    "dsayinanypartoftheUnionIhaveapeculiarrighttoaskthatinthisgreatcontestyou"
    "menandwomenofWisconsinshallstandwithusYouhavetakentheleadinprogressivemo"
    "vementshereinWisconsinYouhavetaughttherestofustolooktoyouforinspirationa"
    "ndleadershipNowfriendsyouhavemadethatmovementherelocallyYouwillbeingdoin"
    "gadreadfulinjusticetoyourselvesyouwillbedoingadreadfulinjusticetotherest"
    "ofusthroughouttheUnionifyoufailtostandwithusnowthatwearemakingthisnation"
    "almovementWhatIamabouttosaynowIwantyotounderstandIfIspeakofMrWilsonIspea"
    "kwithnomindofbitternessImerelywanttodiscussthedifferenceofpolicybetweent"
    "heProgressiveandtheDemocraticpartyandtoaskyoutothinkforyourselveswhichpa"
    "rtyyouwillfollowIwillsaythatfriendsbecausetheRepublicanpartyisbeatenNobo"
    "dyneedstohaveanyideathatanythingcanbedonewiththeRepublicanpartyWhentheRe"
    "publicanpartynottheRepublicanpartywhenthebossesincontroloftheRepublicanp"
    "artytheBarnesesandPenroseslastJunestolethenominationandwreckedtheRepubli"
    "canpartyforgoodandallIwanttopointouttoyouthatnominallytheystolethatnomin"
    "ationfrommebutitwasreallyfromyouTheydidnotlikemeandthelongertheylivethel"
    "esscausetheywillhavetolikemeButwhiletheydontlikemetheydreadyouYouarethep"
    "eoplethattheydreadTheydreadthepeoplethemselvesandthosebossesandthebigspe"
    "cialinterestsbehindthemmadeuptheirmindthattheywouldratherseetheRepublica"
    "npartywreckedthanseeitcomeunderthecontrolofthepeoplethemselvesSoIamnotde"
    "alingwiththeRepublicanpartyThereareonlytwowaysyoucanvotethisyearYoucanbe"
    "progressiveorreactionaryWhetheryouvoteRepublicanorDemocraticitdoesnotmak"
    "eadifferenceyouarevotingreactionaryNowtheDemocraticpartyinitsplatformand"
    "throughtheutterancesofMrWilsonhasdistinctlycommitteditselftotheoldflintl"
    "ockmuzzleloadeddoctrineofStatesrightsandIhavesaiddistinctlyweareforpeopl"
    "esrightsWearefortherightsofthepeopleIftheycanbeobtainedbestthroughNation"
    "alGovernmentthenwearefornationalrightsWeareforpeoplesrightshoweveritisne"
    "cessarytosecurethemMrWilsonhasmadealongessayagainstSenatorBeveridgesbill"
    "toabolishchildlaborItisthesamekindofargumentthatwouldbemadeagainstourbil"
    "ltoprohibitwomenfromworkingmorethaneighthoursadayinindustryItisthesameki"
    "ndofargumentthatwouldhavetobemadeifitistrueitwouldapplyequallyagainstour"
    "proposaltoinsistthatincontinuousindustriesthereshallbebylawonedaysrestin"
    "sevenandthreeshifteighthourdayYouhavelaborlawshereinWisconsinandchambero"
    "fcommercewilltellyouthatbecauseofthatfactthereareindustriesthatwillnotco"
    "metoWisconsinTheyprefertostayoutsidewheretheycanworkchildrenoftenderyear"
    "swheretheycanworkwomenfourteenandsixteenhoursadaywhereifitisacontinuousi"
    "ndustrytheycanworkmentwelvehoursadayandsevendaysaweekNowfriendsIknowthat"
    "youofWisconsinwouldneverrepealthoselawseveniftheyareatyourcommercialhurt"
    "justasIamtryingtogetNewYorktoadoptsuchlawseventhoughitwillbetotheNewYork"
    "scommercialhurtButifpossibleIwanttoarrangeitsothatwecanhavejusticewithou"
    "tcommercialhurtandyoucanonlygetthatifyouhavejusticeenforcednationallyYou"
    "wontbeburdenedinWisconsinwithindustriesnotcomingtotheStateifthesamegoodl"
    "awsareextendedallovertheotherStatesDoyouseewhatImean?"
    "TheStatesallcompeteinacommonmarketanditisnotjusticetotheemployersofaStat"
    "ethathasenforcedjustandproperlawstohavethemexposedtothecompetitionofanot"
    "herStatewherenosuchlawsareenforcedNowtheDemocraticplatformandtheirspeake"
    "rsdeclareweshallnothavesuchlawsMrWilsonhasdistinctlydeclaredthatweshalln"
    "othaveanationallawtoprohibitthelaborofchildrentoprohibitchildlaborHehasd"
    "istinctlydeclaredthatweshallnothavealawtoestablishaminimumwageforwomenIa"
    "skyoutolookatourdeclarationandhearandreadourplatformaboutsocialandindust"
    "rialjusticeandthenfriendsvotefortheProgressiveticketwithoutregardtomewit"
    "houtregardtomypersonalityforonlybyvotingforthatplatformcanyoubetruetothe"
    "causeofprogressthroughoutthisUnion"};
int c[NUM][PATTERN_SIZE];
int d[NUM][1];

#ifdef CAPCHECKER
u64 capchecker_base_phy_addr = 0xc0020000;
u64 capchecker_size = 0x00002000;
#define capchecker_nbentries (capchecker_size / sizeof(void *))

void capchecker_install_cap(int cap_idx, void *cap) {
  void *almighty = cheri_ddc_get();
  volatile void **capchecker_ptr =
      __builtin_cheri_address_set(almighty, capchecker_base_phy_addr);
  capchecker_ptr = __builtin_cheri_bounds_set(capchecker_ptr, capchecker_size);
  capchecker_ptr[cap_idx] = cap;
}
#endif

#ifndef DEBUG
volatile void __attribute__((noinline)) success() {
#ifdef CAP
  void *almighty = cheri_ddc_get();
  volatile u32 *physical_addr =
      __builtin_cheri_address_set(almighty, (volatile u32 *)&tohost);
  physical_addr = __builtin_cheri_bounds_set(physical_addr, 0x4);
  *physical_addr = 1;
#else
  *((volatile u32 *)&tohost) = 1;
#endif
}

volatile void fail() {
#ifdef CAP
  void *almighty = cheri_ddc_get();
  volatile u32 *physical_addr =
      __builtin_cheri_address_set(almighty, (volatile u32 *)&tohost);
  physical_addr = __builtin_cheri_bounds_set(physical_addr, 0x4);
  *physical_addr = 1;
#else
  *((volatile u32 *)&tohost) = 1;
#endif
}
#else
void success() {}
#endif

volatile void reg_error() {
  while (1)
    ;
}

u32 hls_top_init(int test_case) { return 0; }

int main() {

  // Initialise .captable
#ifdef CAP
  void *almighty = cheri_ddc_get();
  cheri_init_globals_3(almighty, almighty, almighty);
#endif

  // Initialize
  for (int i = 0; i < NUM; i++) {
    if (hls_top_init(i))
      return 4;
  }

  // Compute
#ifndef DEBUG
  asm("fence");
#endif
  for (int i = 0; i < NUM; i++)
    hls_top(STRING_SIZE, a[i], b[i], c[i], d[i]);
#ifndef DEBUG
  asm("fence");
#endif

  success();
  return 0;
}
