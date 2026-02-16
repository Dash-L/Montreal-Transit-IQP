// https://www.apta.com/research-technical-resources/transit-statistics/public-transportation-fact-book/

#import "utils.typ": *
#import "@preview/lilaq:0.5.0" as lq

#set document(title: [
  Urban Mobility:

  A Case Study of the Montreal Metro
])

#set page("us-letter")

#{
  set page(background: image("images/Title Page.png"))
}

#pagebreak()

#set page(numbering: "i")
#set par(leading: 1.5em)

#outline()

#pagebreak()
#outline(
  title: "List of Figures",
  target: figure.where(kind: image)
)

//TODO: maybe get rid of list of tables
#pagebreak()
#outline(
  title: "List of Tables",
  target: figure.where(kind: table)
)

#pagebreak()

#show heading: set block(above: 2em, below: 1.5em)
#show heading.where(level: 1): set block(above: 3em, below: 2em)
#set par(first-line-indent: (all: true, amount: 2em), spacing: 1.5em)

#set page(numbering: "1")
#context counter(page).update(1)

#show figure: set block(inset: (top: 0.5em, bottom: .5em))

= Introduction
- Trajectoire Lunch anecdotal story
Today, the majority of the world's population lives in urban areas. While this provides benefits for urban societies and the global climate, it also comes with the challenge of transporting many people in a dense space @ritchie_urbanization_2018. Our project aims to see how one specific city, Montreal, addresses this issue. With over four million inhabitants in its metropolitan area, Montreal needs extensive infrastructure to safely and efficiently move people around the city @spieler_trains_2021. Despite its existing public transportation network, 70% of Montrealers primarily commute by car @statistics_canada_main_2024. This reliance on personal vehicles has immense negative effects on urban areas: cars emit high levels of greenhouse gases and air pollutants, reduce safety due to crash risks, and contribute to health problems due to reduced physical activity, all while being inefficient due to high traffic congestion in cities @taillandier_back_2023. Additionally, having car-centric infrastructure leads to land being used by vehicles that will sit idle and parked for the majority of the day, taking up entire areas of densely populated cities. Accommodating these cars also promotes wasteful development, as land zoning will allow for multilane highways, overpasses, and parking garages or lots that serve as collections for heat island effects @ibrahim_impact_2018, making cities less aesthetically pleasing and pedestrian-friendly. Public transit serves as a more sustainable alternative to increasing personal vehicles. The main public transit system in Montreal is the metro, which we will be focusing on for this project. Our research aims to understand the history of the metro and answer the question "What issues currently face the Montreal metro system, and how can it be improved?"

While the practicality of a good public transit is widely known, the implementation is more difficult to prescribe without a case study and a resulting report with various methods for improving all aspects and states of a city's transit. Montreal is an optimal case study for this problem because of its rank in ridership per capita and affordability compared to other Canadian and American cities. While ranking the 14 most populated cities in 2016, Montreal ranked 12th; however, for ridership per capita, it ranked second to the New York City metropolitan area, despite having about 14.5 million fewer people. Montreal happens to achieve this while also having the second most affordable monthly fare, based on hours of work needed at minimum wage, leading to half the hours needed in New York City @verbich_bang_2017. Montreal is able to do thanks to the government funding given to the Société de Transport de Montréal (STM), the organization that runs Montreal's metro and busses. 25% of their operating budget comes from transit fares, 29% from the municipal government, 37% from the provincial government, and 9% from other sources /*TODO new source for this*/ @stm_budget_2015. Most cities struggle to find a balance between the income generated from fares and the ability to provide service at an acceptable level, whereas Montreal is able to have the third-highest rider satisfaction index and the second-highest farebox recovery ratio for the transit agency @verbich_bang_2017. Montreal is a clear leader when examining the total value of public transit in North American cities, leading to the crucial need for the case study and report based on the results we found regarding the metro.

The goals of our project are to examine what makes a good transit system, to understand the current performance of the Montreal Metro along with its strengths and weaknesses, to make recommendations for the improvement of the metro, and to see what other cities can learn from Montreal./*TODO: preview specific strenghts/weaknesses here*/ These goals help us focus our project to convey the need for an effective public transit network and provide an objective way to deliver these considerations to relevant stakeholders. We have also worked closely with Trajectoire Québec, an association that promotes the interests of public transit users throughout the province of Québec.
//While not our official sponsor, we will also be working closely with the Société de Transport de Montréal (STM), which is the municipal agency responsible for running Montreal's metro as well as its bus network. They are interested in obtaining a better understanding of the systems they run and what steps could be taken to improve the quality of their services.

Our project has explored the effectiveness of the Montreal metro system through many lenses, including traditional means of success and more abstract values. Traditional success refers to metrics purely about the state of the metro, with things like timeliness, cleanliness, and coverage. On the other hand, abstract means of success are aspects often ignored by riders or experts such as sustainability and decoration. To achieve this, we examined its current operations through personal anecdotes and ethnographies of the metro stations and the metro cars, as well as semi-structured interviews and surveys. We interviewed professors from local universities and leaders of transit-focused advocacy groups. To deliver our findings, we will write a detailed report and produce a website using ArcGIS mapping tools, data layers, and StoryMaps.

= Literature Review
== Benefits of Public Transportation

Public transportation offers several benefits for urban areas and their residents. The four main categories include: emission reductions, health improvements, increased social connection, and stronger economic activity.

