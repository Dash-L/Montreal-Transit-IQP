// https://www.apta.com/research-technical-resources/transit-statistics/public-transportation-fact-book/

#import "utils.typ": *
#import "@preview/lilaq:0.5.0" as lq
#import "@preview/wordometer:0.1.5": word-count, total-words

#let in-outline = state("in-outline", false)
#show outline: it => {
  in-outline.update(true)
  it
  in-outline.update(false)
}

#let flex-caption(long, short) = context if in-outline.get() { short } else { short + long }

#set document(title: [
  Urban Mobility:

  A Case Study of the Montreal Metro
])

#set page("us-letter")
#show heading: set block(above: 2em, below: 1.5em)
#show heading.where(level: 1): set block(above: 3em, below: 2em)
#set par(first-line-indent: (all: true, amount: 2em), spacing: 1.5em)

#show figure: set block(inset: (top: 0.5em))
#show figure.caption: set block(inset: (bottom: .5em))

#{
  set page(background: image("images/Title Page.png"))
}

#pagebreak()

#set page(numbering: "i")
#set par(leading: 1.5em)


#align(center)[
  #set par(spacing: 1.5em)
  
  #text(24pt)[*Urban Mobility: A Case Study of the Montreal Metro*]

  An Interactive Qualifying Project Report submitted to the Faculty of 
  
  WORCESTER POLYTECHNIC INSTITUTE
  
  in partial fulfillment of the requirements for the Degree of Bachelor of Science

  \
  
  By:
  
  Luke Ciarletta
  
  Dashiell Elliot
  
  Jackson McLaughlin
  
  Dylan Stanley

  \
  
  #datetime.today().display("[month repr:long] [day], [year]")

  \

  Report Submitted To:
  
  Doctor Grant Burrier, Worcester Polytechnic Institute
  
  Professor Laura Roberts, Worcester Polytechnic Institute

  #v(1.5em)
  
  #image("WPI Logo.png", height: 1in)
]


#align(bottom + center, [
  #set par(leading: 1em)
    _This report represents the work of WPI undergraduate students submitted to the faculty as evidence of completion of a degree requirement. WPI routinely publishes these reports on its website without editorial or peer review. For more information about the projects program at WPI, please see https://www.wpi.edu/project-based-learning _
  ]
)

#pagebreak()

= Abstract

#word-count(total => [
  #{total.characters + total.words - 7}
  #{total.characters - 4}

Public transportation provides immense benefits for citizens. We focus on the metro system and urban mobility in Montreal, highlighting strengths and challenges to provide recommendations for Montreal and other cities. During our research, we reviewed the literature, interviewed experts, developed a survey, and conducted ethnographies. We find the metro overall exhibits the principles of a good transit system, including frequency, reliability, and sustainability. Additionally, it is well integrated in the community through artwork in stations and connections to other public spaces. However, it is in dire need of maintenance and faces service interruptions due to strikes. We recommend that Montreal invests more into transit-oriented development and provides more funding for public transportation. Other North American cities can learn from Montreal's unique stations that are well-connected to their surroundings.
  
])

#pagebreak()

= Executive Summary
Our research aims to understand the history of the metro and answer the question "What issues currently face the Montreal Metro system, and how can it be improved?". Specifically, we want to examine what makes a good transit system, understand the current performance of the Montreal Metro along with its strengths and weaknesses, make recommendations for the improvement of the metro, and see what other cities can learn from Montreal. These goals help us focus our project to convey the need for an effective public transit network and provide an objective way to deliver these considerations to relevant stakeholders. We developed a strong link with Trajectoire Québec, an association that promotes the interests of public transit users throughout the province of Québec. We hope this link blossoms into a future sponsorship.

Our project explores the effectiveness of the Montreal Metro system through many lenses, including traditional means of success and more abstract values. Traditional success refers to metrics focusing on things like timeliness, cleanliness, coverage, and sustainability. On the other hand, we found abstract meanings of success, like belonging, identity, and place, are often ignored by scholars, experts, and even riders. To remedy this shortcoming in the literature, we expanded our lens to appreciate the broader impact of metro on Montrealers. Throughout our research, we collected personal anecdotes and ethnographies of the metro, as well as rider feedback from semi-structured interviews and surveys. We interviewed urban mobility experts from local universities and leaders of transit-focused advocacy groups. Our findings are in this report and in interactive maps created using ArcGIS.

In our literature review, we explored the characteristics and public goods associated with superior public transit systems. We found that the benefits come in four main categories: emission reductions, health improvements, increased social connection, and stronger economic activity. Many of these benefits come from reducing car use and the fact that public transportation exists as an active part of social life and the economy, while personal vehicles are inherently anti-social. Principles of good transportation are split between conventional metrics of success and sustainability. Conventional metrics of success include reliability and efficiency as well as prioritizing transit oriented development (TOD) to positively affect the most people. Sustainability is the focus on environmental impacts as well as community and economic considerations. A comparative analysis of Montreal with other cities showed that Montreal manages a relatively high number of rides per capita for its density and the Société de Transport de Montréal (STM) uses its budget to efficiently transport passengers. Graphs of these two metrics are provided below.

#grid(rows: 2, image("images/rides_per_cap_vs_pop_density.svg"), image("images/pass_miles_vs_op_cost.svg"))

To carry out our research, we triangulated findings from a variety of research methods. Archival research served as a good tool for establishing the history and background of the metro. We were able to find blueprints of the stations, tunnels, rolling stock (train cars), and pictures of the stations soon after their construction. Semi-structured interviews also helped in getting a background on public transportation, specifically our interviews at WPI. The other interviews conducted helped us understand transit within the greater Montreal area specifically. Information includes strengths, weaknesses, coverage, future plans, and more. We asked for verbal consent to audio record and quote each interviewee. We strived to ask non-leading questions to minimize observer bias. Our surveys were made to gather public opinion on the metro system. We asked questions about cleanliness, frequency, and coverage among some contextual questions. No identifying information was gathered and we described our project and how data would be used in our research. Ethnography was used to form our own opinion on Montreal's public transportation. Throughout or time here we used a variety of methods of transit and took pictures of many stations and related places. We reserved judgment and focused on local voices as much as we could, as we are not from Montreal, and we are only here during the winter.

Our research has yielded several findings. We have learned about the history of the metro system, with a deeper understanding of the practical and political challenges surrounding its construction and development. We then examined how well Montreal demonstrates the principles of good transit we found while reviewing the literature. We also considered how metro stations serve as a "third place" for Montrealers with their distinctive artwork and connectivity to local businesses. Montreal's metro has many improvements currently underway that we looked into, such as the blue line extension and continued development of the Réseau express métropolitain (REM). Lastly, we examined the challenges currently facing the metro system, such as the critical lack of maintenance.

The metro was started construction in the 1960s, with the first stations opening in 1966. The planning and timing of the metro was heavily influenced by Montreal's hosting of the Expo 67 world fair in 1967. It was then expanded continuously over the following decades, with a notable expansion before the Montreal 1976 Winter Olympics. The metro serves as a point of pride for many Montrealers, in part due to its use of rubber tires inspired by the Paris metro, connecting Montreal to its French roots. The metro helped provide political legitimacy to Mayor Jean Drapeau, who approved and oversaw its construction and many of its expansions. The new REM light rail system is another avenue of expansion for public transportation in Montreal that provides high capacity transit to places the metro does not reach.

#figure(image("images/MetroTimeline.png", width: 8in), outlined: false)

The metro is a great public transportation system overall. As with any transit system, there are a few areas for improvement, but does the metro generally exhibit the principles of good transit? In terms of sustainability, the metro is fully electric, well integrated in the Montreal community, and well connected to other modes of public transportation, but lacks some funding. As for conventional success, the metro is generally efficient and frequent, especially during peak hours. There are incentives to use transit, especially for those in the downtown area, but there is potential for development that is not being utilized. 

The term "third place" refers to a social environment distinct from one's home or workplace. In his 1989 book, _The Great Good Place_, urban sociologist Ray Oldenburg emphasizes that third places are essential for civic engagement and fostering a sense of community. The Montreal metro, which serves approximately 1.1 million riders daily, naturally functions as a third place where many people find themselves between home and work. In response to this, the STM deliberately designs vibrant community spaces within its stations, featuring unique architecture, performance areas, and economic activities.

There are several projects planned or currently under construction to improve the metro and REM. The most significant of these is the blue line extension, which is adding five new stations to the metro network. This is set to be completed in 2031 despite budget overruns. Another ongoing project is the introduction of elevators, with 29 elevators currently installed and plans to make the entire metro system accessible in the future. The REM is also expanding to better cover the western side of Montreal and the city's airport.

The metro, despite being a useful and efficient method of transportation within and around Montreal, faces several challenges. One of the most significant issues it faces is the maintenance of its infrastructure. Almost half of the train cars in the metro are still using the MR-73 design, which is now more than ten years past its original 40 year lifespan, contributing to regular service interruptions. Many of the stations are also in need of maintenance, with nearly half categorized as being in poor condition. The REM suffers from similar reliability issues despite being new, discouraging people from incorporating it into their commute. These maintenance issues are largely due to the lack of allocated budget, which the provincial government has not been interested in increasing despite Montreal's requests. Another issue causing service disruptions is strikes, with multiple strikes from two separate unions over the past year that have caused metro service to be reduced or stopped entirely. Montreal's homelessness crisis has also had a major impact on the metro, with stations regularly being used as a last resort shelter which contributes to many passengers feeling unsafe.

Based on the findings and principles outlined in this case study, recommendations can be made for the city of Montreal, public transit in general, and other North American cities. While Montreal has been recognized as a remarkable example of good public transit, there is still room for specific improvement, as mentioned in the challenges. The Montreal Metro also requires improvements that other public transit systems could use as well, which are not specific to the city. While the metro system needs improvements that are tailored to Montreal and generic ones, the metro does excel in some areas, with lessons for other cities in North America to improve efficiently and tangibly.

/*
An important part of the FINAL PROJECT REPORT.  It appears after the ABSTRACT and provides a quick summary of the entire report in a few pages for readers who do not have time to read the entire report, Give  summarized essence of your project.  It should contain a little bit of every chapter in your paper, with an emphasis on results, analyses, conclusions and recommendations.  It should also contain key graphics and photos that express the most fundamental aspects of your report. You can copy and paste material from the main report to the exec summary, as long as you make it flow well. 

Here is a rough breakdown of a short Executive Summary (3-5 pages max excluding photos and graphics). But as always, adapt to your work and take some creative liberties:
		
INTRODUCTION (½ page)The rationale for the project (why it is important and why you did it). Reference the sponsor somewhere in the intro.List your Research Question and List of Objectives.
LIT REVIEW & METHODS (1 page)Summarize major takeaways from the lit review in 1 paragraph, also include a 1 paragraph summary of your methods, listing the methods you used and your ethical considerations.
FINDINGS/Results (1-2 pages)Typically an intro paragraph followed by Findings Statements with accompanying key graphics and very brief explanations.
CONCLUSIONS and RECOMMENDATIONS (½ pages)Intro paragraph followed by Major Outcomes and/or Recommendations with key graphics and brief explanations.
*/

#pagebreak()

= Acknowledgements
We would like to express our gratitude to our advisors, Professors Grant Burrier and Laura Roberts, for their support throughout the project. Their feedback and guidance was critical, both before arriving in Montreal and during our stay. We would also like to thank all of our interview subjects for the invaluable information they provided us and for making time in their busy schedules. Lastly, we would like to thank Trajectoire Québec and especially Brian Nash for the opportunity to attend their benefits lunch and hear from a panel of public transportation experts.

#pagebreak()

= Authorship


#align(center)[
  
INSERT PICTURE HERE (we'll get one next week)

From Left to Right: (fix order if needed)

Luke Ciarletta: Computer Science

Dashiell Elliott: Math and Computer Science

Jackson McLaughlin: Aerospace Engineering

Dylan Stanley: Civil Engineering

]
#pagebreak()

#show link: set text(blue)
#show link: underline

#outline(target: selector(heading.where(outlined: true)).after(outline), depth: 2)

#pagebreak()
#outline(
  title: "List of Figures",
  target: figure.where(kind: image)
)

#pagebreak()

#set page(numbering: "1")
#context counter(page).update(1)

