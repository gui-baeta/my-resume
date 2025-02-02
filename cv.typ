#let HRULE_HEIGHT = 0.3em
#let HEADINF_FONT = "Libertinus Serif"
#let SECTION_HEADING_SIZE = 13pt
#let SECTION_HEADING_WEIGHT = "bold"
#let SECTION_HEADING_HRULE_STROKE = 0.75pt + black.lighten(25%)
#let SECTION_HEADING_SPACE_ABOVE = 0.9em
#let SECTION_HEADING_SPACE_BELOW = 0.4em

#set document(
  author: "Guilherme Fontes",
  title: "Guilherme Fontes CV",
  keywords: (
    "CV",
    "Curriculum"
    ),
  date: none,
)

#let header = context {
    set align(center + horizon)
    let margin = page.margin
    if type(margin) != dictionary {
      // Single value
      margin = (left: margin, right: margin)
    }
    for key in ("left", "right") {
      if margin.at(key, default: auto) == auto {
        panic("No margin value found for `" + key + "`")
      }
    }
    grid(
      // fill: blue,
      columns: (1fr), 
      rows: (1fr, 2fr, 1fr, 1fr),
      row-gutter: 3pt,
      "",
      text(size: 20pt, weight: "extrabold","Guilherme Fontes"),
      text(size: 14pt, weight: "semibold","Dedicated Software Engineer & Proven System Administrator"),
      grid(
        columns: (auto,auto,auto,auto),
        column-gutter: 8pt,
        text(size: 12pt,"(+351) 924 394 689"),
        text(size: 12pt,"guilhermebaetacampos@proton.me"),
        text(size: 12pt,"github.com/gui-baeta"),
        text(size: 12pt,"linkedin.com/in/guibaeta"),
      )
    )
  }

#set page(
  paper: "us-letter",
  fill: color.hsl(45deg, 80%, 85%, 100%),
  margin: (top: 10em, bottom: 5em, left: 2em, right: 2em),

  header: header,
)

#set par(
  justify: true,
  leading: 0.52em,
)

#set text(size: 13pt, fill: color.hsl(0deg, 0%, 3%))

#let hrule(stroke: 1pt + black) = {
  block(
    above: HRULE_HEIGHT,
    below: 0em,
    breakable: false,
    line(length: 100%, stroke: stroke)
  )
}

// TODO Heading could be boxed instead of an actual Heading.
//      It would be easier to remove the extra space between
//       the heading and the rest of the document
#set heading(
  numbering: none,
  outlined: true,
  bookmarked: true,
)
#show heading.where(level: 1): it => {
    block(
      above: SECTION_HEADING_SPACE_ABOVE,
      below: SECTION_HEADING_SPACE_BELOW,
      breakable: false,
      [
        #text(size: SECTION_HEADING_SIZE, weight: SECTION_HEADING_WEIGHT, font: HEADINF_FONT)[
          // #context counter(heading).display()
          #upper(it.body)
        ]
        #hrule(stroke: SECTION_HEADING_HRULE_STROKE)
      ]
    )
  }

= Summary
#set text(size: 11pt)
Strong foundation in distributed systems and security, complemented by system administration experience.
Skilled in Linux,
C/C++, Rust, Java, CI/CD practices, and scripting. I bring experience in cloud development, IaC, container technologies, and
integration of systems and services. I thrive in dynamic environments, solving complex challenges with perseverance,
creativity, and teamwork. Always seeking to contribute to innovative and impactful projects.

= Experience
Capgemini Engineering, Lisbon, Portugal (11/2024 - Present)
Systems & Automation Engineer Consultant in a major ISP.
  - Owning a RAG project focused on substantially improving documentation accessibility and augmenting internal processes.
  - Creation of CI/CD pipelines, increasing maintanability substantially and reduce impact of human error on monotonous procedures.
  - Implementation of Infrastructure as Code for cloud services such as Cloudflare, maintaining a history and safeguarding configuration changes.
  - Automation using APIs, scripting, and containerization.

SCDEEC, IST, Lisbon, Portugal (09/2022 - 03/2024)
System Administrator
  - Maintained critical resources and services, supporting over 200 daily users, including course evaluation systems, Laboratory
    entryway and lift access control, allocating and providing compute power for academic purposes, and over 120 Linux/
    UNIX and Windows hosts and VMs.
    - Supported over 200 daily users with services and Linux/Windows hosts.
    - Automated personnel access processes, improving efficiency by over 95%.
    - Developed 15+ Ansible Playbooks for IaC to standardize infrastructure.
    - Documented new procedures and protocols extensively, such as Linux OS setups, services and internal tools.

Critical Software, Lisbon, Portugal (07/2022 - 08/2022)
Software Engineer intern
  - Worked in a collaborative, agile environment, and applied modern technologies and CI/CD practices.
    - Automated lighting-related events in a smart/IoT environment by integrating microcontrollers with digital embedded
      devices, and implementing cloud services with AWS Lambda and EC2 to optimise performance by oﬄoading heavier
      computations.
    - Contributed to improvements in code quality and reliability, collaborating with cross-functional teams to address and
      resolve over 15 edge-case errors, and reducing code size by 25%.

= Education
  Instituto Superior Técnico, Lisbon, Portugal,
  - M.Sc. in Computer Science and Engineering (02/2022 - 06/2024),
    - Specialised in distributed systems and cybersecurity, and developed my thesis “YAHO - Yet Another Homomorphic
      Encryption Optimiser”, a proof-of-concept compiler using search and synthesis technologies for optimal HE solutions.
  - B.Sc. in Computer Science and Engineering (09/2018 - 02/2022)

== Awards
Diploma of Merit for academic excellence in 2019/2020, Instituto Superior Técnico, Lisbon, Portugal

= Skills
  - Programming: C/C++, Rust, Python, Shell, Java, Javascript/Typescript
  - Tools: Linux/UNIX, Git, Nix, Containers, CI/CD, Databases
  - Specialized Knowledge: Distributed Systems, Networking, Cyber Security, Fault-Tolerance

= Languages
  - Portuguese (Native),
  - English (C1/Advanced)

