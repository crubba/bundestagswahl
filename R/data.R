#' Votes.
#'
#' Complete data on German Bundestag elections form 1949 to 2013
#' @docType data
#' @keywords datasets
#' @name bt_votes
#' @usage data(bt_votes)
#' @format A data frame with 47840 rows and seven variables: 
#' \describe{
#' \item{\code{year}}{year of the election}
#' \item{\code{bundesland}}{the Bundesland of the \code{district}}
#' \item{\code{district}}{the district name}
#' \item{\code{wk}}{the district number}
#' \item{\code{mandate}}{type of mandate, cvote = Candidate Vote, pvote = Party Vote}
#' \item{\code{party}}{the party name}
#' \item{\code{per}}{the percentage of votes for the \code{party}}
#' }
#' @source \url{http://www.bundeswahlleiter.de/en/}
#' @details In the 1949 election both tiers were merged into a single vote. In the dataset this vote is registered as the party vote
"bt_votes"

#' Candidates.
#'
#' Information on candidates in Bundestag elections. Currently, information are
#' only available from 1980 onward.
#'
#' @usage data(bt_candidates)
#' @format A data frame with 18 variables:
#' \describe{
#' \item{\code{year}}{year of the election}
#' \item{\code{wp}}{numeric information on the legislative period}
#' \item{\code{bundesland}}{the Bundesland in which the candidate applied}
#' \item{\code{wk}}{the district number}
#' \item{\code{party}}{the party name}
#' \item{\code{lname}}{candidate's last name}
#' \item{\code{fname}}{candidate's first name}
#' \item{\code{age}}{candidate's age}
#' \item{\code{gender}}{candidate's gender}
#' \item{\code{dr}}{does candidate hold a PhD?}
#' \item{\code{adel}}{does candidate have a noble name?}
#' \item{\code{german}}{does candidate have a german name?}
#' \item{\code{on_list}}{is candidate' name on the party list?}
#' \item{\code{on_wk}}{does the candidate run in a district?}
#' \item{\code{toplevel}}{did candidate obtain high-level political office?}
#' \item{\code{mdl}}{was candidate member of a state parliament before?}
#' \item{\code{mdb}}{was candidate member of the Bundestag before?}
#' }
#' @source \url{http://www.bundeswahlleiter.de/en/} + self compiled from various sources
"bt_candidates"

#' District information
#'
#' Demographic and social information on Bundestag districts
#'
#' @usage data(bt_districts)
#' @format A data frame with nine variables:
#' @source \url{http://www.bundeswahlleiter.de/en/} 
#'
"bt_districts"

#' Adjacent districts
#'
#' Closeness of Bundestag districts
#'
#' @usage data(bt_districts_neighbors)
#' @format A data frame:
#' \describe{
#' \item{\code{id}}{number for district 1}
#' \item{\code{id_from}}{number for district 2}
#' \item{\code{dis}}{distance between \code{id} and \code{id_from}}
#' \item{\code{year}}{year of the election}
#' \item{\code{wp}}{the legislative period}
#' }
"bt_districts_neighbors"


#' District Maps
#'
#' Maps of Bundestag districts
#'
#' @usage data(bt_districts_maps)
#' @format A data frame with 6 variables:
#' \describe{
#' \item{\code{year}}{the election year}
#' \item{\code{district}}{the district name}
#' \item{\code{wk}}{the district number}
#' \item{\code{long}}{longitudional info}
#' \item{\code{lat}}{latidutional info}
#' }
#' @details Polygon format
"bt_districts_maps"