= Introduction
At the fundraising lunch for Trajectoire Québec---an organization advocating for public transit and sustainable mobility throughout Québec---there is a buzz of excitement as academics, transit professionals, government officials, and reporters gather to discuss current projects and issues surrounding urban mobility in and around Montreal. From a US perspective, this is a refreshing change from the general distaste towards public transit outside of the densest cities, but even here there are debates around funding and policy.

Today, the majority of the world's population lives in urban areas. While this provides benefits for urban societies and the global climate, it also comes with the challenge of transporting many people in a dense space @ritchie_urbanization_2018. Our project aims to see how one specific city, Montreal, addresses this issue. With over four million inhabitants in its metropolitan area, Montreal needs extensive infrastructure to safely and efficiently move people around the city @spieler_trains_2021. Despite its existing public transportation network, 70% of Montrealers primarily commute by car @statistics_canada_main_2024. This reliance on personal vehicles has immense negative effects on urban areas: cars emit high levels of greenhouse gases and air pollutants, reduce safety due to crash risks, and contribute to health problems because of reduced physical activity. To make matters worse, traffic congestion is consistently a problem and makes the car an inefficient mode of transportation in peak times @taillandier_back_2023. Montreal's traffic is rated as the worst in Canada and among the worst 30 cities globally, with drivers losing an average of 63 hours every year to sitting in traffic @rabinovitch_heres_2025. Additionally, having car-centric infrastructure leads to land being used by vehicles that will sit idle and parked for the majority of the day, taking up entire areas of densely populated cities. Accommodating these cars also promotes wasteful development, prioritizing multilane highways, overpasses, and parking garages that create heat island effects, making cities less aesthetically pleasing and pedestrian-friendly @ibrahim_impact_2018. Public transit serves as a more sustainable alternative to reliance on personal vehicles, reducing the impact of many of these problems. The main public transit system in Montreal is the metro, which we have focused on for this project. Our research aims to understand the history of the metro and answer the question "What issues currently face the Montreal Metro system, and how can it be improved?"

While the practicality of _having_ good public transit is widely known, theories behind the best implementations vary widely and there is no one size fits all solution, especially considering the various cultural and political contexts of different cities. Montreal is an interesting case study for this problem because of how its transit performs compared to other North American cities.. Montreal is only the 12th most populous of the 16 largest Canadian and American cities, but it has the second highest ridership per capita. The city achieves this high ridership while having more affordable transit than many of the other cities, requiring fewer hours worked to afford a monthly pass than Toronto or New York. Montreal does this thanks in part to the government funding given to the Société de Transport de Montréal (STM), the organization that runs Montreal's metro and buses. 28% of their operating budget comes from transit fares, 33% from the municipal government, 23% from the provincial government, and 16% from other sources @artm_optimiser_2026. Most cities struggle to find a balance between the income generated from fares and the ability to provide service at an acceptable level, whereas Montreal is able to have both the third-highest rider satisfaction and the second-highest percentage of revenue paid for by fares @verbich_bang_2017. Montreal is a clear leader when examining the total value of public transit in North American cities, leading to the crucial need for the case study and report based on the results we found regarding the metro. Our field research gave us the opportunity to explore these trends in-person and obtain a more holistic understanding of the metro.

*Grant has a comment to maybe cut the last two paragraphs (but keep Trajectoire mention) and hit home why people should care and what they will learn by continuing to read*

The goals of our project are to examine what makes a good transit system, to understand the current performance of the Montreal Metro along with its strengths and weaknesses, to make recommendations for the improvement of the metro, and to see what other cities can learn from Montreal. These goals help us focus our project to convey the need for an effective public transit network and provide an objective way to deliver these considerations to relevant stakeholders. We have also worked closely with Trajectoire Québec, an association that promotes the interests of public transit users throughout the province of Québec.

Our project explores the effectiveness of the Montreal Metro system through many lenses, including traditional means of success and more abstract values. Traditional success refers to metrics purely about the state of the metro, including things like timeliness, cleanliness, and coverage. On the other hand, abstract means of success are aspects often ignored by riders or experts such as sustainability and decoration. To achieve this, we examined its current operations through personal anecdotes and ethnographies of the metro stations and the metro cars, as well as semi-structured interviews and surveys. We interviewed professors from local universities and leaders of transit-focused advocacy groups. To deliver our findings, we have written a detailed report and produced interactive maps using ArcGIS.

= Literature Review

Through a review of the available literature, we examined the benefits of public transportation and the principles of a good transportation system. We also compared Montreal to other cities to see why it is worth using as a case study, with a focus on cities in the US and Canada.

== Benefits of Public Transportation

Public transportation offers several benefits for urban areas and their residents. The four main categories we most commonly saw in the literature were emission reductions, health improvements, increased social connection, and stronger economic activity.

One of the most significant benefits of public transportation is emission reduction. #pc[@de_abreu_action_2023] specifically talk about the use of electric-powered transit instead of gas-powered transit, which can reduce carbon emissions and air pollution. When electricity is generated renewably, such as through hydropower, as it largely is in Québec, it provides a highly efficient and environmentally friendly energy source. A case study in São Paulo, Brazil found that on the day of a subway strike, the concentration of $"PM"_10$---harmful particulate matter less than 10 μm in size---increased by 75% over a similar day when there was not a subway strike @silva_evaluation_2012. This increase is almost entirely attributed to more cars on the road, as commuters had to find alternative modes of transport. 

Clearly, cars are a fact of the world we live in, but reducing their use by providing alternate methods of mobility is important for keeping dangerous emissions out of the air. Fewer cars on the road would lead to lower crash rates. It would also reduce the amount of space taken up from parking lots making the city more aesthetically pleasing and pedestrian friendly. #pc[@tran_smart_2021] discuss how driver behavior, traffic, and poor road networks can all cause congestion, adding more emissions. These problems are exacerbated when public transportation is not an option. 

#figure(caption: [Statistical benefits of lowering emissions @kcata_environmental_2025], image("images/emission benefits.png"))

Following the idea of public transit being beneficial for energy consumption and emissions, the American Public Transport Association (APTA) provides a technical report analyzing the emission outputs of public transit @dickens_2025_2025. They found that public transit emits 55% less carbon dioxide than a car and saves six billion gallons of gas annually. Over the past thirty years, heavy rail efficiency has increased by 22%, and light rail by 27%, furthering the notion that public transit continues to improve its benefit to energy consumption. The consumption of diesel as a fuel source has also been decreasing across all public transit methods, with increasing usage of biodiesel, hybrid, or electric vehicles.

Improved physical health is also a major benefit of public transportation systems. Transit networks promote walking and cycling (often grouped into active transportation), as opposed to staying in a personal vehicle for an entire trip. The beginning and end of a trip on public transportation often require some active transportation, promoting physical activity @srivastava_advancing_2025 @public_health_agency_of_canada_active_2014. A 2001 survey found that American adults who use transit as part of their commute spend 24 minutes per day walking. This is only six minutes short per day of reaching 150 minutes of physical activity over a five-day workweek, which is the World Health Organization's recommended weekly physical activity level, showing that using public transit can significantly improve health @sener_potential_2016. This active transportation can have a significant impact on health outcomes: inactivity has been directly linked to an increased risk of cancer, heart disease, hypertension, and type 2 diabetes, with up to 25% of breast and colon cancer diagnoses worldwide having physical inactivity as a primary cause @sener_potential_2016. Public transit is also significantly safer than car use: commuter rail has twenty times fewer deaths per passenger-mile than automobiles, urban rail thirty times fewer, and buses sixty times fewer @litman_new_2014.

In addition to these physical health improvements, there are significant social and mental health benefits associated with public transportation. One study in San Francisco found that as vehicle traffic on residential streets increased, fewer people attempted to cross the street and residents knew less of their neighbors; people living on heavy traffic streets had half as many friends and acquaintances on the other side of the street as people living on light traffic streets @adams_social_2000[p. 121]. Another study found that people living in more walkable neighborhoods felt more connected to their community, were more likely to have trust in people, and had higher levels of political participation @transport_canada_social_2006. These walkable neighborhoods are promoted by robust public transportation infrastructure that allows people to move around cities. Additionally, #pc[@reinhard_public_2018] speak on how social isolation is a major risk factor in depressive disorders in older age. Their study found that providing free bus passes for members of the public over 60 led to increased public transportation usage and social engagement. This engagement also decreased depressive symptoms and feelings of loneliness, improving overall quality of life.

#figure(caption: [Reduced street crossings and neighborhood connection as traffic increases @adams_social_2000], image("images/traffic-vs-crossings.png", height:5in))

Another major benefit public transportation brings to a city is strengthening the local economy, both directly and indirectly. One example of direct benefits comes from a study by #pc[@weisbrod_economic_2009], which found that for every billion dollars spent on public transportation, 36 thousand jobs were created, \$1.8 billon were added to GDP, and \$490 million of additional tax revenue was generated. Public transit also boosts the economy through increased land value. According to #pc[@tontisirin_measuring_2021], public investment near a plot of land is one of the main factors influencing its value in urban areas. Therefore, investing more into public transportation can increase land value across a city. This increase can then be used by the city through land value capture programs to fund future public transit projects. Tourism is another way that public transit can benefit local economies; good public transportation networks attract tourists and encourage them to spend more, which in turn gives cities more funding to invest in public transit @le-klahn_tourist_2015.

In addition to these direct benefits, public transit has several indirect benefits to an economy. These include a reduction in traffic congestion due to fewer people choosing to drive, which in turn has significant economic impacts on congested urban areas @chen_travel_2024. Furthermore, public transit provides an equitable alternative for people who are unable to drive or cannot afford to pay for a car and its parking. In the United States, more than half of public transit users make less than \$50k per year, which demonstrates the impact it can have on communities @dickens_2025_2025. The walking and cycling induced by transit also brings benefits. For instance, small businesses and shops around the area may draw the attention of pedestrians---even those not initially planning on shopping---which can help keep smaller businesses afloat.

#figure(caption: [Example of the benefits of public transit @city_of_albuquerque_transportation_2025], image("images/ways-to-drive-less-public-transit-benefits.png"))

Public transportation provides immense benefits across multiple areas. The reduction in emissions when using public transit compared to automobiles decreases air pollution locally and contributes to fighting climate change globally. Transit infrastructure incentivizes physical activity through active transit, improving health outcomes. It also strengthens community bonds and improves mental health, especially for the elderly. Lastly, it provides economic benefits through GDP growth, land value increase, and reduced vehicle traffic. These benefits combined make transit-oriented cities better places to live for all residents.

== Principles of Good Transportation

There are two main schools of thought in the literature discussing what features a good public transportation system has. The first of these schools focuses on the conventional success of a system. Within this school, #pc[@litman_evaluating_2025] considers four main ways to evaluate transit systems: increased service, improved service, transit use incentives, and transit-oriented development (TOD). Another author aligned with this school is #pc[@spieler_trains_2021], who examines several factors to consider when designing a transportation system, most of which are also mentioned by Litman. One aspect that both authors mention as being very important is urban density, which is required to make public transit useful and economically viable. This is also connected to Litman’s category of TOD, which is the practice of designing urban communities "to maximize access by public transit, with clustered development and good walking and cycling conditions" @litman_evaluating_2025[pg. 89]. TOD generally focuses on the quarter-mile radius that studies have found to be the distance that most people are willing to walk to/from a station @spieler_trains_2021. Prioritizing new development around transit stops, rather than exclusively building stops in already developed areas, allows for public transportation to be useful outside of urban cores and makes it easier to acquire land for new stations, since already developed land is difficult to build on. Additionally, it creates a positive feedback loop in which these new developments benefit from being accessible to the rest of the city, while the transit network is benefited by proximity to more housing and businesses, thus attracting more customers. Other focuses of this school include a transit system’s speed, frequency, reliability, and coverage.

The other main school, which includes Kennedy and Suzuki, focuses on the sustainability of transit systems. These authors consider the sustainability of a system to be as important or more important than conventional metrics like ridership or revenue. This focus is partially for environmental factors, such as reducing atmospheric fossil fuel emissions and air pollution in the city, and partially because these authors consider sustainability to be a prerequisite for conventional success. One of the papers in this school, written by #pc[@kennedy_four_2005], lays out four pillars to create a sustainable system: governance, financing, infrastructure, and neighborhoods. According to them, governments need to establish new organizations that integrate land use with transportation planning to avoid bureaucratic deadlock. Funding requires new mechanisms that ensure fairness, efficiency, and stability. Existing infrastructure needs to be retrofitted or entirely replaced with more environmentally friendly alternatives. This infrastructure investment needs to be accompanied by local, community-scale projects that focus on walking, cycling, and other accessibility-focused transit elements. Many of these ideas are reinforced by #pc[@suzuki_transforming_2013]. They consider changes that municipal governments can make to zoning laws to encourage pedestrians and cyclists in urban areas. Both authors agree that fostering more connections between land use commissions and transit planners is vital to allow sustainable developments to progress even if their main benefits are long-term. Similar to the conventional success school, both authors also see urban density as a necessary component of a transit system, with a focus on maximizing the quarter-mile radius around stations. However, due to the focus on sustainability, less emphasis is placed on things like reliability and frequency.

