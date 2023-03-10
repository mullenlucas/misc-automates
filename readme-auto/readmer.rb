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

  def self.detailer(type, urld, title)
    dets = <<~MINIHERA
      <details>
        <summary>#{type}</summary>
        <ul>
          <li><a href='#{urld}'>#{title}</a></li>
        </ul>
      </details>
    MINIHERA
    dets
  end

  def self.create_tech(techx, opt)
    tech_template = <<~TECH_TEMPL
      ## 🛠 Built With <a name="built-with"></a>
      
      ### Tech Stack <a name="tech-stack"></a>
      
      > This Web App was built with #{techx}, using Gitflow and customized Linters
    TECH_TEMPL

    case opt
    when '1'
      tech_template += detailer(
        'Client', 'https://reactjs.org/', 'React') + detailer(
        'Server', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript', 'JavaScript')
    when '2'
      tech_template += detailer(
        'Client', 'https://reactjs.org/', 'React') + detailer(
        'Server', 'https://nextjs.org/', 'NextJS')
    when '3'
      tech_template += detailer(
        'Client', 'https://www.ruby-lang.org/en/', 'Ruby') + detailer(
        'Server', 'https://rubyonrails.org/', 'Rails')
    end

    tech_template
  end
end