\name{extract}
\alias{urlExtract}
\alias{shorturl2url}
\alias{patternExtract}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Estrazione di regular expression (e quindi users, hashtag) e shorturl}
\description{\code{patternExtract} estrae i pattern contenuti in in \code{testo}. \code{urlExtract} estrae e converte gli shorturl contenuti in \code{testo} in url.
\code{shorturl2url} sostituisce gli shorturl contenuti in \code{testo} in url.
}
\usage{
shorturl2url(testo,id=names(testo))
urlExtract(testo, id = names(testo))
patternExtract(testo, pattern="@\\w+", id = names(testo))}
\arguments{
\item{testo}{Vettore (eventualmente con nomi) di testi contenenti shorturl.}
\item{pattern}{stringa di testo da cercare ed estrarre. \code{"@\\\\w+"} (default) estrae i riferimenti ad uno user nei tweets. \code{"#\\\w+"} estrae gli hashtag.}
\item{id}{se \code{testo} e' un vettore con nomi, questi vengono presi come id. In caso contrario, gli id sono numeri progressivi da 1 a length(testo)}
}
%\details{
%}
\value{
\code{patternExtract} restituisce un \code{data.frame} con colonne:id, pattern

\code{urlExtract} restituisce un \code{data.frame} con colonne:id, shorturl e url
}
\author{
Dario Solari, Livio Finos
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
 \dontrun{
 testo=c("Influenza Vaccination | ONS - Oncology Nursing Society http://t.co/924sRKGBU9 See All http://t.co/dbtPJRMl00",See All http://t.co/dbtPJRMl00")
 shorturl2url(testo,id=names(testo))
urls=urlExtract(testo)
patternExtract(c("@luca @paolo: buon giorno!", "@matteo: a te!"), pattern="@\\w+")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line