#figure(caption: [Pillars of sustainable urban transportation @kennedy_four_2005], image("images/sustainability-pillars.png", height: 4.38in))

Based on our observations, we decided to focus more on the conventional success school than the sustainability school. While making a sustainable system is important, Montreal and the STM are likely more interested in a system that is reliable and convenient to use. Additionally, focusing on a generally high-quality transit system to increase ridership still gives many of the passive benefits of sustainability, such as lowering emissions due to fewer people choosing to drive. However, we are still considering sustainability in our proposals, as it is important even if it is not our primary focus. If future research determines that Montreal is specifically interested in improving the sustainability of the metro, we could focus more heavily on the suggestions of the sustainability school.

== Montreal in Context
//https://www.apta.com/wp-content/uploads/2023-Q4-Ridership-APTA-Update-1.pdf

As the second largest city in Canada and one of the 15 most populated in North America, Montreal is an important case study for public transportation @allen_rail_2025. Montreal is also unique among otherwise similar areas due to its highly bilingual nature, with most residents speaking both English and French.

Using the "Rail Transit & Population Density" data from the University of Toronto's School of Cities @allen_rail_2025 we were able to compare Montreal's metro system to other rail transit systems in 279 cities around the world. Compared to other cities in the US and Canada, Montreal performs very well. One metric examined by this data is population density within 1km of rail transit stations; Montreal is third on this metric, behind only New York and Toronto. The city also has the third highest percentage of urban area within 1km of a station (behind New York and Chicago) and the fifth highest percentage of urban population within the same area. @vs_san_diego compares Montreal to San Diego, as the cities have similar population sizes and densities but different levels of transit infrastructure.

#figure(grid(
  image("images/montreal-vs-san-diego-map.png", width: 90%),
  image("images/montreal-vs-san-diego-stat.png", width: 90%),
  ), caption: [Montreal vs San Diego @allen_rail_2025]
) <vs_san_diego>

When comparing North American cities with their European counterparts, Montreal---along with most other North American cities---falls considerably in these rankings to 24th in population density within 1km of stations and 36th in percentage of both urban area and urban population within 1km of stations. This places it below the majority of European cities included in the dataset, with Montreal only scoring higher than seven European cities on percentage of urban population and five European cities on percentage of urban area. It is similarly outclassed by other global cities, particularly those from East Asia. The disparity between North American and other global cities is demonstrated in @na-vs-world, showing that New York is the only North American city in the top 25 globally. These comparisons make Montreal an interesting case study for public transportation; its North American peers can learn from it, but it can still take inspiration from European cities for improvement. @vs_rome compares Montreal to Rome for similar reasons as the comparison to San Diego.

#figure(grid(
  image("images/montreal-vs-rome-map.png", width: 90%),
  image("images/montreal-vs-rome-stat.png", width: 90%),
  ), caption: [Montreal vs Rome @allen_rail_2025]
) <vs_rome>

#figure(grid(
  image("images/rail-percentage-us-can.png", height: 40%),
  image("images/rail-percentage-all.png", height: 40%)
  ), caption: [Percentage of urban population within 1km of a rail station with only US and Canadian cities (top) and with all global cities (bottom)]
) <na-vs-world>

We have also performed a comparative analysis with more in-depth data from the US and Canada. Using data from the National Transit Database (NTD) for the American cities and the Canadian Urban Transit Association (CUTA) for the Canadian cities, we compared various statistics for cities in North America and their corresponding metropolitan areas and transportation systems. Both datasets come from 2023. Inspiration for the types of data analyzed and which cities to focus on came from the paper "Bang For The Buck: Toward A Rapid Assessment Of Urban Public Transit From Multiple Perspectives In North America" written by Verbich, Badami, and El-Geneidy of the Transportation Research at McGill (TRAM) group. We used many of their methods but found more recent statistics and included additional analysis. 

#figure(
  image("images/rides_per_cap_vs_pop_density.svg", width: 6in),
  caption: flex-caption([
    \
    Data for Canadian cities from Canadian Conventional Transit Statistics @cuta_canadian_2023.
  ], [Rides Per Capita vs Population Density (2023)])
) <rpc_vs_pop_density>

@rpc_vs_pop_density shows the population density for the metropolitan area containing each city compared to the number of trips taken per capita in the year 2023. Both of these statistics are calculated using the entire metropolitan area for each city (as defined by the relevant census), rather than their administrative boundaries. It also aggregates rides from all modes of transit and all transit agencies listed as belonging to each metropolitan area. One important thing to note when comparing the Canadian cities in red with the US cities in blue is that CUTA tracks linked trips (one trip may utilize multiple means of transit, such as a train and a bus) while NTD tracks unlinked trips (each new mode of transit is considered a different trip).

Our remaining data analysis will only examine the largest transit agency for each city, as determined by the TRAM paper or CUTA in the case of the Canadian cities. A list of these transit agencies for each city and its corresponding metropolitan area is provided in the annex in @metro_areas.

@pass_miles_vs_op_cost shows the number of passenger miles each city's transit agency reported compared to their total operating cost, with a trend line to demonstrate which cities perform better or worse on this metric. New York is excluded here, as it is a massive outlier in both dimensions and causes the graph to be difficult to read, however, it is more or less in line with the rest of the US cities.

#figure(
  image("images/pass_miles_vs_op_cost.svg"),
  caption: flex-caption([
    \
    Data for Canadian cities from Canadian Conventional Transit Statistics @cuta_canadian_2023.
  ], [Passenger Miles vs Total Operating Costs])
) <pass_miles_vs_op_cost>

Also inspired by the TRAM paper, we have the following affordability analysis, based on the number of hours of work at minimum wage needed to afford the monthly pass in the respective areas. Since some cities had multiple monthly passes, we generally chose the cheapest one because that made the most sense in Montreal and we did not have as much experience with some of the other cities to make more informed judgements. All of the data used to create the below graph can be found in @affordability in the annex.

#figure(image("images/affordability.svg"), caption: [Hours of work at minimum wage to afford the monthly pass in each city
])

From these analyses, we can see that Montreal---along with the three other selected Canadian cities---are relatively efficient with their budgets and have more rides per capita than most of the US cities. Montreal is on the cheaper side in terms of the price of the monthly pass, but its somewhat lower than average (in terms of the US cities) minimum wage puts it around the middle in our metric of affordability.

#pagebreak()

= Methods

The goal of this project was to identify what the metro does well and what challenges are facing it. To this end, we used various methods to complete our research. They were largely qualitative in design, as we went into as much depth as possible and captured the unique aspects of Montreal. We used a multi-method research design and triangulated findings from each method to increase the robustness of our observations and conclusions. Our main focus was archival research, semi-structured interviews, surveys, and ethnographies.

== Archival Research
Archival research was used in our analysis due to the accessibility of information and ability to create a foundation for in-field research. Archives provide easy access to a large quantity of information with a lower time commitment than some other methods @lune_qualitative_2017. They are often cheap or free to use, especially for university students, and are available both physically and digitally. Additionally, archives allow us to find information from many different authors in the field, showing if there is a consensus among experts or if there are several competing schools of thought. Despite these advantages, archival research also has several drawbacks. Peer-reviewed literature in archives can take years to be published, making the most up-to-date information inaccessible through this method. Additionally, there may be very little published information on a specific topic, and this information may be unavailable due to location or language barriers. Archives also may not be sufficient to combat selection bias (a selection of sources that is not statistically representative of the population) if researchers only examine sources from one perspective while ignoring others, especially those of marginalized groups @lune_qualitative_2017.

Using archival research, we gained a preliminary understanding of the historical reasoning behind the Montreal Metro's design and general design values for a good urban transport system. We used this method to understand the timeline and context of the metro system, giving us necessary background information for other research. We also used archival research while in Montreal to find niche information not available digitally, specifically through primary sources relating to the construction of the metro. Of the downsides to archival research, language barriers are particularly significant for our research. Many sources are likely to only be available in French, which none of our team members speak fluently. Only using English sources would be a major source of selection bias, so we used translation tools to access French sources as well.

Before going to Montreal, we used digital archives such as the WPI Gordon Library, JSTOR, and other peer-reviewed literature sources for archival research. These provided information about public transportation in general and some generic details about the Montreal Metro for use in our literature review. Once in Montreal, we made use of the physical archives at McGill University's public library and the Bibliothqeue et Archives National du Quebec, as well as online resources from newspapers such as CBC News, CTV, and the Montreal Gazette. These archives helped us gather information specific to the city's metro system, including historical information about its construction and any recent research into it. We used this information to get a better understanding of the people who created the metro system and the factors that shaped its development.

=== ArcGIS

We utilized ArcGIS Pro and StoryMaps to generate an interactive mapping tool with data from the 2016 Canadian Census for future project use. Population demographics from the census can be used to inform future contextualization  and data analysis of Montreal public transit. Population demographics were  given a graduated color symbology in order to make each parcel in the map have a unique color representing the data in the layer. Independent layers for the STL, EXO, RTL, REM, and STM, which were used to map the bus and rail routes, as well as the stops. Using these transit points, the buffer tool was employed to create zones around each station, thereby generating a coverage map of walking distances from public transit stops. The walking distance from each transit stop was calculated at an average of 4.5 kilometers walked per hour, resulting in 0.375 km across 5 minutes, 0.75 km across 10 minutes, and 1.125 across 15 minutes. Using the clip tool, all data was formatted to only include the boundaries of Montreal, Laval, and Longueuil. The data was then exported as a web layer and hosted on ArcGIS StoryMaps, and has been made publicly available in the annex.

== Semi-Structured Interviews
We used semi-structured interviews as part of our research to fill the gaps left by archival research, allowing us to provide concise answers to the questions that arose during the research process. Whereas archival research offers a peer-reviewed base of knowledge that takes time to update and change, an interview with an individual allows for a back and forth conversation @lune_qualitative_2017[p. 70]. Additionally, semi-structured interviews provide the knowledge necessary to use survey responses in a manner the researcher is familiar with from the practical information learned from the interview. While semi-structured interviews have their benefits, they can also promote bias from sourcing a singular person for all views on the topic at hand. We have strived to corroborate information learned in each interview with the others to mitigate this. Semi-structured interviews also have the disadvantage of being difficult to schedule as they require finding a time where the researchers and the experts are both available.

While at WPI, we interviewed several professors. The goal of these interviews was to help fill in the gaps in the literature and to provide more information on the metro or systems similar to it. We first interviewed Professor Lindsay Graff in the Civil, Environmental, and Architectural Engineering department. We then interviewed Professor Stephen McCauley from the Global School, who had advised a project similar to ours in Melbourne. Finally, we talked to Professor Suzanne LePage, also in the Civil, Environmental, and Architectural Engineering department.

In Montreal, we interviewed professors from Université Concordia, Université de Montréal, and Polytechnique Montreal; experts; and members of advocacy groups such as Trajectoire Québec. Our goal with these interviews was to understand how the metro came to be, what steps were taken for its creation, what draws in riders, and how it is sustained daily. Other information obtained would be what is lacking in the metro, and what procedures need to be followed to help improve the system. One limit of these interviews is that academics, and advocacy group members had to find time in their busy schedules. Another issue that arose is a language barrier as the interviewees mainly speak French. While this did limit our pool of potential interviewees, all experts we interviewed spoke both French and English, so we did not have any major issues.

Our first interview was with Professor Craig Townsend, who informed us about transit coverage and budget. Trajectoire Québec communications officer Brian Nash gave us general information on transit all over Montreal. Professor Jean-Philippe Meloche talked about transit-oriented development. Professor Pierre-Léo Bourbonnais discussed maintenance issues and future projects. Our last interview was with the coordinator of Association Québécoise des Médecins pour l’Environnement (AQME) Patricia Clermont, who informed us about sustainability and third places. 