One of the most significant benefits of public transportation is emission reduction.  #pc[@de_abreu_action_2023] specifically talk about the use of electric-powered transit instead of gas-powered transit, which can reduce carbon emissions and air pollution. With electricity being a renewable resource, it is easily accessible and provides benefits such as less noise pollution, higher efficiency, and ease of conducting maintenance.  A case study in São Paulo, Brazil found that on the day of a subway strike, the concentration of $"PM"_10$---harmful particulate matter less than 10 μm in size---increased by 75% over a similar day when there was not a subway strike @silva_evaluation_2012. This increase is almost entirely attributed to more cars on the road, as commuters had to find alternative modes of transport. 

Clearly, cars are a fact of the world we live in, but reducing their use by providing alternate methods of mobility is important for keeping dangerous emissions out of the air. Less cars on the road would lead to lower crash rates. It would also reduce the amount of space taken up from parking lots making the city more aesthetically pleasing and pedestrian friendly. #pc[@tran_smart_2021] discuss how driver behavior, traffic, and poor road networks can all cause congestion, adding more emissions. These problems are exacerbated when public transportation is not an option. 

*TODO: Implementing regenerative braking can also regain and reuse energy when slowing down. (Find better place for this to go)
*
#figure(caption: [Statistical benefits of lowering emissions @kcata_environmental_2025], image("images/emission benefits.png"))

Following the idea of public transit being beneficial for energy consumption and emissions, the American Public Transport Association (APTA) provides a technical report analyzing the emission outputs of public transit @dickens_2025_2025. Using public transit emits 55% less carbon dioxide than a car and saves six billion gallons of gas annually. Over the past thirty years, heavy rail efficiency has increased by 22%, and light rail an increase of 27%, furthering the notion that public transit continues to improve its benefit to energy consumption. The consumption of diesel as a fuel source has also been decreasing across all public transit methods, with increasing usage of biodiesel, hybrid, or electric vehicles.

Improved physical health is also a major benefit of public transportation systems. Transit networks promote walking and cycling (often grouped into active transportation), as opposed to staying in a personal vehicle for an entire trip. Active transportation is often used as the beginning or end of a trip using public transportation, promoting physical activity @srivastava_advancing_2025 @public_health_agency_of_canada_active_2014. As an example of this promotion, a 2001 survey found that American adults who use transit as part of their commute spend 24 minutes per day walking. This is only six minutes short per day of reaching 150 minutes of physical activity over a five-day workweek, which is the World Health Organization's recommended weekly physical activity level, showing that using public transit can significantly improve health @sener_potential_2016. This active transportation can have a significant impact on health outcomes: inactivity has been directly linked to an increased risk of cancer, heart disease, hypertension, and type 2 diabetes, with up to 25% of breast and colon cancer diagnoses worldwide having physical inactivity as a primary cause @sener_potential_2016. Public transit is also significantly safer than car use: commuter rail has twenty times fewer deaths per passenger-mile than automobiles, urban rail thirty times fewer, and buses sixty times fewer @litman_new_2014.

//Maybe add something abouot mental health benefits of being outside more
In addition to these physical health improvements, there are significant social and mental health benefits associated with public transportation. One study in San Francisco found that as vehicle traffic on residential streets increased, less people attempted to cross the street and residents knew less of their neighbors; people living on heavy traffic streets had half as many friends and acquaintances on the other side of the street as people living on light traffic streets @adams_social_2000[p. 121]. Another study found that people living in more walkable neighborhoods felt more connected to their community, were more likely to have trust in people, and had higher levels of political participation @transport_canada_social_2006. These walkable neighborhoods are promoted by robust public transportation infrastructure that allows people to move around cities. Additionally, #pc[@reinhard_public_2018] speak on how social isolation is a major risk factor in depressive disorders in older age. Their study found that providing free bus passes for members of the public over 60 led to increased public transportation usage and social engagement. This engagement also decreased depressive symptoms and feelings of loneliness, improving overall quality of life.

#figure(caption: [Reduced street crossings and neighborhood connection as traffic increases @adams_social_2000], image("images/traffic-vs-crossings.png", height:5in))

//For future - add Jamie Lerner and/or elaborate on benefits of reduced traffic
Another major benefit public transportation brings to a city is strengthening the local economy, both directly and indirectly. One example of direct benefits comes from a study by #pc[@weisbrod_economic_2009], which found that for every billion dollars spent on public transportation, 36 thousand jobs were created, \$1.8 billon were added to GDP, and \$490 million of additional tax revenue was generated. Public transit also boosts the economy through increased land value. According to #pc[@tontisirin_measuring_2021], public investment near a plot of land is one of the main factors influencing its value in urban areas. Therefore, investing more into public transportation can increase land value across a city. This increase can then be used by the city through land value capture programs to fund future public transit projects. Tourism is another way that public transit can benefit local economies; good public transportation networks attract tourists and encourage them to spend more, which in turn gives cities more funding to invest in public transit @le-klahn_tourist_2015.

In addition to these direct benefits, public transit has several indirect benefits to an economy. These include a reduction in traffic congestion due to fewer people choosing to drive, which in turn has significant economic impacts on congested urban areas @chen_travel_2024. Furthermore, public transit provides an equitable alternative for people who are unable to drive or cannot afford to pay for a car and its parking. In the United States, more than half of public transit users make less than \$50k per year, which demonstrates the impact it can have on communities @dickens_2025_2025. The walking and cycling induced by transit also brings benefits. For instance, small businesses and shops around the area may draw the attention of pedestrians looking to make a purchase, which can help keep smaller businesses afloat.

#figure(caption: [Example of the benefits of public transit @city_of_albuquerque_transportation_2025], image("images/ways-to-drive-less-public-transit-benefits.png"))

