class Readmer
  def self.create_header(pj_nm)
    header_template = <<~HEADER_TEMPLATE
      <a name='readme-top'></a>

      <div align='center'>
        <br/>
        <h3><b>#{pj_nm}</b></h3>
      </div>
      # 📗 Table of Contents
      
      - [📖 About the Project](#about-project)
        - [🛠 Built With](#built-with)
          - [Tech Stack](#tech-stack)
          - [Key Features](#key-features)
        - [🚀 Live Demo](#live-demo)
      - [💻 Getting Started](#getting-started)
        - [Setup](#setup)
        - [Prerequisites](#prerequisites)
        - [Install](#install)
        - [Usage](#usage)
      - [👥 Authors](#authors)
      - [🤝 Contributing](#contributing)
      - [⭐️ Show your support](#support)
      - [🙏 Acknowledgements](#acknowledgements)
      - [❓ FAQ](#faq)
      - [📝 License](#license)

      # 📖 #{pj_nm} <a name="about-project"></a>
      > #{pj_nm}
    HEADER_TEMPLATE

    header_template
  end

  def self.create_tech(techx, opt)
    tech_template = <<~TECH_TEMPL
      ## 🛠 Built With <a name="built-with"></a>
      
      ### Tech Stack <a name="tech-stack"></a>
      
      > This Web App was built with #{techx}, using Gitflow and customized Linters
    TECH_TEMPL

    case opt
    when '1'
      detailx = <<~DETS
        <details>
          <summary>Client</summary>
          <ul>
            <li><a href='https://www.ruby-lang.org/en/'>Ruby</a></li>
          </ul>
        </details>
      
        <details>
          <summary>Server</summary>
          <ul>
            <li><a href="https://rubyonrails.org/">Rails</a></li>
          </ul>
        </details>
      
        <details>
          <summary>Database</summary>
            <ul>
              <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
            </ul>
        </details>
      DETS
      tech_template += detailx # Modify tech_final_template within when '1' branch
    end
    puts tech_template

    tech_template # Return tech_final_template at the end of the method
  end
end