During interviews, we took notes and recorded audio using a phone and voice memos. Most of us asked questions as one person recorded/took notes. We met WPI professors on campus at an agreed upon location. As for Montreal, we interviewed professors in their office, advocacy members at cafes, and at the metro stations. Equipment needed consists of our laptops for taking notes and reading off questions, and one phone for audio recording. We triangulated information gained from interviews and our other research methods to brainstorm a strategy to help improve the metro system @lune_qualitative_2017[p. 67]. We have included points acquired from interviews in our deliverables by referencing and quoting those we interview, anonymously if they so choose.

== Surveys
Surveys can be a useful tool in getting relatively large amounts of data when compared to other qualitative methods, if done right. They require less time and effort on our end as researchers than semi-structured interviews, and people are more likely to fill out a survey than commit an extended period of time out of their day for a full interview. On the other hand, even though filling out a survey is relatively low effort, many people are still likely to ignore surveys. Even if they do start filling them out, we have been careful to keep the surveys somewhat short so that as many people as possible finish them. A language barrier can also be a limitation for surveys in multilingual places or places where the researchers do not speak the primary language. One final downside is that surveys cannot capture the full complex perspectives people have and we will not always be able to anticipate concerns they may have in writing our questions @lune_qualitative_2017[p. 71].

With how many riders the metro has daily, we wanted to hear their opinions. While survey results are not guaranteed to be from a representative population, we can at least gather much more data, albeit at a more surface level. This may present selection bias, as people with stronger opinions are more likely to fill out the survey, but we hope that a broadly appealing poster and short survey can mitigate this issue. The bilingual nature of Montreal means that a survey in just English would miss out on the Francophone perspective. To combat this, we made the survey in both French and English. French is the primary language with English wording also included. To make sure the translation is good, we have verified it with a native French speaker at our hostel.

We collected information on whether people have generally positive or negative opinions on the metro in a few different areas: cleanliness, timeliness, coverage, frequency, and accessibility. Considering how frequently respondents use the metro also makes our data more useful, so we collected that and other contextual information. A full list of survey questions can be found in the annex.

To distribute the survey, we have put up posters around Montreal using community boards maintained by the city. These boards are generally cleared at the start of the month, so we only put up five posters near the busy Berri-UQAM station before February. Once the boards were cleared, we put up a total of 40 posters on boards nearby stops on the green and orange lines. We also put posters at our hotel, McGill University, and Concordia University. Our final method of distributing the survey was posting the link on the Montreal Reddit page and a few community Facebook pages. The survey was open for a total of 6 weeks and we received 37 complete responses. We also obtained survey data from the STM that included over 8,000 responses. While some of these questions were not as directly applicable to our research, this data was useful to access a larger sample size.

#figure(place(rect(width: 100%, height: 95.15%)) + image("images/Survey Poster.jpeg"), caption: [Poster that we placed around Montreal to advertise the survey])

== Ethnographies
While in Montreal, we performed field research by using and observing the metro system. This ethnographic research gave us useful insights into the operation of the metro that other methods could not fully capture, as it did not rely on third parties for information. It also centered the research process on ourselves, enabling us to learn about the metro system on a deeper level than other methods, and it gave us information to corroborate things we learned from other sources @lune_qualitative_2017. However, ethnography does have some drawbacks. Firstly, we did not always naturally come across the types of interactions or conditions that we were trying to find, causing our research to be potentially less useful than more targeted methods. Additionally, it is difficult to notice if we are getting unreliable information due to observer bias (the tendency to see what we want or expect to see, instead of what is really there) or coincidental factors beyond our control @lune_qualitative_2017[p. 119]. To minimize the effects of observer bias, we have made sure to take our observations with a grain of salt and recognize that our perspectives are necessarily those of outsiders, while the important perspectives are from Montrealers.

One way we gathered ethnographic data is by simply using the metro while in Montreal. As a group, we took the metro roughly 30 times. Some trips were for interviews, a couple were for putting up posters, and other trips were just to explore Montreal. This allows us to experience the metro in the same way as an ordinary Montreal resident, giving us the opportunity to perceive its strengths and weaknesses directly. This method is useful for observing factors like how frequently the metro arrives and how long we wait on average, how far we typically have to walk to and from metro stations, whether there are any areas of the city that are underserved by the system, what other modes of transport connect to the metro system, and any other observations we have about the metro from a user's perspective. We paid attention to the frequency of the trains at different times of day and how long trips between common points of interest took. In addition, we wrote down qualitative data like how busy the stations and train cars were and how difficult it is to plan a trip, along with what resources are available to make it easier. Although our perspective is likely different than that of Montreal residents, we also considered more subjective qualities like how much warmer it is in stations than outdoors, how clean the stations and train cars are, and how we would rate the overall user experience.

#figure(image("images/stm_metro_map.png"), caption: [Map of the metro system])

In addition to these trips for the purpose of travel, we have also taken some trips with the sole purpose of observation. We selected specific metro routes to take and tracked information about each. This included getting off of the metro at each station and seeing some of the nearby areas, as we combined this with placing our survey posters around the city. We prioritized higher-density areas for this research, but also travelled to some lower-density areas. We travelled along the entire orange line except the three stations in Laval, all green line stations from Berri-UQAM to Angrignon, and the blue line stations of Édouard-Montpetit and Université-de-Montréal. We also went to the two stations on the yellow line and a few stations on the green line towards Honoré-Beaugrand, but we did not put posters there. We took similar quantitative and qualitative records that we did for our regular travel, in addition to relevant notes for each route. This allowed us to answer specific questions relevant to each route that more general ridership may not be able to answer.

#figure(caption: [Berri-UQAM station @martins-manteiga_metro_2011], image("images/berri-uqam.jpg", height: 7in))

#figure(caption: [De La Concorde station @martins-manteiga_metro_2011], image("images/de-la-concorde.jpg", height: 7in))

We also had the opportunity to attend Trajectoire Québec's benefits lunch. The event included opportunities for networking, an announcement from Québec's transportation minister Jonatan Julien, a speech from President of the Montreal Chamber of Commerce Isabelle Dessureault, and a panel of experts discussing the benefits of public transportation in Montreal. While the event took place mostly in French, we were still able to gain insights from it. While networking, most attendees also spoke French, allowing us to have conversations with them. During the speeches and panel, we used several recording, transcription, and translation apps to supplement our limited French proficiency. Two of our interview subjects, Clermont and Professor Meloche, were panelists at the event, which gave us an opportunity to speak to them and ask for an interview. Professor Bourbonnais was also recommended to us by another panelist, Professor Catherine Morency.

== Ethics and Limitations
While our research is not particularly controversial, we have still taken steps to minimize any harm done by our work. The most significant ethical concern for our research is ensuring the privacy of our interview subjects and survey participants. We asked each interview participant if they are comfortable with their name being used in our report and if they would like to keep any of their specific statements anonymous or excluded from our report. For our surveys, we did not collect any identifying information on the participants to ensure the protection of their privacy. To ensure informed consent, we obtained verbal consent from all participants in our interviews after telling them how we planned to use their information. We also included a description of our research and how we planned to use participants' responses at the top of the surveys. To minimize observer bias in our surveys and interviews, we took care to design non-leading questions that allow for a wide range of responses. We acknowledge that we are not locals in Montreal, so we are likely to still experience some level of observer bias; our observations cannot be perfectly representative of the situation, and we made sure to reserve judgement and transmit local voices more than our own.

Due to the limited time we had to conduct research in Montreal, we are not able to interview or survey the vast majority of people who use, or are stakeholders in, the metro system. We attempted to get in contact with STM and Transport Action Canada, however we never connected with STM. As for Transport Action Canada, we tried to schedule an interview after receiving their email, but we got no follow up. Therefore, any of our conclusions may not be generalizable to the entire system and even less so to metro systems in other cities, but we are still able to capture the reality in Montreal reasonably well due to the triangulation of our various methods. Another limitation our project has encountered is the season in which we conduct our investigation. Our experience of the metro system during the winter is different from the summer, which we were not able to experience through ethnography. The metro is likely less clean in the winter due to people tracking in snow. There may also be more homeless people in metro stations, as it is too cold to be outside for long periods of time. This limitation is mitigated through our surveys, as respondents who live in Montreal year-round are more representative of conditions. 

// Finally, the language barrier has the potential to be a limitation for all of our methods, but we have outlined ways to mitigate this for each method.

#pagebreak()

= Findings

== All Aboard: The Creation of the Metro
// Dashiell

// - Timeline of improvements
// - Introduction of ARTM to combine STM + EXO + Laval + REM + etc.
// - Development of the REM
// - More about Jean Drapeau

Montreal's metro has a rich history spanning over half a century. A metro system for the city had been discussed as far back as 1910, but plans were interrupted by the economic depression of the 1930s and the Second World War @noauthor_metro_nodate @gilbert_subways_2015. A new proposal was made in 1953, but the city government was hesitant to approve its construction; many critics saw it as unnecessary in the age of the automobile and suburbanization. On the other hand, supporters argued that a subway could help revitalize the city's economy and reduce traffic congestion @gilbert_subways_2015. The success of Toronto's subway, which started operating in 1954, served as an example for the potential benefits of a new transit system while providing incentive for Montreal to build a subway system of their own to maintain their status as Canada's metropolis @noauthor_metro_nodate. The metro was approved for construction in 1961, with two of the three initial lines being built as planned, while the third was replaced with a line to service the site of the upcoming 1967 World Fair. The first 20 stations were opened on October 14, 1966, and the remaining stations of the initial lines were completed in the spring of 1971 @spieler_trains_2021 @noauthor_metro_nodate. Despite not being built for the World Fair, the system was completed just before it and gave the city a tool to demonstrate its modernity. This cultural effect was bolstered by each station having its own design and architect, allowing the metro to stand out for its aesthetics as well as its functionality @canadian_broadcasting_corporation_montreal_2016.

#figure(caption: [Tunneling during the creation of the orange line @martins-manteiga_metro_2011], image("images/orange-line-tunneling.jpg", height: 5.5in))

#figure(image("images/MetroTimeline.png", width: 8in), caption: [Timeline of metro expansions])

The metro has since seen several expansions, including the addition of a new line, which was completed in 1988, and most recently the expansion of the orange line to the suburb of Laval in 2007 @devaux_anticipation_2017. According to Professor Townsend from Concordia University, the project did go over budget, mainly due to unforeseen costs, rather than ballooning of expected costs. Stations have also seen some changes over time as ticketing and turnstiles have changed and modernized, but many of the original stations look remarkably similar to the way they did in 1971. @peel_then_vs_now is a photograph from the McGill Rare Books and Special Collections along side a recreation we took.

#figure(
  grid(columns: 2, image("images/peel_1971.png", height: 3in), image("images/peel_now.png", height: 3in)),
  caption: [Peel Station in 1971 @robinson_report_1971 vs Peel Station now]
) <peel_then_vs_now>

#infobox([History of the STM])[
  
The history behind the agencies in charge of public transportation in Montreal is long and complex. Before the metro there was a tramway. In fact, in 1861 the Montreal City Passenger Railway Company was created to design a horse-drawn tramway. In 1886, this became the Montreal Street Railway Company, which created the first electric tramway in Montreal. Then in 1911, the Montreal Tramways Company (MTWC) was created as a merger of all of the public transit companies on the island of Montreal @noauthor_company_nodate. The MTWC did push for a metro system, but public opinion of the tram was relatively poor in the early 1920s and 1930s, and elected officials were not confident that the MTWC could pull it off. Then in June 1951 the Commission de Transport de Montreal (CTM) was created by the provincial government to take over from the MTWC, but it did not have the direct power to create a metro. Instead, they prepared a report advocating for the creation of such a system and providing evidence that it was necessary @gilbert_subways_2015. The CTM did oversee the creation of the metro, and eventually became the Commission de transport de la Communauté urbaine de Montréal (CTCUM) which then became the Société de transport de la Communauté urbaine de Montréal (STCUM) and finally the STM @noauthor_company_nodate.
]

