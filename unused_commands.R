#### UNUSED COMMANDS ####

# https://docs.moodle.org/402/en/Markdown#:~:text=Bullet%20point%20lists%20can%20be,and%20should%20not%20be%20forgotten.
# https://cran.r-project.org/web/packages/vitae/vignettes/vitae.html
# https://shaziaruybal.github.io/automate-cv-rmd/#61 : powerpoint

# Selected Experience


research <- tribble(
    ~title, ~unit, ~startMonth, ~startYear, ~endMonth, ~endYear, ~where, ~detail,
    "Researcher", "Adolescent Development Lab - Department of Psychology ", "July", 2020, "Present", NA, "Brock University", 
    "Primary research interests include investigating bi-directional associations between solitude and adolescent mental health \\begin{itemize}
        \\item Conducted a total of 10 research projects (an additional five ongoing) to provide insights into adolescent mental health using survey data from 4,000+ participants
        \\item Translate research findings into insights for technical audiences (seven published papers, 10+ conference presentations) and non-technical audiences (infographics for local and international community agencies such as WHO/PAHO and UNICEF)
        \\item Supervise and mentor four undergraduate students to successfully design a research study, collect data, and effectively disseminate findings
        \\item Facilitate meetings with a youth engagement committee (made up of approx. 10-20 adolescents) designed to advocate for youth-led research and the integration of youth in the research process
        \\item Develop and deliver a workshop to faculty and students on team collaboration, workflow, and project management using different applications (Notion, Paperpile). I create templates that allow users to share documents efficiently within a team, track task progress, and organize project outputs
        \\item Ranked first out of 160 doctoral applicants across Canada to receive a competitive scholarship based on exceptional research ability and achievements within and beyond academia 
    \\end{itemize}",
    
    "Co-Instructor", "Data Science for Academic and Applied Research - Department of Psychology", "January", 2022, "April", 2023, "Brock University", 
    "Senior-level course to teach students: \\begin{itemize}
        \\item Project database management, data cleaning, manipulation, and analyses in R
        \\item Data visualization techniques using different programs (e.g., Excel, R)
        \\item How to effectiely communicate research findings to non-technical audiences in oral and written form
    \\end{itemize}",
    
    "Researcher", "Learning in a Digital World - Department of Psychology", "September", 2018, "July", 2020, "Wilfrid Laurier University", 
    "Primary research interests were investigating gender differences in remuneration and negotiation during first-work experiences \\begin{itemize}
        \\item Supervised a team of six researchers to conduct participant recruitment, data collection (online survey and semistructured interviews), and mixed-methods analysis from 270+ adolescents and young adults
        \\item Led a team of four researchers to conduct a study on collaborative work among university students using survey data from 360 participants
    \\end{itemize}"
)

research %>%
    detailed_entries(
        with = title,
        what = unit,
        why = detail,
        when = glue::glue("{startMonth} {startYear} - {endMonth} {endYear}",.na = ""),
        where = where, .protect = F
    )

