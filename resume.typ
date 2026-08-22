#let config = yaml("config.yaml")

#set page(paper: "a4", margin: 1.25cm)
#set text(font: "New Computer Modern", lang: config.lang, size: 10pt)
#set par(justify: true, leading: 0.5em)

#show link: it => text(fill: rgb("#3333FF"))[#it]

#show heading: it => block(below: 0.6em, above: 1.2em)[
  #set text(weight: "regular", size: 11pt)
  #smallcaps(it.body)
  #v(-0.75em)
  #line(length: 100%, stroke: 1pt)
]

#align(center)[
  #text(size: 23pt, weight: "bold")[#smallcaps(config.name)] \
  #v(-0.25em)
  #link("mailto:" + config.email)[#config.email] |
  #link("https://" + config.website)[#config.website] |
  #link("https://" + config.github)[#config.github] |
  #link("https://" + config.telegram)[#config.telegram]
]

== #config.education.title

#for education in config.education.items [
  #block()[
    *#education.institution* #h(1fr) #education.location \
    #education.degree #h(1fr) #education.date
  ]
]

== #config.skills.title

#for skill in config.skills.items [
  *#skill.category*: #skill.list \
]

== #config.projects.title

#for project in config.projects.items [
  #block()[
    *#project.name* | _ #project.tech _ #h(1fr) #project.date \
    #v(-0.6em)
    #text(size: 9pt)[#link("https://" + project.link)[#project.link]]
    #v(-0.4em)
    #for bullet in project.bullets [
      - #bullet
    ]
  ]
]

== #config.achievements.title

#for achievement in config.achievements.items [
  *#achievement.title*, #achievement.role #h(1fr) #str(achievement.year) \
]