In addition to being a mode of transportation, the metro is a point of pride for many Montrealers. This can be attributed to its extensive service to the city and relatively efficient construction in terms of both time and money. As #pc[@magder_metro_2016] and #pc[@gilbert_subways_2015] say, a major influence on the Montreal Metro's construction was the use of pneumatic rubber tires, an innovation from France. This appealed to Montrealers, especially those of French descent, since it changed perceptions of the metro from another way to follow in America's footsteps to a piece of modern French technology. Additionally, they allowed metro to operate more quietly than if it had used steel tires @noauthor_french_1963. Professor Bourbonnais also told us the rubber tires allowed for the trains to go up much steeper inclines than steel wheels would have. Now steel wheel technology has improved to be able to handle steeper inclines and uses less energy than the rubber on concrete counterpart, but it would be far too costly and require long shutdowns to the entire system, so the rubber tires are here to stay. There is a general agreement amongst the sources that the metro was very modern for its time and served as a symbol of innovation for Montreal and Québec at large. While #ac[@magder_metro_2016] (the authors of an article celebrating the system) and the STM should be expected to have a positive bias, #pc[@gilbert_subways_2015] and #pc[@spieler_trains_2021] also praise the system's modernity. Today, the metro accounts for 45% of the STM's passengers and provides an underground backbone to the city's bus network @spieler_trains_2021.

#figure(caption: 
  [Rubber tires on a train undercarriage @martins-manteiga_metro_2011
], image("images/rubber_tires.jpg", height: 6in))

Adding on to practical and technological concerns, there were many political motivations behind the building of the metro system. As mentioned, one of the key ideas that contributed to the approval of the project was the use of rubber tires, which provided a connection to Paris's metro system. This design choice was made in the context of political and social changes in Québec during the 1960s, known as the Quiet Revolution @spieler_trains_2021. During this time, the new provincial government of Québec oversaw the modernization of infrastructure and institutions and an emphasis on the province's French identity. Jean Drapeau, the mayor who approved the construction of the metro, only did so after being convinced of its ability to boost national identity and pride @gilbert_subways_2015. There were also several political factors influencing the placement of the original stations and lines. The city was aiming to minimize disruption from the construction, limiting potential station placements that would heavily inconvenience local areas. Additionally, the municipal government's unwillingness to adopt changes proposed by neighboring municipalities prevented it from expanding outside the bounds of the city @gilbert_penser_2014.

*Mention that he originally wanted to build highways everywhere (from Grant video)*

#infobox([
  Jean Drapeau

  1916-1999
])[
  Jean Drapeau was mayor of Montreal for a total of 29 years over two non-consecutive terms, first from 1954 to 1957 and then from 1960 to 1986 @mckenna_jean_2011. The metro was only one of his major projects. He also oversaw Montreal hosting the World Exposition of 1967 and the Summer Olympic Games in 1976. He was a somewhat ruthless politician, going so far as to say "democracy is not a system of public participation, but a system by which one chooses one's leaders" (translated). Amid hysteria during the 1970 Québec kidnapping crisis, Drapeau's main opponent along with over 400 others were arrested, and Drapeau won an election that year in a landslide. Former British prime minister Edward Heath wrote about meeting Mayor Drapeau and hearing his thoughts on "how to gain and keep power through the manipulation of friend and foe alike." Despite all that---or perhaps because of it---Montreal seemed to really like him, reelecting him in 1978 and 1982 as well @mckenna_jean_2011. In 2000, the station on the yellow line between the main Montreal island and Longueuil was renamed in honor of Jean Drapeau and he has left a lasting legacy throughout Montreal.

  #figure(grid(columns: 2, image("images/Expo67.png", height: 3in), image("images/jean-drapeau.jpg", height: 3in)), caption: [Left: Expo 67 sign @drapeau_expo_1963, Right: Jean Drapeau speaking @drapeau_first_1961])
]

This contributed to one of the major weaknesses of the metro: its limited support for suburbs. While there are some connections through bus routes and the province's commuter rail system, downtown Montreal contains the vast majority of public transportation access. This is partially due to a lack of funding, as Montreal, neighboring municipalities, and the provincial government are all hesitant to invest in these connections @spieler_trains_2021. This weakness has been known about for decades, and a major improvement was made with the extension of the orange line into Laval @devaux_anticipation_2017. This extension provides a good case study to determine how the metro interacts with the economy of Montreal and Québec at large, which is exactly what #ac[@devaux_anticipation_2017] did. While they found that "from a global perspective (all stations combined), no significant effect [on property value] is observed," they did see positive effects localized around one particular station, and speculated that there may have been a larger effect on commercial properties @devaux_anticipation_2017[p. 17].

#infobox([Regenerative Braking])[
The metro system has made use of regenerative breaking. Since the system is all electric, regenerative braking adds a way to help regain some of the energy lost. For regenerative braking to happen, the motor of an electric vehicle acts like a generator. this allows the created torque from braking to generate electricity. The generated energy can feed right back into the vehicles batteries. It has the potential to save between 8% and 25% of total energy usage @schwarz_benefits_2021.
]

The metro has never stood completely on its own, relying on Montreal's other public transit to feed passengers into it from all extents of the island. Within the past few years, a new train line called the Réseau express métropolitain (REM) also connects to the metro. The REM itself is not a part of the metro, but it is integrated into the metro stations and serves a similar purpose to the metro. According to Brian Nash from Trajectoire, the south branch of the REM, which goes to the suburb of Longueuil, started operating around two years ago, and the north line passing through Laval opened November 17th, 2025 @radio-canada_panne_2026. From our interviews with Professors Townsend, Meloche, and Bourbonnais, we heard the REM referred to as everything from metro to light rail, with the compromise of light metro sometimes being used. The type of rail is not the only thing that makes it unique either: it is funded by a public-private partnership between the government of Québec and Caisse de dépôt et placement du Québec (CDPQ), a pension fund @yuen_how_2025. Professor Meloche also told us that this pension fund is owned by Québec, so it is really a way for the provincial government to fund the project without increasing public debt. Due to this unique funding setup and the fact that critical infrastructure like the Mont Royal tunnel could be reused the REM was able to be built for only \$140 million per kilometer, an incredibly low cost compared to other similar transit projects in North America @yuen_how_2025. The REM has not been all sunshine and rainbows, and two additional branches are still under construction, but we will leave those discussions for later sections.

== Montreal on Track: How the Metro Exhibits Principles of Good Transit  

We have found the metro to be a very good transportation system overall. To evaluate this more rigorously, we wanted to return to the principles of good transit we explored earlier to see if Montreal follows them. We specifically looked at the conventional success school's practicality-focused metrics and emphasis on transit-oriented development (TOD), followed by the sustainability school and its pillars of urban transportation.

The lens of conventional success is chiefly interested in numerical metrics to evaluate a transit system. The main metrics we considered were efficiency, frequency, reliability, and coverage. Speed, which concerns total travel time rather than the top speed of vehicles, is quite good. Trains take one to two minutes to move between stations and only stay at stations as long as necessary for all passengers to board. Almost all stations also have multiple exits, which allows commuters to go in the direction of their destination without needing to double back. The trains are also frequent, with trains as often as every two minutes during peak hours and no longer than ten minutes between trains. We very rarely felt that we were waiting too long for a train during our visit, even when we just missed the previous one. Some stations also have screens that display the time until the next train arrives, which helps make the wait feel shorter. These wait times are also visible though GPS systems like Google Maps. The metro is mostly reliable, with trains arriving near their scheduled time. There are some interruptions, but these usually only last a minute or two, with longer issues being rare. This is elaborated on more in our discussion about challenges. Lastly, the coverage of the system is somewhat mixed but overall it is quite good. The downtown area is covered very well, with the orange and green lines running parallel to provide short walking times. However, coverage falls off significantly as you get further from the city center. Many of our survey respondents agreed with these assessments: the characteristics of frequency and reliability received 4.2 stars out of 5 on average.

#figure(
  grid(rows: 1, columns: 2,
    image("images/Bus Distance.jpg"),
    image("images/Rail Distance.jpg"),
  ),
  caption: flex-caption([
    \ Left: Bus coverage (area within 5 minute walk of a bus stop) 
    \ Right: Rail coverage (area within a 5/10/15 minute walk of a metro, REM, or commuter rail stop) ], [Separated bus and rail coverage])
)

#figure(caption: [Combined bus and rail coverage], 
  image("images/Total Distance.jpg", height: 3.9in))

We also considered how well Montreal implements TOD. This is vital because even if transit is fast, extensive, reliable, and frequent, people will not use the service if it is difficult to reach anything using it. Professor Meloche specializes in TOD, so he gave us lots of useful information on its use in Montreal. He said that the RÉSO (also known as the Underground City) is quite useful for this, as it connects many businesses to metro stations and allows for indoor travel during the winter. Additionally, he mentioned the utility of having nearly all parking in downtown Montreal be underground. This was mainly done to make streets look nicer, but it also frees up space for pedestrian-focused streets. However, Montreal also has many areas to improve its TOD. Professor Meloche highlighted the eastern section of the green line (towards Honoré-Beaugrand) as one of these areas; despite being built nearly 50 years ago, it still has very few pedestrian-centered areas near stations. Additionally, he discussed how the REM was not designed with TOD in mind. Many stations were built in the middle of divided highways to reduce land acquisition costs, but this makes it virtually impossible to develop the land directly outside the stations. The REM stations that were built in areas that were easier to develop also do not take advantage of the opportunity for TOD. Since the REM was built very quickly and without much discussion between CDPQ and local municipalities, local governments were not able to make zoning changes to go along with the station construction. Professor Meloche hopes that the upcoming blue line extension will improve upon this and integrate the development of nearby areas into station construction. Brian Nash and Professor Bourbonnais agreed with many of these points, adding that the STM recently gained the power to build and own residential buildings, which they will hopefully use for the blue line extension and apply retroactively to areas around other stations.

The urban planning YouTube channel Not Just Bikes also discusses TOD and urbanism in his review of Montreal. He says that some places in Montreal follow good urban planning principles with easily walkable streets and plentiful bike lanes. However, these well designed areas are contrasted by the numerous car focused areas in the city. These are often very close to pedestrian areas, creating stark contrasts he refers to as "walkable islands". One example of this is in the Plateau Mont-Royal borough, where someone can safely walk or bike on one street but cannot go one or two blocks further without being met with a multi-lane, car-focused street. One cause for this is the autonomy of municipalities on the island of Montreal and of boroughs within the city of Montreal. One borough may be able to build pedestrian-friendly streets without requiring the approval of the entire city, while a neighboring borough may not build any. Not Just Bikes also calls attention to the way that land directly outside stations is developed. Many stations do not make use of the increased value of land near stations to build businesses or housing. Instead, they have major roads or highway exchanges immediately outside the doors. These stations include Longueuil Université-de-Sherbrooke from our own experience and Namur from Not Just Bikes' experience @not_just_bikes_i_2023.

#figure(image("images/montreal-borough-map.png"), caption: flex-caption([, with the boroughs of the city of Montreal colored darkly and the other cities on the island colored lightly @noauthor_limontreet_2010.], [Map of the Island of Montreal]))

In addition to these conventional principles, we also wanted to consider the sustainability of the metro system. One way to evaluate this is to examine the carbon emissions it generates. These emissions are very low: only about 15g of CO#sub[2] per km, about ten times lower than automobile travel @2727_coworking_montreal_2025. The metro is able to do this because it is entirely powered by electricity. However, just being electric is not enough to reduce emissions; as we learned from our interviews with Professors LePage and McCauley, electricity also needs to be generated by renewable sources. Thankfully, 94% of Québec's electricity is generated by hydro power, with less than 1% coming from fossil fuels @canada_energy_regulator_quebec_2026. 

When talking about sustainability, we want to look at governance, financing, infrastructure, and neighborhoods. Cooperation regarding the metro system involves both ARTM management and government support at multiple levels, helping to promote a more robust metro system within Montreal. Since the Montreal Metro cannot cover all of the metropolis, other means have to cover the slack, such as the bus networks managed by the STM, RTL, STL, and EXO, and the REM and EXO commuter rails. However, all these services work together under the ARTM through reallocation of government funding to provide a seamless transit system, both physical and economic. Government support for a unified public transit network helps contribute to a system that better serves the population through the interest of the provincial and municipal governments, along with the Chamber of Commerce of Metropolitan Montreal. Riding the metro, buses and REM is not free. All three require the use of the OPUS card. The opus card is a tap scan for all stations, metro, REM, and when you get on a bus. You can buy passes at machines located at metro stations, or through the Chrono App, you can buy passes on your phone. Which fares you purchase depends on location. There are four zones, A, B, C, and D. Zone A is the island of Montreal, B is just off at suburbs like Longueuil and Laval, Zone C and D are even further out. 

#figure(caption: [Map of the ARTM fare zones @noauthor_area_nodate
], image("Zones map.png", height: 3.9in))