Public transportation provides immense benefits across multiple fields. The reduction in emissions when using public transit compared to automobiles decreases air pollution locally and contributes to fighting climate change globally. Transit infrastructure incentivizes physical activity through active transit, improving health outcomes. It also strengthens community bonds and improves mental health, especially for the elderly. Lastly, it provides economic benefits through GDP growth, land value increase, and reduced vehicle traffic. These benefits combined make transit-oriented cities better places to live for all residents.

== Principles of Good Transportation

There are two main schools of thought in the literature discussing what features a good public transportation system has. The first of these schools focuses on the conventional success of a system. Within this school, #pc[@litman_evaluating_2025] considers four main ways to evaluate transit systems: increased service, improved service, transit use incentives, and transit-oriented development. Another author aligned with this school is #pc[@spieler_trains_2021], who examines several factors to consider when designing a transportation system, most of which are also mentioned by Litman. One aspect that both authors mention as being very important is urban density, which is required to make public transit useful and economically viable. This is also connected to Litman’s category of transit-oriented development, which is the practice of designing urban communities "to maximize access by public transit, with clustered development and good walking and cycling conditions" @litman_evaluating_2025[pg. 89]. Transit-oriented development generally focuses on the quarter-mile radius that studies have found to be the distance that most people are willing to walk to/from a station @spieler_trains_2021. Prioritizing new development around transit stops, rather than exclusively building stops in already developed areas, allows for public transportation to be useful outside of urban cores and makes it easier to acquire land for new stations, since already developed land is difficult to build on. Additionally, it creates a positive feedback loop in which these new developments benefit from being accessible to the rest of the city, while the transit network is benefited by proximity to more housing and businesses, thus attracting more customers. Other focuses of this school include a transit system’s coverage, reliability, and frequency.

The other main school, which includes Kennedy and Suzuki, focuses on the sustainability of transit systems. These authors consider the sustainability of a system to be as important or more important than conventional metrics like ridership or revenue. This focus is partially for environmental factors, such as reducing atmospheric fossil fuel emissions and air pollution in the city, and partially because these authors consider sustainability to be a prerequisite for conventional success. One of the papers in this school, written by #pc[@kennedy_four_2005], lays out four pillars to create a sustainable system: governance, financing, infrastructure, and neighborhoods. According to them, governments need to establish new organizations that integrate land use with transportation planning to avoid bureaucratic deadlock. Funding requires new mechanisms that ensure fairness, efficiency, and stability. Existing infrastructure needs to be retrofitted or entirely replaced with more environmentally friendly alternatives. This infrastructure investment needs to be accompanied by local, community-scale projects that focus on walking, cycling, and other accessibility-focused transit elements. Many of these ideas are reinforced by #pc[@suzuki_transforming_2013]. They consider changes that municipal governments can make to zoning laws to encourage pedestrians and cyclists in urban areas. Both authors agree that fostering more connections between land use commissions and transit planners is vital to allow sustainable developments to progress even if their main benefits are long-term. Similar to the conventional success school, both authors also see urban density as a necessary component of a transit system, with a focus on maximizing the quarter-mile radius around stations. However, due to the focus on sustainability, less emphasis is placed on things like reliability and frequency.

#figure(caption: [Pillars of sustainable urban transportation @kennedy_four_2005], image("images/sustainability-pillars.png", height: 4.38in))

Based on our analysis so far, we would like to focus more on the conventional success school than the sustainability school. While making a sustainable system is important, Montreal and STM are likely more interested in a system that is reliable and convenient to use. Additionally, focusing on a generally high-quality transit system to increase ridership will also give many of the passive benefits of sustainability, such as lowering emissions due to fewer people choosing to drive. However, we will still consider sustainability in our proposals, as it is important even if it is not our primary focus. If future research determines that Montreal and STM are specifically interested in improving the sustainability of the metro, we could focus more heavily on the suggestions of the sustainability school.

== Montreal in Context
//https://www.apta.com/wp-content/uploads/2023-Q4-Ridership-APTA-Update-1.pdf

As the second largest city in Canada and one of the 15 most populated in North America, Montreal is an important case study for public transportation @allen_rail_2025. Montreal is also unique among otherwise similar areas due to its highly bilingual nature, with most residents speaking both English and French.

Using data from the University of Toronto's School of Cities, compiled by #ac[@allen_rail_2025], we were able to compare Montreal's metro system to other  rail transit systems in cities around the world. Compared to other cities in the US and Canada, Montreal performs very well. One metric examined by this data is population density within 1km of rail transit stations; Montreal is third on this metric, behind only New York and Toronto. The city also has the third highest percentage of urban area within 1km of a station (behind New York and Chicago) and the fifth highest percentage of urban population within the same area.

When including European cities in addition to the American and Canadian ones, Montreal falls considerably in these rankings. It moves to 24th in population density within 1km of stations and 36th in percentage of both urban area and urban population within 1km of stations. This places it below the majority of European cities included in the dataset, with Montreal only scoring higher than seven European cities on percentage of urban population and five European cities on percentage of urban area. It is similarly outclassed by other global cities, particularly those from East Asia. These comparisons make Montreal an interesting case study for public transportation; its North American peers can learn from it, but it can still take inspiration from European cities for improvement. @vs_san_diego and @vs_rome below compare Montreal to San Diego and Rome, two cities with similar population sizes and densities to Montreal but very different levels of transit infrastructure.

#figure(grid(
  image("images/montreal-vs-san-diego-map.png"),
  image("images/montreal-vs-san-diego-stat.png"),
  ), caption: [Montreal vs San Diego @allen_rail_2025]
) <vs_san_diego>

#figure(grid(
  image("images/montreal-vs-rome-map.png"),
  image("images/montreal-vs-rome-stat.png"),
  ), caption: [Montreal vs Rome @allen_rail_2025]
) <vs_rome>

