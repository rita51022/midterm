//
//  PlantTableViewController.swift
//  midterm
//
//  Created by 方羿云 on 2018/5/3.
//  Copyright © 2018年 方羿云. All rights reserved.
//

import UIKit

class PlantTableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true //標題字變大
        navigationItem.largeTitleDisplayMode = .never
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return plant.count
    }
    
    var plantdata0:[Plant] = [
        Plant(Commonname: "野甘草", Scientificname: "Scoparia dulcis Linn.", originlocation:"熱帶美洲，現廣布世界各地", taiwanlocation: "台灣全境平野至低海拔山區之村落、路旁多見自生", description: "台灣民間著名常用藥材，味甘甜而果實多數如細珠形，因而又名甜珠草。為一年生草本，高 30~80 公分，全株無毛；莖直立，多分枝，下部木質化。葉對生或三葉輪生，具短柄，披針形至橢圓形或倒卵形、廣線形，長 0.5~3 公分，寬 0.3~0.8 公分；基部漸狹，先端短尖，鋸齒緣。花小，多數，白色，單生或對生；萼片 4 枚，卵狀矩圓形，長約 0.2 公分；花冠輻形，徑 0.4~0.5 公分，4 裂，裂片橢圓形，喉部具毛；雄蕊 4 枚，花藥箭頭形，黃綠色；雌蕊 1 枚，花柱細長，柱頭盤狀。蒴果卵狀至球形，直徑 0.3~0.5 公分，花柱宿存，熟後裂開。花期夏秋間。", image: "野甘草"),
        Plant(Commonname: "圓葉母草", Scientificname: "Lindernia rotundifolia (Linn.)", originlocation:"原產於熱帶與亞熱帶地區", taiwanlocation: "稻米田邊、沿溪流岸、潮溼地；海拔高度低於1800公尺。", description: "一年生小草本，喜生水邊。莖匍匐後斜生，光滑。葉對生，無柄，寬卵形，基部圓形，疏鋸齒緣；花單生葉腋，花梗長於鄰近葉；花萼5裂；花瓣白色具紫斑；2唇狀，上唇2淺裂，下唇3裂；2強雄蕊 。蒴果橢圓形。", image: "圓葉母草"),
        Plant(Commonname: "毛地黃", Scientificname: "Digitalis purpurea Linn.", originlocation:"歐洲西部，各地園林有栽培", taiwanlocation: "佈於太平山，阿里山，八仙山及海拔 2000 公尺左右的高山，南投線清境農場、梅峰農場有栽植", description: "多年生草本，高約 1 公尺，莖直立，少分枝，全株密生短絨毛。葉粗糙、皺縮，基生葉具長柄，柄翼狀，葉形大，卵形至卵狀長橢圓形，長 12~25 公分，具不明顯葉緣，先端呈略鋸齒狀，往莖頂尺寸漸小，鈍鋸齒緣，兩面被絨毛；莖生葉柄短或無，長卵形，葉形有由下至上而漸小。花序總狀，頂生，單邊；萼片 5，不等，深裂至底，無小苞片；花冠二唇化，鐘形，花瓣片 5；二強雄蕊，花藥不相聯，藥室等長。夏季由莖頂端伸出長花穗，並由下端向上順序開放美麗的鐘狀花，萼片 5 裂，裂片卵狀批針形，花冠先端類似唇形，長 5~7.5 公分，紫紅色，綠白色，並點綴濃紫色斑點；花期 6~8 月。蒴果包於花萼內，具喙，胞間開裂。果實為廣卵形，內藏細小種子，數目極多；果熟期 8~10 月。毛地黃名字由來：它為何被叫毛地黃呢？是因為它有著佈滿茸毛的莖葉及酷似地黃的葉片，因而有「毛地黃」名字；又因為它來自遙遠的歐洲，因此又稱為「洋地黃」。", image: "毛地黃"),
        Plant(Commonname: "水苦蕒", Scientificname: "Veronica undulata Wall.", originlocation:"泛北美洲、歐洲及東亞各地。中國大陸西南部，喜馬拉雅、琉球、日本、朝鮮半島", taiwanlocation: "台灣全境平野至低海拔山區之平野、田畔或水溝及沼澤濕地", description: "一或二年生草本，高 20~50 公分，植株脆弱，光滑無毛；莖直立，多肉質，中空。葉對生，無柄，葉片長圓狀披針形或長橢圓狀卵形，長 4~8 公分，寬 0.8~1.6 公分，基部耳垂狀抱莖，先端鈍形或銳尖形，全緣或不整齊狀鋸齒緣。總狀花序，腋生，長 5~15 公分；苞片橢圓形，細小；花小，具細梗；萼 4 裂，裂片長卵形；花冠淡紫色、深藍色或白色，具紫色線條；雄蕊 2 枚，突出；雌蕊 1 枚，子房上位，柱頭頭狀。蒴果近圓形，長、徑約 0.3 公分，具宿存花萼，常有小蟲寄生後膨大；內具多數種子，長扁圓形。花期 3~7 月。果期 4~8 月。", image: "水苦蕒")]
    var plantdata1:[Plant] = [
        Plant(Commonname: "狗骨仔", Scientificname: "Tricalysia dubia (Lindl.)", originlocation:"台灣、大陸華南及琉球", taiwanlocation: "台灣全境中低海拔 300~1,000 公尺山麓低地原生闊葉樹林內混生", description: "常綠小喬木或小灌木。葉對生，長橢圓形，長 7~15 公分，寬 3~6 公分，先端尾狀銳尖，基部鈍，革質或厚紙質，全緣；托葉三角形。腋生繖房花序；花萼 4淺裂；花冠黃白色，4 深裂，開時反捲；子房 2 室，各室 2 胚珠；柱頭 2 分裂；雄蕊與花冠裂片同數互生。漿果球形，徑 0.6~0.8 公分，紅熟。花期 4~8 月，果期 5 月至翌年 2 月。", image: "狗骨仔"),
        Plant(Commonname: "長節耳草", Scientificname: "Hedyotis uncinella.", originlocation:"原產於中國、印度、台灣", taiwanlocation: "台灣低海拔地區", description: "直立多年生草本，除花冠喉部和萼檐裂片外，全部無毛；莖通常單生，粗壯，四棱柱形；節間距離長。葉對生，紙質，具柄或近無柄，卵狀長圓形或長圓狀披針形，長3.5-7.5厘米，寬1-3厘米，頂端漸尖，基部漸狹或下延；側脈每邊4-5條，纖細，與中脈成銳角向上斜伸，小脈不明顯；托葉三角形，長12毫米，基部合生，邊緣有疏離長齒或深裂。花序頂生和腋生，密集成頭狀，直徑12-15毫米，無總花梗；花4數，無花梗或具極短的梗；萼管近球形，長約3毫米，萼檐裂片長圓狀披針形，長約3毫米，頂端鈍，無毛或具小緣毛；花冠白色或紫色，長約5毫米，冠管長約3毫米，喉部被絨毛，花冠裂片長圓狀披針形，比管短，頂端近短尖；雄蕊生於冠管喉部，花絲極短，花藥內藏，線形，長約3毫米，兩端截平；花柱長2毫米，柱頭2裂；裂片近橢圓形，粗糙。蒴果闊卵形，長2毫米，直徑1.8-2毫米，頂部平，宿存萼檐裂片長3毫米，成熟時開裂為2個果爿，果爿腹部直裂；種子數粒，具棱，淺褐色。花期4-6月。", image: "長節耳草"),
        Plant(Commonname: "苞花蔓", Scientificname: "Geophila herbacea (Jacq.)", originlocation:"熱帶地區", taiwanlocation: "臺灣全島低至中海拔山區，最高可達 1,000 公尺，散生於林下及路旁，較少見。宜蘭、台北、雲林、高雄、屏東、台東、蘭嶼皆有分布。", description: "多年生匍匐性草本。單葉，對生，具葉柄，柄長 1~4 公分，被毛；葉片長 1.5~3 公分，寬 1.5~3 公分，心狀圓形，葉基心形，葉尖鈍圓形，葉緣全緣，上表面光滑，下表面光滑或葉脈被短柔毛。花單一，頂生，具花梗，梗長 1.5~2 公分；苞片 2 片；花萼 5 裂，裂片線狀披針形；花冠長漏斗形，4~5 裂，喉部光滑；雄蕊 4~5 枚，著生冠筒中部；花柱長約 0.6 公分，藏於冠筒中；柱頭 2 裂。果實為核果，肉質，徑 0.6~0.8 公分，成熟時紅色；種子 2 粒。", image: "苞花蔓"),
        Plant(Commonname: "蛇根草", Scientificname: "Ophiorrhiza japonica Blume ", originlocation:"中國南部、日本、琉球、台灣", taiwanlocation: "台灣全境及蘭嶼，中低海拔山谷林下陰濕地", description: "蛇根草為茜草科蛇根草屬常綠多年生草本。蛇根草的花有兩型：花藥（雄蕊）凸出型與花柱（雌蕊）凸出型，茜草科植物的這種現象是兩性花避免自花授粉的優生學演化，稱之為異型花柱（heterostyly）。台灣本島常見的蛇根草有早田氏蛇根草(Ophiorrhiza hayatana  Ohwi.)、蛇根草(又叫日本蛇根草-Ophiorrhiza japonica  Bl.)和白花蛇根草(Ophiorrhiza pumila  Champ. ex Benth.)等 3 種，小花蛇根草(Ophiorrhiza kuroiwae Makino)主要產於蘭嶼、綠島，台灣僅少數分布於恆春半島。蛇根草葉基漸尖，若歪斜像彎刀葉則是早田氏蛇根草(O.hayatuna)，另一個更明顯的差別是花萼上是否具有瘤狀物，區別蛇根草與早田氏蛇根草關鍵在於花萼上的瘤狀物，蛇根草花萼光滑，而早田氏蛇根草的花萼則有瘤狀物。另一種葉小型，7 公分，葉柄及花梗短則是北部常見白花蛇根草(O. pumila)。蛇根兩字指植物根莖橫臥在地上如蛇狀。盛花期 4~5 月，白色漏斗星狀花，又叫荷苞花，雪裡開花。", image: "蛇根草"),
        Plant(Commonname: "羊角藤", Scientificname: "Morinda umbellata L.", originlocation:"中國大陸產於南部江蘇、安徽、浙江、江西、福建、湖南、廣東、香港、海南、廣西等省區。生長於海拔 300~1,500 公尺處，攀援於山地林下、溪旁、路旁等疏陰或密陰的叢林內或森林邊緣。印度、馬來西亞、菲律賓、琉球、日本及台灣亦有生產", taiwanlocation: "台灣分佈於全島闊葉樹林下，海拔 300~1,500 公尺處，攀援於山地林下、溪旁、路旁等疏陰或密陰的叢林內或森林邊緣", description: "蔓性灌木，全株平滑；莖伸長，具多數分枝；小枝蔓長，光滑無毛。葉為單葉對生，橢圓形、長倒卵形至長橢圓形，長 6~10 公分，寬 3~4.5 公分，先端呈短尖突，基部銳或鈍，紙質或革質，全緣；表面呈有光澤的綠色，背面淡綠色；表面光滑無毛，背面脈腋具有毛叢；中肋於表面略凹下而於背面顯著隆起，側脈 5~7 對；葉柄長 0.8~1.5 公分，光滑無毛；托葉作鞘狀癒合，闊卵形，先端銳尖。花 6~12 枚，白色，小型，開放時徑 0.4~0.6 公分，呈頭狀花序排列；常數枚花序叢生或呈繖形花序排列於枝條先端；花序長 1.5~3 公分，光滑無毛；花柄無，花萼淺鐘形，先端截短斷狀而有 5 淺齒裂；裂片三角形，長 0.1~0.15 公分，先端銳尖；花冠具短冠筒，長 0.4~0.45 公分，先端深 4 裂；裂片先端外側具有凸突，內側密生白色長毛；子房 2 室或不完全 4 室；柱頭短而作深 2 裂。果實為肉質核果聚合成聚合果；全體作不整齊球形，徑0.7~1.0 公分，成熟時呈橙紅色而至黑色，外有不規則凹溝；核果具分核 2~4；分核近三稜形，外側彎拱，具種子 1 顆；種子角質，棕色，與分核同形。花期 6~7 月，果熟期 10~11 月。本種與百眼藤(紅珠藤)植株形態、果實皆相似，惟葉片較大而長故又名『大百眼藤』。", image: "羊角藤")]
    var plantdata2:[Plant] = [
        Plant(Commonname: "小舌菊", Scientificname: "Microglossa pyrifolia (Lam.) Kuntze", originlocation:"東南亞、印度及非洲", taiwanlocation: "台灣全境平野開闊地至低海拔山地多見", description: "多年生木質攀援性灌木，高 2~5 公尺，分枝多而茂盛，有溝紋，被細柔毛，具半透明腺點，成熟後無毛。葉互生或對生，柄長 0.5~1.5 公分，長 5~10 公分，寬 3~5 公分，卵圓狀長橢圓形，葉尖銳尖，葉基楔形至楔狀圓形，葉緣為不明顯細鋸齒緣，上表面綠色，疏被毛至無毛，下表面灰白，初生時被短細毛。頭狀花序徑 0.5~0.6 公分，呈繖房狀排列，花序軸長 0.2~0.5 公分；總苞長、寬約 0.5 公分，鐘形；總苞片 5 輪，呈覆瓦狀排列，乾膜質，外層總苞片長約 0.07 公分，先端鈍，卵圓狀披針形，中間層總苞片披針形，內層總苞片線形；頭狀花冠周圍為雌性舌狀花，殆為絲狀，長約 0.35 公分；中央為兩性之管狀花，2~3 朵，花冠淡黃白色，長約 0.45 公分，先端 5  裂。果實為瘦果，長約 0.1 公分，扁平而稍 5 角柱形；冠毛長約 0.4 公分，淡紫色。全年開花結果。惟秋冬較少。", image: "小舌菊"),
        Plant(Commonname: "南國小薊", Scientificname: "Cirsium japonicum DC. var. australe Kitamura", originlocation:"北半球", taiwanlocation: "分佈於低至中海拔之開闊地，如路旁、山野及海濱砂礫地附近，尤其是平野廢耕地、土壤層肥厚的道路兩旁", description: "多年生草本，根粗大，莖直立，密生細毛，高約 30~100 公分，但冬季不開花時則僅存根生葉，高度在 10 公分以下；葉披針形，具深淺不一的缺刻，裂片末端突出成為銳刺，頭狀花序生於枝端，呈紫紅色，大型，頗美，總苞片尖端也變成針刺狀，花均為筒狀花，兩性，瘦果長橢圓形，頂端具有白色冠毛約 30 條。近緣種還有濱刺薊，一般而言，本種軸根多短促，較無食用價值。", image: "南國小薊"),
        Plant(Commonname: "苦滇菜", Scientificname: "Sonchus oleraceus Linn.", originlocation:"泛亞熱帶至溫帶地區。中國大陸、海南島朝鮮，日本，歐洲", taiwanlocation: "分布於台灣全境平野至中海拔之原野、果園、路旁自生，多見於春、夏間", description: "一年生或越年生草本，全株含白色乳汁，高 50~100 公分，莖直立，中空，有稜線、帶暗紫色，分枝幼嫩部份具腺狀毛。葉互生，基部葉具短柄，莖上葉無柄而呈耳垂狀抱莖，葉片長橢圓狀披針形，長 10~20 公分，寬 3~5 公分，提琴形羽裂或不整狀羽裂，具大小不整齊尖齒緣，先端尖，葉背稍帶粉白。頭狀花黃色，頂生，排列呈疏繖房花序，花徑約 2~3 公分；總苞圓筒狀，長 1.2~1.5 公分，綠色，苞片 3~4 輪，長橢圓狀披針形，被腺毛，外輪苞片長 0.35~0.45 公分，中輪 0.6~0.9 公分；均為舌狀花，黃色，下半部管狀，先端截形，5 齒緣，被白細毛；雌雄同株，雄蕊 5 枚；子房下位，花柱細長，柱頭 2 深裂。瘦果倒卵狀橢圓形而扁平，長約 0.6 公分，褐色，具有 3 條明顯縱紋，復有橫紋，熟紅褐色，冠毛白色，細軟。", image: "苦滇菜"),
        Plant(Commonname: "小米菊", Scientificname: "Galinsoga parviflora Canranillis", originlocation:"熱帶美洲，中國大陸南部至西南部、印度亦有", taiwanlocation: "臺灣山地至中海拔地區之農園或路旁、荒地馴化自生", description: "多分枝的一年生草本，植株高約 30~70 公分，被毛或無毛；莖多分枝，直立。葉對生，柄長 0.3~1.5 公分，葉片卵圓形、卵狀披針形至披針形，長 3~6 公分，寬 1~3 公分，基部鈍楔形或鈍圓形，先端漸尖形，淺圓鋸齒或近全緣，三出脈明顯，被毛。頭狀花序，徑 0.3~0.4 公分，梗細長，生小枝頂端葉腋，1 至多枚；總苞半球形，苞片 2 層，寬卵形，稍膜質，綠色；花異形，均能結實；外圍舌狀花，4~6 枚，舌狀花白色，先端 3 齒裂，雌性；管狀花多數，兩性，花托突起，具托片，披針形。瘦果細長筒形，具稜，冠毛睫毛狀鱗片。", image: "小米菊"),
        Plant(Commonname: "飛機草", Scientificname: "Erechtites valerianifolia (Wolf ex Rchb.) DC.", originlocation:"分佈南美；現已在台灣馴化", taiwanlocation: "台灣全島平野至低海拔山野、路旁，從平地至海拔約 1,700 公尺處。", description: "莖有縱稜，近乎無毛，多汁。下部葉有柄，長橢圓形，羽狀淺裂或深裂，裂片不規則粗齒緣。頭花頂生，直立或下垂，圓錐狀排列，花冠紫色帶些黃色。瘦果，長 0.2~0.25 公分，窄圓柱形， 10~12 稜，紅色；冠毛白色至淡紫色，被細剛毛。", image: "飛機草")]
    var plantdata3:[Plant] = [
        Plant(Commonname: "李花", Scientificname: "Prunus salicina Lindl.", originlocation:"中國", taiwanlocation: "在台灣集中在北、中部的山區，如台中、苗栗、新竹、彰化、南投等地的山區或坡地", description: "李為落葉小喬木，株高 3~5 公尺，樹皮灰褐色，老幹有橫裂眼狀斑紋，小枝光滑無毛。單葉互生或叢生枝端，橢圓狀形葉互生，枝尾的葉，常 4~6 葉簇生，長橢圓披針形，先端長尖，基部楔形，鋸齒或細鋸齒緣，無毛，長 8~12 公分，寬約 3~4 公分 ，具有托葉，葉柄有數腺體；葉脈明顯。春天時，花通常每三朵一叢，花先葉開，滿樹燦爛的花朵，1~3 朵叢生，花瓣 5 或 5 的倍數，白色。果球形，黃色或淡赤色。選購及食用上，紅肉李以果粒大、皮黑、果面有白色果粉為上等品。", image: "李花"),
        Plant(Commonname: "紅梅消", Scientificname: "Rubus parvifolius L.", originlocation:"大陸及臺灣中、低海拔向陽地，分布日本、韓國", taiwanlocation: "全台平地路旁或郊區山野", description: "匍匐落葉性小灌木。莖基部呈略匍匐狀，全體密生短毛，且具有小鉤刺；葉互生，具細短刺及逆毛，3 出複葉，小葉菱狀倒卵形，三葉中的頂葉較大，具有柄，邊綠為不整齊的鋸齒或缺刻，表面淡綠色，光滑無毛，背面密被白色絨毛；聚繖花序，頂生或腋生，花萼 5 片，花瓣 5 枚，淡紫紅色，倒卵形，較萼片短，不甚舒展，花萼 5 裂，外具小刺，花期為春至秋季；漿質莓果，果實球形，成熟時紅色並有甜味。紅梅消的花瓣是紫紅色，幾乎使人可以一眼就認出來，其他種類的花瓣幾乎都是白色。通常長在平地路旁或郊區山野，少單獨生長，常成群繁生，果實成熟時，可採集食用。", image: "紅梅消"),
        Plant(Commonname: "山薔薇", Scientificname: "Rosa sambucina Koidz.", originlocation:"台灣固有種", taiwanlocation: "全台高海拔地區", description: "莖疏生短刺。小葉常3，稀5，長橢形至長橢圓狀卵形，長5-8cm，寬2-3cm。花數朵，成頂生繖房花序，白色；萼片下面密生絨毛。果卵球形。", image: "山薔薇"),
        Plant(Commonname: "枇杷", Scientificname: "Eriobotrya japonica Lindley", originlocation:"中國四川省及江南。台灣於明末移民時引進", taiwanlocation: "分佈在臺中、南投、苗栗、臺東等四個產區，以經濟果樹栽植，中部一帶栽植最多，也常栽植於庭園內。臺東為最近幾年才新興的產區", description: "常綠小喬木。株高可達高 5~10 公尺，小枝粗壯，密生淡褐色或灰棕色絨毛。葉互生，具短柄，披針形、倒披針形或披針狀長橢圓形，長 15~20 公分，寬 5~8 公分。枇杷每年秋冬季開白色花，花頂生於枝梢，灰褐成團，但具有特殊芳香味。花瓣五片 。果實成熟約翌年 2~4 月，熟果橙黃色，果實呈長卵形，徑約 3.5 公分，外被絨毛，內藏種子 1~5 顆。果實可鮮食，葉可入藥。種子和幼葉有毒。", image: "枇杷"),
        Plant(Commonname: "桑葉懸鉤子", Scientificname: "Rubus kawakamii Hayata", originlocation:"台灣固有種",taiwanlocation: "台灣海拔 1,200~2,600 公尺的山地，叢林邊緣或路旁，較常見", description: "直立常綠灌木，高可達 1.5 公尺，莖具有多數分枝，具有鉤刺，幼時常帶有褐色毛茸，但老時則脫落呈較暗的顏色。葉長橢圓形或長橢圓狀卵形，有時亦有為長橢圓狀披針形，長 6~10 公分，寬 2~4 公分，先端長漸尖，基部圓或楔形，薄紙質，葉緣有不規則鋸齒，表面暗綠色，背面顏色較淡，光滑無毛或僅背面葉脈處散生有毛茸，背面中肋散生鉤刺，側脈每邊 6~7 枚；葉柄長 1~2 公分，有毛茸或光滑；托葉長橢圓形，早落，長 0.6 公分，略有鋸齒，外面有毛茸，內面光滑。花 4~6 枚呈頂生的繖形花序或近似繖形花序，白色或略帶紫紅色，徑 2~2.5 公分；花序長 3~5 公分；花梗長 3~6 公分，略帶有毛茸；苞片線形，有鋸齒，花萼鐘形，外面有絨毛，內面光滑，深 5 裂，裂片卵狀三角形，長 0.5~0.6 公分，先端銳尖；花瓣 5 枚，卵形，長約 7 公分，先端微凹；雄蕊多數，心皮多數。果實為集生果，徑約 1~1.5 公分，球形或近似球形，成熟時鮮紅色。", image: "桑葉懸鉤子"),
        Plant(Commonname: "台灣繡線菊", Scientificname: "Spiraea  formosama Hayata", originlocation:"台灣特有種", taiwanlocation: "高海拔常見植物生育於向陽開闊地或林緣環境。北起南湖大山、南迄北大武的高山地區，分布於海拔2,100-3,500公尺之間的山地。其中以八通關到觀高一帶的路旁生長最旺盛，合歡山、能高山、雪山東峰及秀姑巒一帶次之", description: "性喜土壤深厚的高山地帶，以每日太陽能照射三、四小時的東南及東北向山坡地生長最佳；植株高 1-1.5 公尺，小枝密佈毛茸；葉橢圓形或長橢圓形狀卵形，先端尖銳，基部鈍而近似圓形，邊緣重鋸齒，中肋及側脈於葉背隆起，表面光滑，背面淡綠色而有毛茸；葉柄長 0.1-0.2 公分，也有毛茸。花多數且小，叢狀生長，像秋日原野盛開的小菊花，因而命名；白色，有時略帶粉紅，呈頂生的複繖花序，有柔毛；花梗長約 1 公分；花萼闊鐘形，5 裂，裂片闊三角形，內面光滑，外具毛茸；花瓣 5 枚，闊圓形，先端圓而略呈凹頭狀；雄蕊多數，伸出花瓣外，長約 0.4 公分；心皮 5 枚，略呈紡鎚形，長 0.2-0.3 公分，具毛茸；大多在六、七月間開花。", image: "台灣繡線菊")]

    var plant : Array<String> = [""]
    var image : Array<String> = [""]
    var idx : Int = 0
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell" //當初在Ｍainstoryboard的cell的indentifer為Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PlantTableViewCell
        cell.plantlabel?.text = plant[indexPath.row]
        cell.plantimage?.image = UIImage(named: image[indexPath.row])
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPlantDetail"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as! PlantDetailViewController
                if idx == 0{
                    destinationController.plant = plantdata0[indexPath.row]
                }
                else if idx == 1{
                    destinationController.plant = plantdata1[indexPath.row]
                }
                else if idx == 2{
                    destinationController.plant = plantdata2[indexPath.row]
                }
                else if idx == 3{
                    destinationController.plant = plantdata3[indexPath.row]
                }
            }
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