Now let us talk about infrastructure and neighborhoods. One of the main reasons the Montreal Metro is so successful is its seamless multimodal approach to public transit and extensive operational coverage, all in tandem with other agencies beyond the STM. The metro covers most of Montreal, with other systems like buses and the REM to cover the lacking areas. The REM covers most of the western part of the island, with buses running further out as well. Professor Townsend stated that the eastern part of the island does not have as much coverage. It is also a more suburban area, but many households do not have a car, forcing them to rely on lackluster public transit. The farthest metro stop is the end of the green line and future blue line extension, with buses making up the rest. With the help of other transit systems, most neighborhoods have access to some means of transportation. One way this is achieved is with bus terminals at certain stations, such as Côte Vertu, Longueuil, and Atwater. With the amount of bus stops, metro, and REM stations throughout Montreal, most of the island has accessibility to transit within a 5-10 minute walk. In addition to the metro's good coverage, it also has good looks. All metro stations are built differently. Each station has a unique look, and some have art on display. With how interconnected the stations are with surrounding buildings, it creates a whole new space for more than just transit. 


== More Than a Turnstile: Stations as a Third Place
The term "third place" refers to a social environment distinct from one's home or workplace. In his 1989 book, _The Great Good Place_, urban sociologist Ray Oldenburg emphasizes that third places are essential for civic engagement and fostering a sense of community @oldenburg_great_1989. The Montreal metro, which serves approximately 1.1 million riders daily, naturally functions as a third place where many people find themselves between home and work @stm_rapport_2024. In response to this, the STM deliberately designs vibrant community spaces within its stations, featuring unique architecture, performance areas, and economic activities.

The original metro stations were designed with a focus on distinctive architecture and artwork, rather than bland, modular designs. According to the STM, having unique stations enhances the urban environment, creating a harmonious, attractive, and sustainable atmosphere. Since the late 1970s, any public building financed by the Québec government has required that approximately 1% of the construction budget be allocated for artwork by a Québec artist. The Ministry of Culture and Communications has announced artists for five new stations on the Blue Line extension, ensuring that each station will reflect local artistic voices. This commitment to unique design and artwork enriches the customer experience and transforms each station into a vibrant cultural space, making the metro a memorable part of daily life.

The STM also encourages community gatherings and performances in its stations by providing designated performance areas, commercial kiosks, and opportunities for fundraising and handouts. More than 50 signs featuring a lyre indicate busking locations throughout the Montreal Metro system, allowing performers to reserve 90-minute slots. Applications for special exceptions to perform in non-designated areas, such as metro cars or buses, are also accepted. Additionally, vendors can set up booths in larger stations like Berri-UQAM, and individuals can engage in photography, filming, handing out samples, or fundraising in accordance with established guidelines. By offering these opportunities, the STM fosters an inviting and lively atmosphere that promotes social interaction, turning the metro stations into vibrant community spaces throughout the day. A specific busker in Berri-UQAM even said he performs for the love of music and chooses the metro due to the people, atmosphere, and that there is a provided space to perform.

#figure(caption: [Lyre symbol found at performance locations
], image("images/musiciens_du_metro_eng_690x150.png", height: 2.25in))

Moreover, the metro stations serve not only as transit hubs but also connect various buildings through the RÉSO, or Underground City. This network comprises shopping centers and metro stations along the green and orange lines, extending over 32 kilometers, featuring around 4,000 shops, and including 60 buildings. It creates a walkable network that facilitates foot traffic and metro access. The Underground City improves connectivity in downtown Montreal, reduces walking distances, provides year-round climate protection, and increases accessible public spaces. Consequently, the RÉSO enhances community and social interactions by linking people and opportunities. This extensive network of public spaces associated with the metro transforms it into a third place---an environment that offers more than just a waiting area for transit. Even though the private sector does not intentionally view the metro system as a third space, it still contributes to the sense of community through its interconnectedness. In an interview with Patricia Clermont, she spoke about the "conviviality" of Montrealers that contributes to the feeling of stations as third places. #text(red)[TODO GET QUOTE (?)]

A "third place" is essential for fostering a sense of belonging and social connection within the community, providing a location for gathering outside of home or work. Montreal exemplifies how intentional transit development can create such third spaces within its metro stations and their integration into the surrounding area. Mrs. Clermont further mentions that many festivals and events in the downtown area often use the metro and its connections as a forum for more than travel. She also states that Québec as a society is less focused on class and wealth so these areas are places anyone can enter with little no cost furthering the community oriented nature of the metro stations. By making the metro feel familiar and community-oriented, more people are encouraged to utilize public transit. 

#figure(caption: 
  [Map of the RÉSO @belanger_branding_design_ltee_reso_2009
], image("images/reso-map.png", width: 80%))


== Next Stop: The Future of Transportation in Montreal 
//For future - try to find more non-STM sources that provide a less positive take?
// - REM expansions
// - Pink line and Tramway/BRT

There are many improvements to the Montreal Metro currently being constructed or planned. STM hopes that these will help the metro reflect the qualities of a good transit system, such as reliability, accessibility, and urban connectedness. These improvements include the expansion of a line and addition of new stations, accessibility upgrades to stations for people with disabilities, and plans for new public transportation infrastructure, which all work to promote a better future for public transit in the city.

The largest ongoing project related to the metro is the blue line extension. This expansion is adding five new stations over six kilometers of track to the eastern section of the blue line. The STM is also planning to construct supporting infrastructure in the surrounding area. This includes two new bus terminals, a tunnel connecting to the existing Pie-IX bus rapid transit system, and a pedestrian walkway to allow accessibility under a nearby highway @noauthor_blue_nodate. While this will provide much better transit connectivity to the lower income area (see @map_hhi) that has been historically underserved by transit, it comes at a large cost. According to Professor Townsend, the project has gone over budget and is now estimated to cost over \$1 billion per kilometer, higher than any other project in the metro's history. Professor Meloche added that it will cost more to construct those five stations than it did to construct the entire original metro network, although many of the increased costs come from improved worker treatment and safety. The project is expected to be completed in 2031, with an estimated 69,000 daily users once it is operational. Three of the new stations will be named in honor of influential women in Québec's history, with another being named after the Haitian Battle of Vertières in a tribute to the Haitian community in the area @cabrera_new_2025.

#figure(image("images/blue-line-extension.jpg"), caption: [Blue line extension in relation to nearby metro lines @cbc_extension_2016])

#figure(image("images/Average HHI.jpg", width: 80%), caption: [Average household income across Montreal]) <map_hhi>

Another ongoing project is the addition of elevators to metro stations. As the majority of stations were constructed decades ago when elevators were not included in building plans, it is difficult to find appropriate spaces to put them in stations. Despite this, the STM is working to eventually have elevators in all stations, which follows their stated commitment to integrate universal accessibility into their projects @noauthor_universal_nodate. Currently, 29 stations are equipped with elevators, with new elevators in the Édouard-Montpetit station expected to open in April 2026 @noauthor_edouard-montpetit_nodate. These elevators make the metro accessible to passengers with disabilities or who are carrying strollers, and makes it easier to use for all passengers.

The REM network is also still being worked on. The branch towards Anse-à-l'Orme, providing transit access to western Montreal, is set to be completed in Spring 2026. The A2 line, which will provide a critical link from the airport to downtown Montreal, is scheduled to be completed in 2027 @rem_work_nodate. Currently, the only link for passengers from the international airport to the rest of the city is the 747 bus line, which is slowed down by car traffic and frequently overcrowded. These new branches will hopefully be able to avoid the maintenance issues that currently plague the north branch. In addition to this network, there was a second planned REM network to be built in eastern Montreal called REM de l'Est. It would have been disconnected from the first REM but connected to the metro through the green line and the blue line extension. However, due to concerns about its effect on the skyline of the area and noise pollution that Clermont told us about, the project was cancelled in 2022.

#figure(image("images/rem_full_map.jpg"), caption: [Map of the full REM network with existing metro and commuter rail lines @rem_maps_nodate])

A more ambitious project was the addition of an entire new pink line, which was planned to travel from Montréal-Nord through downtown Montreal, ending on the southern end of Montreal island @henriquez_pink_2021. Unfortunately, this project was a campaign promise of the previous Plante administration that was never realized. The professors we interviewed and Brian Nash all told us that the project has pretty much become abandoned, and there is not much hope it will be picked back up in the foreseeable future. Another metro expansion project that may have more hope of coming to fruition is the addition of more stops on the orange line in Laval, with the potential to transform the line into a loop @cbc_news_laval_2025. Additionally, a tramway in East Montreal that would provide more transit access to the area is in early planning stages. There seem to be varying levels of hope around the tramway, with Professors Meloche and Bourbonnais saying it would likely wait on the successful implementation of a tramway project in Québec City first.

#figure(image("images/orange_line_loop.png"), caption: [Proposed orange line extension in Laval @ouellette-vezina_prolongement_2025])

With all these examples in mind, it is clear that the STM is striving to provide the best public transportation service they can by making conscious decisions to promote accessibility, reliability, and coverage. By expanding the Blue line, the thought of increasing service to better the Montreal Metro system is shown through the efforts of the STM. Especially with the Blue line going into dense neighborhoods, it serves as a terminal to connect and grow ridership to the rest of the downtown cityscape. The general quality of life upgrades also serve to benefit the public and increase accessibility to its users, and allow for more individuals to take part in the service offered by the metro.

== At a Crossroads: Challenges Facing the Metro

/* ORGANIZATION
- Intro/examples of disriptions
- Rolling stock
- Stations
- REM
- Strikes
  - no service nov 1
  - reduced service nov 2-14
  - strike just averted nov 15-16 to shut down all service
  - overtime strike reduced service
  - no service strikes from drivers/operators union, reduced service strikes from maintenance union (Syndicat du transport de Montréal)
  - strikes have to be approved by Quebec labor tribunal
  - new Quebec law gives them the power to intervene
  - main sticking points are salaries and subcontrating
- Homelessness/security
- Why no fixes ("red tape syndrome" (Brian/Pierre-Leo), budgetary constraints)
  - CTV mentions maintainence budget decrease
- TOD issues (?)
*/

The metro, despite being a useful and efficient method of transportation within and around Montreal, faces several challenges. One of the most significant issues it faces is the maintenance of its infrastructure, which lacks the necessary budget to fix its frequent service interruptions. Other challenges to be addressed include recent strikes that disrupt service and concerns around safety and the homeless population.

Potentially the largest issue facing the metro system is the lack of maintenance. Some of the rolling stock and many of the stations are in disrepair, leading to regular disruptions that will only become more frequent and last longer if action is not taken. A particularly prominent instance of this occurred in October of 2024, when the blue line stations of Fabre, D'Iberville, and Saint-Michel were closed due to safety concerns, with Nash saying the station was "an actual danger". Fabre and D'Iberville were re-opened after seven days, while Saint-Michel remained closed for 6 weeks @dubreuil_nearly_2025 @carvalho_measuring_2025. A shuttle bus service was implemented to replace the metro while it was out of service, but it struggled to meet the demand, with some simply choosing to drive instead @ould-hammou_3_2024. Another disruption that occurred during our stay saw the entire metro system shut down for over an hour due to a communications issue, which was likely caused by ongoing construction at Berri-UQAM station @cbc_news_montreals_2026.

The rolling stock used in the metro is one of the main contributors to this need for maintenance. The older of the two models of train cars still in use, the MR-73, is now over 50 years old, exceeding its original life expectancy by ten years @olson_montreal_2025. These are the second oldest metro cars still in use anywhere in the world, according to Brian Nash. Some of these cars were replaced with the introduction of the new AZUR trains from 2016-2021, but there are still 423 in use @stm_azur_nodate. Maintenance issues associated with these cars are responsible for many of the system's shutdowns, particularly on the green line where they are still used during rush hour. Mayor Valérie Plante said that replacement needs to start now for them to be complete before the cars reach their extended life expectancy of 60 years. She asked the government of Québec to contribute \$40 million to begin the process, but this request has not yet been fulfilled. If approved, it would contribute to an ongoing project to bolster jobs through infrastructure investments across the province, as the train cars are manufactured in Québec @olson_montreal_2025.

#figure(
  image("images/MR-73.jpg"), 
  caption: [MR-73 train car in use during our stay]
)

