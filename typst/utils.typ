#let pc = (citation) => {
  set cite(form: "prose")
  citation
}

#let ac = (citation) => {
  set cite(form: "author")
  citation
}

#import "@preview/showybox:2.0.4": showybox

#let infobox_inner = showybox.with(
  above: 3em,
  below: 3em,
  frame: (
    title-color: blue.lighten(70%),
    body-color: blue.lighten(90%),
    border-color: blue,
    thickness: 1.5pt,
  ),
  title-style: (
    boxed-style: (
      anchor: (
        x: center,
        y: top,
      ),
      offset: (y: -8pt)
    ),
    color: black,
    weight: "bold",
  ),
  shadow: (
    offset: 3pt
  )
)

#let infobox(title, body) = infobox_inner(
  title: {
    set par(spacing: .5em, first-line-indent: 0em)
    box(inset: (right: 5pt, left: -5pt), align(left + horizon, image("images/info_icon.png", width: 16pt))) + box(height: 16pt, align(center + horizon, title))
  },
  {
    set par(leading: 1em)
    body
  }
)