var actors = db._create("actors");
var movies = db._create("movies");
var actsIn = db._createEdgeCollection("actsIn");

// movie1
// ---------------------------------------------------------------------------------------------------------------
var american_beauty = movies.save({_key: "american_beauty", title:'american_beauty', released:1999})._id;
var kevin_spacey = actors.save({_key: "kevin_spacey", name:'kevin_spacey'})._id;
var wes_bentley = actors.save({_key: "wes_bentley", name:'wes_bentley'})._id;
var allison_janney = actors.save({_key: "allison_janney", name:'allison_janney'})._id;
var ara_celi = actors.save({_key: "ara_celi", name:'ara_celi'})._id;

actsIn.save(kevin_spacey, american_beauty, {roles: ["sam_mendes"], year: 1999});
actsIn.save(wes_bentley, american_beauty, {roles: ["lester_burnham"], year: 1999});
actsIn.save(allison_janney, american_beauty, {roles: ["barbara_fitts"], year: 1999});
actsIn.save(ara_celi, american_beauty, {roles: ["sale_house_woman_1"], year: 1999});

// movie2
// ---------------------------------------------------------------------------------------------------------------
var anna = movies.save({_key: "anna", title:'anna', released:1987})._id;
var robert_fields = actors.save({_key: "robert_fields", name:'robert_fields'})._id;
var john_robert_tillotson = actors.save({_key: "john_robert_tillotson", name:'john_robert_tillotson'})._id;
var julianne_gilliam = actors.save({_key: "julianne_gilliam", name:'julianne_gilliam'})._id;
var deirdre_o_connell = actors.save({_key: "deirdre_o_connell", name:'deirdre_o_connell'})._id;

actsIn.save(robert_fields, anna, {roles: ["daniel"], year: 1987});
actsIn.save(john_robert_tillotson, anna, {roles: ["director_2"], year: 1987});
actsIn.save(julianne_gilliam, anna, {roles: ["woman_author"], year: 1987});
actsIn.save(deirdre_o_connell, anna, {roles: ["assistant_2"], year: 1987});

// movie3
// ---------------------------------------------------------------------------------------------------------------
var barton_fink = movies.save({_key: "barton_fink", title:'barton_fink', released:1991})._id;
var john_turturro = actors.save({_key: "john_turturro", name:'john_turturro'})._id;
var john_goodman = actors.save({_key: "john_goodman", name:'john_goodman'})._id;
var gayle_vance = actors.save({_key: "gayle_vance", name:'gayle_vance'})._id;
var jana_marie_hupp = actors.save({_key: "jana_marie_hupp", name:'jana_marie_hupp'})._id;

actsIn.save(john_turturro, barton_fink, {roles: ["barton_fink"], year: 1991});
actsIn.save(john_goodman, barton_fink, {roles: ["charlie_meadows"], year: 1991});
actsIn.save(gayle_vance, barton_fink, {roles: ["geisler_s_secretary"], year: 1991});
actsIn.save(jana_marie_hupp, barton_fink, {roles: ["uso_girl"], year: 1991});

// movie4
// ---------------------------------------------------------------------------------------------------------------
var cq = movies.save({_key: "cq", title:'cq', released:2001})._id;
var jeremy_davies = actors.save({_key: "jeremy_davies", name:'jeremy_davies'})._id;
var g_rard_depardieu = actors.save({_key: "g_rard_depardieu", name:'g_rard_depardieu'})._id;
var sascha_ley = actors.save({_key: "sascha_ley", name:'sascha_ley'})._id;
var greta_seacat = actors.save({_key: "greta_seacat", name:'greta_seacat'})._id;

actsIn.save(jeremy_davies, cq, {roles: ["paul"], year: 2001});
actsIn.save(g_rard_depardieu, cq, {roles: ["andrezej"], year: 2001});
actsIn.save(sascha_ley, cq, {roles: ["fantasy_critic"], year: 2001});
actsIn.save(greta_seacat, cq, {roles: ["festival_critic"], year: 2001});

// movie5
// ---------------------------------------------------------------------------------------------------------------
var the_perfect_score = movies.save({_key: "the_perfect_score", title:'the_perfect_score', released:2004})._id;
var chris_evans = actors.save({_key: "chris_evans", name:'chris_evans'})._id;
var bryan_greenberg = actors.save({_key: "bryan_greenberg", name:'bryan_greenberg'})._id;
var vanessa_angel = actors.save({_key: "vanessa_angel", name:'vanessa_angel'})._id;
var iris_quinn = actors.save({_key: "iris_quinn", name:'iris_quinn'})._id;

actsIn.save(chris_evans,the_perfect_score, {roles: ["kyle"], year: 2004});
actsIn.save(bryan_greenberg, the_perfect_score, {roles: ["matty_matthews"], year: 2004});
actsIn.save(vanessa_angel, the_perfect_score, {roles: ["anita_donlee"], year: 2004});
actsIn.save(iris_quinn, the_perfect_score, {roles: ["kyle_s_mother"], year: 2004});

// movie6
// ---------------------------------------------------------------------------------------------------------------
var untitled_woody_allen_fall_project_2006 = movies.save({_key: "untitled_woody_allen_fall_project_2006", title:'untitled_woody_allen_fall_project_2006', released:2004})._id;
var jody_halse = actors.save({_key: "jody_halse", name:'jody_halse'})._id;
var jesse_flanagan = actors.save({_key: "jesse_flanagan", name:'jesse_flanagan'})._id;
var scarlett_johansson = actors.save({_key: "scarlett_johansson", name:'scarlett_johansson'})._id;
var irene_olga_l_pez = actors.save({_key: "irene_olga_l_pez", name:'irene_olga_l_pez'})._id;

actsIn.save(jody_halse,untitled_woody_allen_fall_project_2006, {roles: ["bouncer"], year: 2006});
actsIn.save(jesse_flanagan, untitled_woody_allen_fall_project_2006, {roles: ["little_larry_sellers"], year: 2006});
actsIn.save(scarlett_johansson, untitled_woody_allen_fall_project_2006, {roles: ["catherine"], year: 2006});
actsIn.save(irene_olga_l_pez, untitled_woody_allen_fall_project_2006, {roles: ["pilar_sellers_housekeeper"], year: 2006});