Another factor contributing to the service disruptions is the condition of the stations. Most of the metro stations are 50-60 years old, but they are not receiving the level of maintenance required for their age. A 2025 report from the STM showed that 5 of the network's 68 stations are in very poor condition, with a further 26 in poor condition @dubreuil_nearly_2025 @gouvernement_du_quebec_budget_2025. Among those in poor condition are the high-traffic hub stations of Snowdon, Jean-Talon, and Henri-Bourassa where closures would impact a large number of passengers. While we have not been able to see evidence of disrepair in the worst rated stations, it is likely that the problems are structural and therefore less visible to the average passenger. However, we have noticed a large amount of construction, with several closed entrances or blocked-off areas of stations. Issues in all parts of stations such as the rails, roofing, and stairways regularly cause stations to be closed or service to be temporarily disrupted. While these interruptions are usually short, a continued lack of repair could result in more closures lasting days or weeks @dubreuil_nearly_2025.

#figure(
  grid(rows: 2, columns: 2, column-gutter: 5pt, row-gutter: -6pt,
    image("images/Peel-Closed.jpg"),
    image("images/Atwater-Closed.jpg"),
    image("images/Berri-Yellow-Pipes-Square.jpg"),
    image("images/Funnel.png")
  ), caption: flex-caption({
    [
      \ Top-left and top-right: Closed station entrances \
      Bottom-left: Exposed pipes at Berri-UQAM station \
      Bottom-right: Missing rain funnel at Namur station]},
    [Stations with closed entrances or other issues],
  )
)

In addition to problems with the metro, there are also several reliability issues with the newer REM. The REM, especially the northern A4 branch that opened in November 2025, has gained a reputation for being unreliable; one in every four days since it opened has seen a disruption of 20 minutes or longer @radio-canada_panne_2026. While we have not been directly affected by these reliability issues, we have been able to observe public attitudes towards the REM. While we were waiting for a train to arrive, a fire alarm went off in the station, which was ignored by the other passengers including a REM staff member. These issues may discourage passengers from relying on the REM for their daily commute, pushing them towards car usage if other public transit is unavailable or too slow.

The STM and the Montreal government are aware of these issues, so why have they not been fixed? The primary reason is budgetary constraints. The STM says it needs \$585 million over three years to avoid worsening shutdowns and says it has a total asset maintenance deficit of \$7 billion @dubreuil_nearly_2025 @lapierre_stm_2026. Most of this money likely needs to come from the provincial government, which provides a large portion of the STM's total budget, including most funds intended for maintenance. Despite the city's request for an increase in maintenance funds, Québec's 2025 budget reduced maintenance funding by \$258 million, putting infrastructure in a dire situation @dubreuil_nearly_2025. Brian Nash said that this lack of funding was due to the tendency for governments to be more interested in opening new projects than maintaining existing ones. He referred to this as "red tape syndrome", saying that many people "don't care about maintaining our infrastructure, but we love to cut red tape on new shiny toys". Professor Bourbonnais agreed with this, adding that it is a common issue across North America for transit agencies to prioritize their budget in this way. Nash also mentioned that the opening of the REM adds even more pressure on current operational funding, especially due to its frequent disruptions that require urgent fixes.

#figure(image("images/Construction-Site.jpg", width: 70%), caption: [Ongoing construction at Édouard-Montpetit station])

Another cause for service interruptions on the metro are strikes. The past year has seen four strikes from the Syndicat du Transport de Montréal, a union representing transit maintenance workers, with a fifth set to begin shortly after we leave in March. The most recent of these, from December 2025 to January 2026, saw no direct impact on service hours while employees did not work overtime. Previous strikes in June, September, and November of 2025 saw service reduced to peak hours only, with the November strike reducing metro availability for two weeks to 6:30–9:30 a.m, 2:45–5:45 p.m, and 11 p.m.–close @magder_another_2026 @north_montreal_2025. The Syndicat Canadien de la Fonction Publique, which represents bus drivers and metro operators, also recently went on strike on Saturday November 1st, their first in nearly 40 years. This halted all bus and metro service, while another strike that was planned for November 15th and 16th was cancelled thanks to a tentative agreement between the union and the STM @yanez-leyton_what_2025 @lofaro_weekend_2025. A third union representing administrative and professional workers recently went on strike as well, impacting several operations such as customer service. One major motivation for the strikes has been higher wages, which the maintenance union has pushed for in all of its strikes but the STM says it cannot afford to pay. Workers are also concerned about subcontracting, which they say would reduce the quality of service and increase costs in the long term, while the STM says it is a necessary temporary measure to save money @yanez-leyton_what_2025.

#figure(image("images/syndicat-logo.webp", width: 75%), caption: [Logo of the Syndicat du Transport de Montréal @noauthor_syndicat_2026])

//Maybe: second paragraph to elaborate on strikes (move reasons here, political system to approve strikes and new law to stop them, new mayor's influence)

Montreal's homelessness crisis also has major repercussions for the metro. The number of people experiencing homelessness has recently doubled to an estimated 10,000 in the province of Québec, with most living in Montreal @olson_homelessness_2025. Many of them spend much of their time in metro stations, especially during the winter when it is not safe to stay outdoors in the cold. In 2024, there were over 12,000 escorts out of stations at closing time and over 26,000 reported cases of disorderly conduct in the metro @shingler_montreals_2025 @stm_stm_2025. According to a metro security guard we spoke to, total safety reports have increased to over 80,000 in 2025. Although they very rarely pose any danger to those around them, this increase in the homeless population has caused many metro passengers to feel unsafe; nearly half said they did not feel safe in the metro in a 2025 survey  @shingler_montreals_2025. Several respondents to our survey also specifically said they were concerned about homelessness and drug use in the metro. In the rating of specific characteristics of the metro, cleanliness received 3.1 stars out of 5 on average, the tied lowest of any characteristic. Nine respondents also ranked "cleaner" as the number one factor that would encourage them to use the metro more often, tied for first with "less expensive". While not all of our respondents associated homelessness with cleanliness, several answers to free response questions suggest that many did make this association. The feeling of unsafety and general dissatisfaction reduces the effectiveness of the metro, as it may push people towards other forms of transit where they feel safer and makes stations less effective as a third place.

The STM is taking some action to address the crisis, mainly by improving security. Transit agencies across Canada have increased visibility of security officers in stations, improved station lighting and closed off areas where illegal activities occur regularly, and improved response times to security calls @cuta_front_2025. The STM specifically has increased their security budget in recent years, introduced new rules stating that constables can remove people from stations for loitering, and created a dedicated text line to report security concerns @amador_montreal_2025. Nash mentioned that 10-15 stations, mostly downtown, were targeted for an increased security presence. They have also established L’équipe métro d’intervention et de concertation (EMIC), a collaboration between the STM, Montreal police, and a local organization of social workers combatting homelessness. STM officers work with this team to find places for homeless people to stay if local shelters are unavailable @cuta_front_2025. This helps ensure that people are treated with respect and dignity while keeping the metro as a safe place for passengers. The STM also acknowledges that improving security is not a sustainable solution to the homelessness crisis. They have asked Montreal to invest more into healthcare, social services, and homeless shelters to prevent the metro from being used as a "last-resort refuge" for those with nowhere else to go @stm_stm_2025. According to Nash, the provincial government should be providing funding for this, but they have largely pushed the responsibility to the municipal government that does not have adequate resources to handle it.

#pagebreak()

= Recommendations
 
Based on the findings and principles outlined in this case study, recommendations can be made for the city of Montreal, public transit in general, and other North American cities. While Montreal has been recognized as a remarkable example of good public transit, there is still room for specific improvement, as mentioned in the challenges. The Montreal Metro also requires improvements that other public transit systems could use as well, which are not specific to the city. While the metro system needs improvements that are tailored to Montreal, the metro does excel in some areas, with lessons for other cities in North America to improve efficiently and tangibly.

Regarding Montreal, many local professionals voice concerns for improvements, largely regarding the development and serviceability of areas around the stations and of the stations themselves. Many critiques involve the lack of TOD, unserved areas in the outskirts of the island, and an lethargy in renovating existing infrastructure. TOD is of concern in three main ways: the REM's placement is inefficient for housing and access, the STM is not using the full extent of their station development permissions, and there is a lack of development around stations in line extensions. Not having housing conducive to a close metro station makes running the metro that far ineffective when it serves few people compared to the denser downtown. A metro system that does not allow for convenient and dense housing around the stations almost becomes a commuter rail more than a metro. Professor Bourbonnais recommended the construction of more medium-size, five to six story housing to improve on this. 

Current complaints surrounding TOD are primarily focused around the REM's development prioritizing cost-saving methods and efficiency. Although it was cost-effective, the REM rails and stations were installed in the middle of the highway in many places, making TODs difficult to establish. We recommend that more development is focused around stations, both for the metro and for the REM. Many of the areas this would be the most useful are visible in @density-and-metro, where metro lines go through low-density areas. Some specific locations include the end of the yellow line in Longueuil, both ends of the orange line, and at the northern end of the green line. Most of these areas have had metro lines for decades, with the yellow line being one of the first to open in 1967, but development has not yet occurred.

#figure(caption: 
  [Population density heat map and metro map
], image("images/Density w Metro .jpg", height: 5in)) <density-and-metro>

Other metro stations built with extensions suffer a similar fate, characterized by a lack of development and an increase in density decades later. Both ends of the green line, Honoré-Beaugrand and Angrignon, and the Laval extension of the orange line all have low population density despite being built in 1976, 1978, and 2007, respectively. A metro system is meant to serve a dense population based on efficiency for riders and the operating cost, having existing stations and then not densifying the areas around them is leaving equity on the table. In line with the Canadian housing crisis, the current lull in private development, with January sales down 15% and listings up 14% on the Island of Montreal, the need for government-subsidized housing is at an all-time high @qpareb_fsmi_2026. The solution to the crisis as a whole, but with more focus on the metro, increasing cheap and subsidized housing around the metro will allow for more riders and fewer cars used, as the downtown area is more populated and closer to stations. If individuals do not need to drive their car into downtown or have a long bus commute to the station, the metro will be more convenient to use and have increased ridership.

This problem could have been mitigated on a municipal level by the STM since 2018 with the ownership and development of complexes near their stations. In 2018, the STM was approved to construct the Frontenac real estate complex project through its business subsidiary, Transgesco, and the Société d’habitation et de développement de Montréal (SHDM). The complex was to be built on a 54,200-square-foot lot already owned by the STM, close to the Frontenac métro station in the Ville-Marie borough. The project would feature the construction of 298 total housing units along with 25,700 square feet of office space to meet the STM’s needs. Mayor of Montreal at the time, Valérie Plante, had said in a press release, “This project shows how we can call on the combined strengths of our paramunicipal corporations to deploy exemplary projects that meet Montrealers’ needs” @stm_ville_2018. After a legal dispute with the contractor and indefinite waiting, the project has been effectively cancelled, but it still proves what can be done for the metro. The contractor Cosoltec Inc. had sued the STM for \$9 million sourcing cancelling the contract amidst disputes, leaving the STM in search for a new contractor through a housing crisis, a pandemic, and inflation. The STM has been given the power to build and own residential complexes close to the stations it owns, increasing the density around stations and increasing revenue and ridership for the metro. However, the STM does not continue to implement this idea to increase housing and revenue for itself.  The STM also does not fully utilize the development of its stations, instead of building vertically to own and operate more residential living. As an interest to both the government and the STM is of interest to go through with the ability to construct apartment complexes around the metro stations to increase ridership, homes, and revenue.

Other non-Montreal-specific recommendations can also be made for other cities, including disincentivising car usage, interconnectedness, communication, and decor. Some of the benefits of transit come from the lessening of car usage in the same urban area. By reducing the presence of cars in urban areas, it becomes more walkable and increases ridership on the metros, as it is more convenient to do so. By implementing systems such as congestion pricing or gas taxes, or physically limiting the number of spaces cars have, the car is less practical to use compared to the metro system. Having pricing that charges individuals if they enter congested areas of the city during peak hours, fewer people will drive through there, allowing for faster travel and less vehicle presence. By having taxes on the prices of gasoline for vehicles, it will become more expensive to use a vehicle very often, making more economic sense to ride the metro instead. While not for the express purpose of improving public transportation, Montreal has removed the presence of vehicles downtown by having parking underground or removed entirely. Underground parking is expensive during construction, making it unattractive to want to build, and removing street parking for bike paths and one-way roads makes finding parking in the city even more difficult. If driving a car is more expensive and challenging compared to the metro, more people will choose to ride public transit instead. Having a well-connected transit system also helps eliminate the use of vehicles, as the bus network has multiple terminals connected to the metro stations. If it is easy to reach the network regardless of where you live, thanks to the bus, and cars are not useful, people will choose the metro out of convenience. If the metro was out of an individual's way and could not get them to a walkable distance to their destination, they would not use it. But having integrated systems such as the REM and EXO railways built into metro stations, all using the same fare card, it is convenient for the user.