We have also performed a comparative analysis with more in-depth data from the US and Canada. Using data from the National Transit Database (NTD) for the American cities and the Canadian Urban Transit Association (CUTA) for the Canadian cities, we compared various statistics for cities in North America and their corresponding metropolitan areas and transportation systems. Both datasets come from 2023, as the CUTA did not have more recent data published. Inspiration for the types of data analyzed and which cities to focus on came from the paper "Bang For The Buck: Toward A Rapid Assessment Of Urban Public Transit From Multiple Perspectives In North America" written by Verbich, Badami, and El-Geneidy of the Transportation Research at McGill (TRAM) group. We used many of their methods, but found more recent statistics and included additional analysis. 

Note: We are still waiting on data from CUTA. Eventually the Canadian cities will be in red here, at the moment a random half of the US cities are in red for demonstration purposes. The bubble sizes are scaled by population.

#figure(
  image("images/rides_per_cap_vs_pop_density.svg", width: 6in),
  caption: [Rides Per Capita vs Population Density (2023)]
) <rpc_vs_pop_density>

@rpc_vs_pop_density shows the population density for each city compared to the number of trips taken per capita in the year 2023. Both of these statistics are calculated using the entire metropolitan area for each city (as defined by the US Census), rather than their administrative boundaries. It also aggregates rides from all modes of transit and all transit agencies listed as belonging to each metropolitan area. Our remaining data analysis will only examine the largest transit agency for each city, as determined by the TRAM paper. A list of these transit agencies for each city and its corresponding metropolitan area is provided in the annex.

@pass_miles_vs_op_cost shows the number of passenger miles each city's transit agency reported compared to their total operating cost, with a trend line to demonstrate which cities perform better or worse on this metric. New York is excluded here, as it is a massive outlier in both dimensions and causes the graph to be difficult to read.

#figure(
  image("images/pass_miles_vs_op_cost.svg"),
  caption: [Passenger Miles vs Total Operating Costs]
) <pass_miles_vs_op_cost>

Also inspired by the TRAM paper, we have the following affordability analysis, based on the number of hours of work at minimum wage needed to afford the most expensive monthly pass in the respective areas. This gives a worst case measure of affordability, making cities with low minimum (but potentially not median) wage look very bad, and we have run into one transportation agency (in Houston) which does not have a monthly pass. TRAM used the cost of 30 day passes, but they have since removed their day pass, and now only have single fares. It might be better not to choose the most expensive monthly pass, and we may change this in the future, but at the moment this is the least biased thing we can do without digging deeper into how each system works.

#{
  let affordability = csv("2026MetroAffordability.csv", row-type: dictionary)
