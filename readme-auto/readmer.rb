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

  def self.create_setup(clone_link, opx)
    link_basename = File.basename(clone_link, ".git")
    repo_name = link_basename[link_basename.rindex('/')+1..-1] # extract the portion after the last '/'
    inter_setup = <<~INTERSETUP
      ### Clone the repository
      
      ```shell
      git clone #{clone_link}
      cd #{repo_name}
      ```
    INTERSETUP
    case opx
    when '1'
      ## 💻 Getting Started <a name="getting-started"></a>

      This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app), using the [Redux](https://redux.js.org/) and [Redux Toolkit](https://redux-toolkit.js.org/) template.
    end
  end

  def self.create_footer()
    footer = <<~FOOTER
      ## 👥 Authors <a name="authors"></a>
      
      👤 **Lucas Mullen**
      
      - GitHub: [@mullenlucas](https://github.com/mullenlucas)
      - LinkedIn: [LinkedIn](https://www.linkedin.com/in/lucas-mullen-447312119/)
      
      <p align="right">(<a href="#readme-top">back to top</a>)</p>
      
      ## 🤝 Contributing <a name="contributing"></a>
      
      Contributions, issues, and feature requests are welcome!
      
      Feel free to check the [issues page](../../issues/).
      
      <p align="right">(<a href="#readme-top">back to top</a>)</p>
      
      ## ⭐️ Show your support <a name="support"></a>
      
      Give a ⭐️ if you like this project!
      
      <p align="right">(<a href="#readme-top">back to top</a>)</p>
      
      ## 🙏 Acknowledgments <a name="acknowledgements"></a>
      
      - Hat tip to anyone whose code was used
      - Inspiration

      <p align="right">(<a href="#readme-top">back to top</a>)</p>
      
      ## 📝 License <a name="license"></a>
      
      This project is [MIT](./LICENSE.md) licensed.
      
      <p align="right">(<a href="#readme-top">back to top</a>)</p>
    FOOTER

    footer
  end
end