Users of the Montreal Metro also mention the abstract aspects of the metro, such as the level of communication regarding the status of the metro, such as construction and delays, as well as the artwork and architectural uniqueness of their stations. Having a system that can adequately and quickly informs it users of problems within the metro helps individuals avoid delays and be well informed about what is happening in the metro. If surprises arise for users often in ways they are unprepared for, they are likely to stop  using the metro system if problems are never properly communicated to them ahead of time. The uniqueness of each metro station is another point that attracts users and is a feature many point to for why they enjoy the metro system. Other stations around the world are often modular and repetitive, leaving boring architecture and uninspiring artwork. Having unique artwork makes the stations attractive and stands out compared to other cities' metros while still providing good service. 

#pagebreak()

= Conclusion
/*CONCLUSION - Synthesize and interpret the findings
• Make a reasoned judgement corresponding
to findings*/

Now that our project has come to an end, we wanted to reflect on what we have learned from the process. As technical and engineering students, it was challenging for us to conduct a social sciences project. Despite this, we enjoyed the variation from our usual classwork and have acquired skills that will help us in future studies or careers. We also gained experience working as a team, specifically with delegating tasks. *SOMETHING ELSE ABOUT TEAMWORK?*

Our research has shown that the Montreal metro is an impressive public transportation system by North American standards. It efficiently moves people from point A to point B, while its stations also serve as a destination. The metro is not without flaws, but it can still be used as a model for other cities to learn from for their own transit systems. We hope our work will improve the future of mobility in Montreal and around the world.

//Based on our time and research within Montreal, we have gained insight into public transit and the impacts it has on society. As a means of transportation, the metro gets people to their destination efficiently, without the need for cars, and creates community spaces, furthering its impact on society. Montreal offers numerous opportunities and people to meet in a multi-lingual setting, not present in other places. With a rich history guided by Francophone culture, Montreal has become an influential place to research and perform a case study. The fabric of Montreal society has been woven by the history of the city and how that influences development and change, of which the metro serves as the backbone. The metro connects people, events, opportunities, and the social aspects of a city as a whole. 

#pagebreak()

#set par(leading: 1em, spacing: 1.25em)
#bibliography("zotero.bib", style: "apa")

#pagebreak()

= Annex

== ArcGIS Links
#{
  set par(first-line-indent: 0em)
  [
The ArcGIS StoryMaps deliverable is available at the website below.
]
}

https://storymaps.arcgis.com/stories/cb57627f41624cc394665fe5d0cbf269/edit

#linebreak()
#{
  set par(first-line-indent: 0em)
  [
The data has been made public and can be downloaded from the user content below.
]
}
https://www.arcgis.com/home/item.html?id=356208e3e44b4e5a8737724dba6276bb

== Verbal Consent Script
#quote[
  We are students from Worcester Polytechnic Institute in Worcester, Massachusetts, working on a project on urban mobility in Montreal with a focus on the metro system. Is it okay with you if we audio record today's meeting? We will use some quotes from it for our final project report, \<mention how we will use this participant's responses specifically\>. Would you like your statements to be specifically credited or left anonymous?
]


== Survey Questions
This shows the survey questions as they were presented to respondents, with formatting changes made to improve readability. Text in italics is used to describe visual or logical features from the survey not present here.

#linebreak()
#{
  set par(first-line-indent: 0em)
  set text(lang: "zxx") //gets rid of autocorrecting french words

  [
  Ce sondage fait partie d'un projet pour Worcester Polytechnic Institute. Nous sommes des étudiants et nous recueillons les commentaires et les opinions des utilisateurs du métro de Montréal dans le cadre de ce projet. Si vous choisissez de répondre à ce sondage, vos réponses seront intégrées à notre rapport. Pour toute question ou pour consulter le rapport final, veuillez nous écrire à gr-montreal-transit\@wpi.edu.
  
  This survey is part of a project for Worcester Polytechnic Institute. We are students collecting user feedback and opinions of the Montreal Métro system for our project. If you choose to respond to this survey, your answers will be represented in our report. If you have any questions or wish to view the report upon completion, please email us at gr-montreal-transit\@wpi.edu
  
  #linebreak()
  
  //backslashes at end of lines are to force line breaks
  À quelle tranche d'âge appartenez-vous? \
  What age range are you in? \
  - 18-24
  - 25-34
  - 35-44
  - 45-54
  - 55-64
  - 65+
  #linebreak()
  Habitez-vous au Grand Montréal la majorité de l'année? \
  Do you live in Greater Montreal for a majority of the year? \
  (Requis/Required) \
  - Oui (Yes)
  - Non (No)
  #linebreak()
  _Displayed if answer to previous question is "Yes"_ \
  Dans quel arrondissement/région habitez-vous? \
  Which borough/region do you live in? \
  - Ahuntsic-Cartierville
  - Anjou
  - Côte-des-Neiges-Notre-Dame-de-Grâce
  - Lachine
  - LaSalle
  - Le Plateau-Mont-Royal
  - Le Sud-Ouest
  - L'Île-Bizard-Sainte-Geneviève
  - Mercier-Hochelaga-Maisonneuve
  - Montréal-Nord
  - Outremont
  - Pierrefonds-Roxboro
  - Rivière-des-Prairies-Pointe-aux-Trembles
  - Rosemont-La Petite-Patrie
  - Saint-Laurent
  - Saint-Léonard
  - Verdun
  - Ville-Marie
  - Villeray–Saint-Michel–Parc-Extension
  - Laval
  - Longueuil
  - Autre/Other: \_\_\_\_\_\_\_\_
  #linebreak()
  _Displayed otherwise_ \
  Où habitez-vous (ville ou région)? \
  Where do you live (city or region)? \
  - _Text entry_
  #linebreak()
  À quelle fréquence utilisez-vous le métro de Montréal? \
  How often do you use the Montreal métro? \
  (Requis/Required) \
  - Tous les jours (Daily)
  - Quelques fois par semaine (A few times a week)
  - Quelques fois par mois (A few times a month)
  - Très rarement (Very rarely)
  - Jamais (Never)
  #linebreak()
  Évaluez chacune des caractéristiques suivantes du réseau de métro: \
  (5 étoiles est la meilleure note)  \
  Rate each of the following characteristics of the métro system: \
  (5 stars being the best)  \
  _A rating scale was shown next to each option that allowed participants to select a rating from 1 to 5 stars_ \
  - Propreté (Cleanliness)
  - Fiabilité (Reliability)
  - Fréquence (Frequency)
  - Accessibilité physique (Physical Accessibility)
  - Abordabilité (Affordability)
  - Facilité d'utilisation (Ease of Use)
  #linebreak()
  Comment arrivez-vous de votre résidence à la station de métro la plus proche? \
  How to you get from your residence to the nearest metro stop? \
  (Requis/Required) \
  - Marche (Walking)
  - Vélo (Biking)
  - Conduite (Driving)
  - Métro léger/REM (Light rail)
  - Bus
  - Autre/Other: \_\_\_\_\_\_\_\_
  #linebreak()
  Combien de temps faut-il environ pour aller de la station de métro la plus proche à votre résidence? \
  Approximately how long does it take to get from the nearest métro stop to your residence? \
  (Requis/Required) \
  _A slider allowed participants to select a number of minutes from 0 to 30 in increments of 5, or select an option for "Plus longtemps que (Longer than) 30"_ \
  #linebreak()
  Combien de temps faut-il environ pour aller de la station de métro la plus proche à votre lieu de travail/école? \
  Approximately how long does it take to get from the nearest métro stop to your place of work/school? \
  (Requis/Required) \
  _A slider allowed participants to select a number of minutes from 0 to 30 in increments of 5, or select an option for "Plus longtemps que (Longer than) 30"_ \
  #linebreak()
  Veuillez classer les améliorations suivantes par ordre d'importance afin de déterminer celles qui vous inciteraient à utiliser le métro plus fréquemment. \
  (Déplacer et réorganiser les éléments, où 1 est le plus important) \
  Please rank the following improvements in order of which would encourage you to use the métro more frequently. \
  (Drag and arrange the items, with 1 being the most important) \
  (Requis/Required) \
  _Choices were initially presented in a random order for each participant_
  - Plus propre (Cleaner)
  - Moins cher (Less expensive)
  - Les trains arrivent plus fréquemment (Runs more often)
  - Des temps de trajet plus rapides (Faster travel times)
  - Arrêts plus proches de mon domicile/travail/autres lieux (Stops closer to my home/work/other locations)
  - Connexion aux autres transports publics (Connectivity to other transit)
  - Autre/Other: \_\_\_\_\_\_\_\_
  #linebreak()
  Y a-t-il des zones spécifiques où vous souhaiteriez un meilleur accès au métro? \
  Are there any specific areas where you would like to see better métro access? \
  - _Text entry_
  #linebreak()
  Comment le métro de Montréal se compare-t-il aux réseaux de transport publics des autres villes que vous avez utilisés ? \
  How does the Montreal Métro compare to public transit systems you have used from other cities? \
  - _Text entry_
  #linebreak()
  Qu'est-ce que vous appréciez spécifiquement dans le métro? \
  What specifically do you like about the métro? \
  - _Text entry_
  #linebreak()
  Quels aspects spécifique du métro pensez-vous nécessitent des améliorations? \
  What specific aspects of the métro do you think need improvement? \
   - _Text entry_
  #linebreak()
  Des commentaires ou des préoccupations supplémentaires? \
  Any additional comments or concerns? \
   - _Text entry_
  #linebreak()
  En soumettant ce questionnaire, vous consentez à ce que vos réponses soient collectées et utilisées dans un projet associé au Worcester Polytechnic Institute. \
  By submitting this survey, you consent to your responses being collected and used as a part of a project associated with Worcester Polytechnic Institute.
  ]
}

== Table of Metropolitan Areas
#set par(leading: 0.5em)
#figure(
    table(columns: 3,
      table.header([*City*], [*Metropolitan Area*], [*Agency*]),
      [Dallas], [Dallas--Fort Worth--Arlington, TX], [Dallas Area Rapid Transit],
      [San Diego], [San Diego, CA], [San Diego Metropolitan Transit System],
      [Atlanta], [Atlanta, GA], [Metropolitan Atlanta Rapid Transit Authority],
      [Boston], [Boston, MA--NH], [Massachusetts Bay Transportation Authority],
      [Philadelphia], [Philadelphia, PA--NJ--DE--MD], [Southeastern Pennsylvania Transportation Authority],
      [Seattle], [Seattle--Tacoma, WA], [King County Metro],
      [Chicago], [Chicago, IL--IN], [Chicago Transit Authority],
      [Washington], [Washington--Arlington, DC--VA--MD], [Washington Metropolitan Area Transit Authority],
      [Miami], [Miami--Fort Lauderdale, FL], [County of Miami-Dade],
      [New York], [New York--Jersey City--Newark, NY--NJ], [MTA New York City Transit],
      [San Francisco], [San Francisco--Oakland, CA], [San Francisco Municipal Transportation Agency],
      [Los Angeles], [Los Angeles--Long Beach--Anaheim, CA], [Los Angeles County Metropolitan Transportation Authority],
      [Houston], [Houston, TX], [Metropolitan Transit Authority of Harris County, Texas],
      [Montreal], [Greater Montreal], [Société de Transport de Montréal],
      [Toronto], [Greater Toronto], [Toronto Transit Commission],
      [Vancouver], [Greater Vancouver], [TransLink]
    ),
    caption: [Metropolitan Area Name and Largest Transit Agency for Each City]
  ) <metro_areas>

== Affordability Analysis
#{
  let affordability = csv("2026MetroAffordability.csv", row-type: dictionary)
  figure(
    table(columns: 4,
      table.header([*City*], [*Monthly Pass Cost (USD)*], [*Minimum Wage (USD)*], [*Hours per Pass*]),
      ..affordability.map(row => ([#row.at("City")], [#row.at("Monthly Fare USD")], [#row.at("Minimum Wage")], [#row.at("Hours per Pass")])).flatten()
    ), caption: [Affordability Analysis Based on Fares and Wages]
  )
} <affordability>