//TODO: sort this table by last column
  figure(
    table(columns: 4,
      table.header([*City*], [*Monthly Pass Cost (USD)*], [*Minimum Wage (USD)*], [*Hours per Pass*]),
      ..affordability.map(row => ([#row.at("City")], [#row.at("Monthly Fare USD")], [#row.at("Minimum Wage")], [#row.at("Hours per Pass")])).flatten()
    ), caption: [Affordability Analysis Based on Fares and Wages]
  )
}

#pagebreak()

= Methods

We used various methods to complete our research. They were largely qualitative in design, as we went into as much depth as possible and captured the unique aspects of Montreal. We used a multi-method research design and triangulated findings from each method to increase the robustness of our observations and conclusions. Our main focus was archival research, semi-structured interviews, surveys, and ethnographies.

== Archival Research
Archival research was used in our analysis due to the accessibility of information and ability to create a foundation for in-field research. Archives provide easy access to a large quantity of information with a lower time commitment than some other methods @lune_qualitative_2017. They are often cheap or free to use, especially for university students, and are available both physically and digitally. Additionally, archives allow us to find information from many different authors in the field, showing if there is a consensus among experts or if there are several competing schools of thought. Despite these advantages, archival research also has several drawbacks. Peer-reviewed literature in archives can take years to be published, making the most up-to-date information inaccessible through this method. Additionally, there may be very little published information on a specific topic, and this information may be unavailable due to location or language barriers. Archives also may not be sufficient to combat selection bias (a selection of sources that is not statistically representative of the population) if researchers only examine sources from one perspective while ignoring others, especially those of marginalized groups @lune_qualitative_2017.

Using archival research, we hope to gain a preliminary understanding of the historical reasoning behind the Montreal Metro's design and general design values for a good urban transport system. We will use this method to understand the timeline and context of the metro system, giving us necessary background information for other research. We will also use archival research while in Montreal to find niche information not available digitally, specifically through primary sources relating to the construction of the metro. Of the downsides to archival research, language barriers are particularly significant for our research. Many sources are likely to only be available in French, which none of our team members speak fluently. Only using English sources would be a major source of selection bias, so we will use translation tools to access French sources as well.

Before going to Montreal, we plan to use digital archives such as the WPI Gordon Library, JSTOR, and other peer-reviewed literature sources for archival research. These will provide information about public transportation in general and some generic details about the Montreal metro for use in our literature review. Once in Montreal, we will be able to make use of physical archives, including the BAnQ Grande Bibliothèque; McGill University's public libraries; archives of newspapers such as the Montreal Gazette, Le Journal de Montréal, and La Presse; and physical documents kept by the STM and local non-profit organizations. These physical archives will help us gather information specific to the city's metro system, including historical information about its construction and any recent research into it. We will use this information to get a better understanding of the people who created the metro system and the factors that shaped its development.

== Semi-Structured Interviews
Semi-structured interviews were used as part of our research to fill the gaps left by archival research, allowing us to provide concise answers to the questions that arise during the research process. Whereas archival research offers concrete knowledge that takes time to update and change, an interview with an individual allows for a conversation to be built and have your questions readily answered by a single source, rather than requiring cross-referencing for unanswered questions @lune_qualitative_2017[p. 70]. Additionally, semi-structured interviews provide the knowledge necessary to use survey responses in a manner the researcher is familiar with from the practical information learned from the interview. While semi-structured interviews have their benefits of being from conversations with credible sources, they also promote bias from sourcing a singular person for all views on the topic at hand. Semi-structured interviews also have the disadvantage of being difficult to set up, taking a significant amount of time for one response.

We have interviewed professors at WPI, professors at local canadian universities, advocacy groups, and the workers/creators of the Montreal metro. At WPI, the goal of these interviews was to help fill in the gaps in the literature and to provide more information on the metro or systems similar to it. Having these interviews allowed for follow-up questions and a more in-depth understanding. For our interview with Professor Lindsay Graff, we received some input on multimodal transit systems and public transportation. In our interview with Professor Stephen McCauley, we learned about urban planning and a similar project in Melbourne that he advised. For our interview with Professor Suzanne LePage, we got information on urban and environmental planning. Some issues that arose were finding times for interviews, as these professors have busy schedules.

In Montreal, we interviewed professors, workers, members of advocacy groups such as Trajectoire Québec, and potentially the creators of the Montreal metro. We specifically wanted to interview Ahmed El-Geneidy from McGill, as he is a leader of the TRAM (Transportation Research at McGill) group. Our goal with these interviews was to understand how the metro came to be, what steps were taken for its creation, what draws in riders, and how it is sustained daily. Other information to obtain would be what is lacking in the metro, and what procedures need to be followed to help improve the system. One potential limit of these interviews is that academics, STM workers, and advocacy group members would have to find time in their busy schedules. Another issue that could arise is a language barrier if interviewees mainly speak French. While this may somewhat limit our pool of potential interviewees, many professionals speak both French and English, so we do not foresee this being a major issue.

During interviews, we took notes and record audio using a phone and voice memos. Most of us asked questions as one person recored/took notes. We had met WPI professors on campus at an agreed upon location. As for Montreal, we interviewed professors in their office, advocacy members at cafes, and at the metro stations. Equipment needed consists of our laptops for taking notes and reading off questions, and one phone for audio recording. 
We will triangulate information gained from interviews and our other research methods to brainstorm a strategy that will help improve the metro system @lune_qualitative_2017[p. 67]. We will include points in our final presentation acquired from interviews in the form of quoting those we interview, anonymously if they so choose.

== Surveys
Surveys can be a useful tool in getting relatively large amounts of data when compared to other qualitative methods, if done right. They require less time and effort on our end as researchers than semi-structured interviews, and people are more likely to fill out a survey than commit an extended period of time out of their day for a full interview. On the other hand, even though filling out a survey is relatively low effort, many people will ignore surveys. Even if they do start filling them out, we need to be careful to keep the surveys somewhat short so that as many people as possible finish them. A language barrier can also be a limitation for surveys in multilingual places. One final downside is that surveys cannot capture the full complex perspectives people have and we will not always be able to anticipate concerns they may have in writing our questions @lune_qualitative_2017[p. 71].

Montreal is a major city with many people that take the metro every day, thus we would like to gauge the public's opinion of their metro system. Since there are so many people, semi-structured interviews with individual riders are unlikely to be useful in getting something like a generalizable (to Montreal) result. While survey results are not guaranteed to be from a representative population, we can at least gather much more data, albeit at a more surface level. This may present selection bias, as people with stronger opinions are more likely to fill out the survey, but we hope that a broadly appealing poster and short survey can mitigate this issue. The bilingual nature of Montreal means that a survey in just English would miss out on the Francophone perspective. To combat this, we will have the survey in both French and English. French will be the primary language with English wording also included. To make sure the translation is good, we have verified it with a native French speaker at our hostel.

We are collecting information on whether people have generally positive or negative opinions on the metro in a few different areas: cleanliness, timeliness, coverage, frequency, and accessibility. The data will be more useful if we consider how often each respondent uses the metro, so we are collecting that and other contextual information. A full list of survey questions can be found in the annex.

//TODO: add number of posters (if possible, specify how many are outside stations/other places and/or include full list or map in appendix) and update digital spaces list
To distribute the survey, we have put up posters around Montreal. Some of these are just outside of metro stations to collect information from people who take the metro often. Others are in various locations around Montreal, especially in neighborhoods that have less access to the metro, which allows us to gather responses from people who do not use the metro regularly and understand what could make them use the metro more often. These locations include neighborhood community boards, public squares, coffee shops, and our hostel. We expect many people to ignore posters, so we will also actively solicit responses to our survey by standing in the metro/metro stations or on the street. We have also posted our survey on the Montreal Reddit and Facebook groups related to the metro or Montreal. 

#figure(place(rect(width: 100%, height: 96.725%)) + image("images/Survey Poster.jpeg"), caption: [Poster that was placed around Montreal to advertise the survey])

== Ethnographies
While in Montreal, we will perform field research by using and observing the metro system. This ethnographic research will give us useful insights into the operation of the metro that other methods may not be able to capture, as it does not rely on third parties for information. It also centers the research process on ourselves, enabling us to learn about the metro system on a deeper level than other methods, and it will give us information to corroborate things we learn from other sources @lune_qualitative_2017. However, ethnography does have some drawbacks. Firstly, we may not come across the types of interactions or conditions that we are trying to find, causing our research to be potentially less useful than more targeted methods. Additionally, it is difficult to notice if we are getting unreliable information due to observer bias (the tendency to see what we want or expect to see, instead of what is really there) or coincidental factors beyond our control @lune_qualitative_2017[p. 119]. To minimize the effects of observer bias, we will strive to take our observations with a grain of salt and recognize that our perspectives are necessarily those of outsiders, while the important perspectives are from Montrealers. The three ways we will obtain ethnographic data are regular use of the metro, targeted use with specific objectives, and observation at select stations.

One way we will gather ethnographic data is by simply using the metro while in Montreal. This will allow us to experience the metro in the same way as an ordinary Montreal resident, allowing us to perceive its strengths and weaknesses directly. This method is useful for observing factors like how frequently the metro arrives and how long we wait on average, how far we typically have to walk to and from metro stations, whether there are any areas of the city that are underserved by the system, what other modes of transport connect to the metro system, and any other observations we have about the metro from a user's perspective. We will record numerical information like walking time, waiting time, and travel time for each trip. In addition, we will write down qualitative data like how busy the stations and train cars are and how difficult it is to plan a trip along with what resources are available to make it easier. Although we will likely have a different perception than residents, we will also consider more subjective qualities like how much warmer it is in stations than outdoors, how clean the stations and train cars are, and how we would rate the overall user experience.

In addition to these trips for the purpose of travel, we will also take some trips with the sole purpose of observation. We will select specific metro routes to take and track information about each. This will include a combination of staying on the metro for a period of time, getting out and looking around the stations, and exploring the area immediately around each station. We will look for routes with various attributes, such as particularly popular or unpopular routes, routes in high-income or low-income areas, routes that require transfers, and the route that goes to the more suburban area of Laval, among others. We will take similar quantitative and qualitative records that we do for our regular travel, in addition to relevant notes for each route. For example, we will track any specific differences we notice between stations in high-income and low-income areas based on ArcGIS mapping from census data. We will also use a camera to take pictures and short video clips of the routes we ride on and stations we pass through that we will be able to use in our report to help visualize the experience. This will allow us to answer specific questions relevant to each route that more general ridership may not be able to answer.

Our last method of collecting ethnographic data will be observing select stations. We will choose a few stations that could give unique insights, such as the largest hub station (Berri-UQAM), the newest stations in Laval (Montmorency, De la Concorde, and Cartier), the end stations of some of the lines, and stations in largely residential or largely commercial areas. A few other select stations include L'Allier, Lionel Groulx, Snowden, Jean Talon, and Jean Drapeau. This will provide more answers relating to discrepancies in specific areas of the metro system. Here too, we will take pictures and short videos to supplement our written observations and enhance our visualization. This method's static frame of reference will allow us to more easily observe finer details about the metro system and the people who use it.

#figure(caption: [Berri-UQAM station @martins-manteiga_metro_2011], image("images/berri-uqam.jpg", height: 7in))

#figure(caption: [De La Concorde station @martins-manteiga_metro_2011], image("images/de-la-concorde.jpg", height: 7in))

We will visualize and present our ethnography data in two ways. Firstly, we will include our written and visual observations in our main report. This data will help us tell a story about what is working well and what is not within the Montreal metro. In addition to this, we will include our field research data in an interactive map. This map of the Montreal metro will allow users to view summaries at a glance and click on various stations and other points of interest to learn more. Our observations and especially our pictures and video clips will be used heavily here to differentiate areas of the metro system and link each to interesting information on the metro as a whole.

== Ethics and Limitations
While our research is not particularly controversial, we will still take steps to minimize any harm done by our work. The most significant ethical concern for our research is ensuring the privacy of our interview subjects and survey participants. We will ask each interview participant if they are comfortable with their name being used in our report and if they would like to keep any of their specific statements anonymous or excluded from our report. For our surveys, we will not collect any identifying information on the participants to ensure the protection of their privacy. To ensure informed consent, we will get verbal consent from all participants in our interviews after telling them how we plan to use their information. We will also include a description of our research and how we will use participants' responses at the top of the surveys. To minimize observer bias in our surveys and interviews, we will design non-leading questions that allow for a wide range of responses. We acknowledge that we are not locals in Montreal, so we are likely to still experience some level of observer bias; our observations may not be perfectly representative of the situation, and we will be sure to reserve judgement and transmit local voices more than our own.

Due to the limited time we have to conduct research in Montreal, we will not be able to interview or survey the vast majority of people who use, or are stakeholders in, the metro system. Therefore, any conclusions we come to may not be generalizable to the entire system and even less so to metro systems in other cities, but we should be able to capture the reality in Montreal due to the triangulation of various methods we are using. Another limitation our project will have is the season in which we conduct our investigation, as the metro system during the winter will be different from the summer, a time at which we will not be able to experience through an ethnography. This limitation will be mitigated through the surveys, including questions regarding the state of the metro system in conditions throughout the year that we will be unable to experience ourselves. Finally, the language barrier may be a limitation for all of our methods, but we have outlined ways to mitigate this for each method.

#pagebreak()

= Findings

== The Metro Has a Rich History

// - Timeline of improvements
// - Introduction of ARTM to combine STM + EXO + Laval + REM + etc.
// - Development of the REM
// - More about Jean Drapeau
// - Pink line and Tramway/BRT

Montreal's metro has a rich history spanning over half a century. A metro system for the city had been discussed as far back as 1910, but plans were interrupted by the economic depression of the 1930s and the Second World War A top level set rule stays in effect until the end of the file. When nested inside of a block, it is only in effect until the end of that block. With a block, you can thus restrict the effect of a rule to a particular segment of your document. Below, we use a content block to scope the list styling to one particular list.@stm_metro_nodate @gilbert_subways_2015. A new proposal was made in 1953, but the city government was hesitant to approve its construction; many critics saw it as unnecessary in the age of the automobile and suburbanization. On the other hand, supporters argued that a subway could help revitalize the city's economy and reduce traffic congestion @gilbert_subways_2015. The success of Toronto's subway, which started operating in 1954, served as an example for the potential benefits of a new transit system while providing incentive for Montreal to build a subway system of their own to maintain their status as Canada's metropolis @stm_metro_nodate. The metro was approved for construction in 1961, with two of the three initial lines being built as planned, while the third was replaced with a line to service the site of the upcoming 1967 World Fair. The first 20 stations were opened on October 14, 1966, and the remaining stations of the initial lines were completed in the spring of 1971 @spieler_trains_2021 @stm_metro_nodate. Despite not being built for the World Fair, the system was completed just before it and gave the city a tool to demonstrate its modernity. This cultural effect was bolstered by each station having its own design and architect, allowing the metro to stand out for its aesthetics as well as its functionality @canadian_broadcasting_corporation_montreal_2016. The metro has since seen several expansions, including the addition of a new line, which was completed in 1988, and the expansion of the orange line to the suburb of Laval in 2007 @devaux_anticipation_2017.

#figure(caption: [Tunneling during the creation of the orange line @martins-manteiga_metro_2011], image("images/orange-line-tunneling.jpg", height: 5.5in))

In addition to being a mode of transportation, the metro is a point of pride for many Montrealers. This can be attributed to its extensive service to the city and relatively efficient construction in terms of both time and money. As #pc[@magder_metro_2016] and #pc[@gilbert_subways_2015] say, a major influence on the Montreal metro's construction was the use of pneumatic rubber tires, an innovation from France. This appealed to Montrealers, especially those of French descent, since it changed perceptions of the metro from another way to follow in America's footsteps to a piece of modern French technology. Additionally, they allowed metro to operate more quietly than if it had used steel tires @noauthor_french_1963. There is a general agreement amongst the sources that the metro was very modern for its time and serves as a symbol of innovation for Montreal and Quebec at large. While #ac[@magder_metro_2016] (the authors of an article celebrating the system) and #ac[@stm_metro_nodate] should be expected to have a positive bias, #pc[@gilbert_subways_2015] and #pc[@spieler_trains_2021] also discuss the system's modernity. Today, the metro accounts for 45% of the STM's passengers and provides an underground backbone to the city's bus network @spieler_trains_2021.

#figure(caption: [
  Rubber tires on a train undercarriage @martins-manteiga_metro_2011
], image("images/rubber_tires.jpg", height: 6in))

Adding on to practical and technological concerns, there were many political motivations behind the building of the metro system. As mentioned, one of the key ideas that contributed to the approval of the project was the use of rubber tires, which provided a connection to Paris's metro system. This design choice was made in the context of political and social changes in Quebec during the 1960s, known as the Quiet Revolution @spieler_trains_2021. During this time, the new provincial government of Quebec oversaw the modernization of infrastructure and institutions and an emphasis on the province's French identity. Jean Drapeau, the mayor who approved the construction of the metro, only did so after being convinced of its ability to boost national identity and pride @gilbert_subways_2015. There were also several political factors influencing the placement of the original stations and lines. The city was aiming to minimize disruption from the construction, limiting potential station placements that would heavily inconvenience local areas. Additionally, the municipal government's unwillingness to adopt changes proposed by neighboring municipalities prevented it from expanding outside the bounds of the city @gilbert_penser_2014.

This contributed to one of the major weaknesses of the metro: its limited support for suburbs. While there are some connections through bus routes and the province's commuter rail system, Montreal is much less connected to its surroundings than Toronto or Ottawa. This is partially due to a lack of funding, as Montreal, neighboring municipalities, and the provincial government are all hesitant to invest in these connections @spieler_trains_2021. This weakness has been known about for decades, and a major improvement was made with the extension of the orange line into Laval, which was announced in 1998 and completed in 2007 @devaux_anticipation_2017. This extension provides a good case study to determine how the metro interacts with the economy of Montreal and Quebec at large, which is exactly what #ac[@devaux_anticipation_2017] did. While they found that "from a global perspective (all stations combined), no significant effect [on property value] is observed," they did see positive effects localized around one particular station, and speculated that there may have been a larger effect on commercial properties @devaux_anticipation_2017[p. 17].

== The Metro is Under Active Development
//For future - try to find more non-STM sources that provide a less positive take?
// - REM expansions
There are many improvements to the Montreal metro currently being planned or constructed. STM hopes that these will help the metro reflect the qualities of good transit system, such as reliability, accessibility, and urban connectedness. These improvements include accessibility upgrades to stations for people with disabilities, the expansion of lines, and quality of life upgrades, which all work to promote a better future for the metro. Using the project rationale put forth by the STM, a willingness to achieve an effective metro system for Montreal is evident in their choices.

Although reliability traditionally falls under the realm of general quality of life and preventative maintenance, the initiative to promote reliability and its capacity for the future sets the tone for metro excellence. While the municipal transport system will always have minor maintenance and construction, the construction of a new bus service terminal shows the STM's commitment to improvement in this field. The Bellechasse Transportation Center has reached significant completion and has begun demobilizing the construction site for opening soon. The center will consist of two interconnected buildings: an underground building where buses will be parked and maintained, and a second building which will house administrative offices and services required for employees @noauthor_centre_nodate. Promoting the sustainability and longevity of public transportation through this hub shows Montreal's willingness and initiative to improve and better suit and serve its people.

Stations such as Édouard-Montpetit are examples of the STM promoting inclusivity and accessibility for passengers who would otherwise experience significant hardship using the metro @noauthor_edouard-montpetit_nodate. With elevator installation, all passengers will have an easier time accessing the metro, but they will be particularly useful to passengers with disabilities or those who are carrying strollers. The accessibility improvements are possible due to additional subsidies announced by the federal and provincial governments to have 30 accessible stations by 2025.

Another addition to the metro is the Blue line project, which sets the stage for future expansion plans through 2030. Because the Blue line project is taking shape in densely built neighborhoods, the project office is intent on integrating it seamlessly into the living environments through which it will pass. There is a strong commitment to delivering a project that is up to the standards of residents and customers alike, and that will coexist positively with the community both while construction is underway and when the new infrastructure is in operation @noauthor_centre_nodate. Connecting five new stations across six kilometers of rail and two bus terminals in the area all serve to show the approach to metro expansion and locational accessibility that the STM is looking for. Another project still in early development is the addition of a new pink line, which is planned to travel from Montréal-Nord through downtown Montreal, ending on the southern end of Montreal island @henriquez_pink_2021.

With all these examples in mind, the vision of promoting good metro services can be seen as the STM makes conscious decisions to promote accessibility and reliability, whether that be physically or geographically. By expanding the Blue line, the thought of increasing service to better the Montreal metro system is shown through the efforts of the STM. Especially with the Blue line going into dense neighborhoods, it serves as a terminal to connect and grow ridership to the rest of the downtown cityscape. The general quality of life upgrades also serve to benefit the public and increase accessibility to its users, and allow for more individuals to take part in the service offered by the metro.

== The Metro is Efficient and Frequent
- Jackson
- metro wait time
- speed from stop to stop 
- can get crowded in rush hour
- open 20 hours a day

The metro is a great public transportation system. With a good system there are plenty of positives followed by some negatives. Throughout our time researching the Montreal Metro the most common feedback received from our interviews, ethnography, and surveys is the metro has good frequency and efficiency. 

== The Metro is Well Connected to the City and Other Modes of Transit
//- Dylan
//- Coverage and integration of buses, rem in stations, artm payments/ OPUS
 //- artm in terms of usage, not history
 //- downsides of zonage and length of passes
 //- Coverage map
  //- 5, 10, 15 minute walks
  //- REM in west, blue line in the east
 //- bus terminals at big stations, cote vertu, longueuil, atwater, 
//- Service area based on pop. demographics, density, wealth, etc.

One of the main reasons the Montreal Metro is so successful is its seamless multimodal approach to public transit and extensive operational coverage, all in tandem with other agencies beyond the STM. Cooperation regarding the metro system involves both ARTM management and government support at multiple levels, helping to promote a more robust metro system within Montreal. Since the Montreal Metro can't cover all of the metropolis, other means have to cover the slack, such as the bus networks managed by the STM, RTL, STL, and EXO, and the REM and EXO commuter rails. However, all these services work together under the ARTM through reallocation of government funding to provide a seamless transit system, both physical and economic. Government support for a unified public transit network helps contribute to a system that better serves the population through the interest of the provincial and municipal governments, along with the Chamber of Commerce of Metropolitan Montreal.
- input maps of coverage, bus networks at stations w metro/rem/train
- talk about OPUS cards and all mode fairs

== The Metro Needs Maintenance
// - Dashiell
// - Stations in disrepair
// - Second oldest train cars (in the world?) still in use
// (https://www.stm.info/en/node/3736/azur-metro-cars)
// - 45 min communications breakdown while we were here (https://www.cbc.ca/news/canada/montreal/montreal-metro-shutdown-9.7082947)
//   - Also yellow line
// - REM having various weather related problems

The metro, despite being an incredibly useful and efficient means of transportation for the residents of the greater Montreal metropolitan area and tourists alike, needs some love. The STM is keenly aware of this fact, but there is little they can do without support from the provincial government and/or the ARTM. For one, of the two models of train car currently in use, the oldest one is now over 50 years old, and was only expected to last 40 years. The STM has asked Quebec to contribute \$40 million to start the project to replace these old trains and warned that the project must be completed by 2036 @cbc_montreal_2025. Another issue is the stations: as of May 2025, 31 of the 68 metro stations were in bad or very bad condition, and stations have had to be shutdown for up to six weeks at a time due to unsafe conditions @dubreuil_nearly_2025.

In our experience, stations with the worst ratings such as De l'Église look okay to an untrained observer, and our guess is that the issues are internal and structural rather than external. We have not yet been affected by them, but we have heard about various breakdowns and issues, including a communications issue which stopped the whole system for around an hour during our stay. /*SOURCE HERE?*/ We have also collected old black-and-white photos of various stations, and are in the process of taking the equivalent photos now to see what, if anything, has changed in the stations over the years.

Even the REM, which is quite new and modern has been having problems related to the weather, which both Professor Townsend and Brian Nash told us about. Brian also stressed how much maintenance is needed, and how little funding there is for such projects. He pointed out that, while the blue line extension is good, it will put even more stress on the already limited maintenance budget. From STM's survey and what Brian said, we know that one of the most cited issues people have with the metro is safety concerns. While not directly related to maintenance, we think it could make sense to talk about this here. There is also an STM brief where they mention adding more security guards to stations, and urge the province to spend more money on helping the homeless.


#pagebreak()
= Recommendations

RECOMMENDATIONS  HERE
- For Montreal
- What other cities can learn

= Conclusion

CONCLUSION HERE

#pagebreak()

#set par(leading: 1em, spacing: 1.25em)
#bibliography("sources.bib", style: "apa")

#pagebreak()

= Annex

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
#{
  set par(leading: .8em)
  figure(
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
      [Houston], [Houston, TX], [Metropolitan Transit Authority of Harris County, Texas]
    ),
    caption: [Metropolitan Area Name and Largest Transit Agency for Each City]
  )
}