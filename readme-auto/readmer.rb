class Readmer
  def self.create_header(pj_nm, pj_desc)
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
      > #{pj_desc}
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
    repo_name = File.basename(clone_link, ".git")
    inter_setup = <<~INTERSETUP
      ### Clone the repository
      
      ```shell
      git clone #{clone_link}
      cd #{repo_name}
      ```
    INTERSETUP
    case opx
    when '1'
      gettn_started = <<~STRT
        ## 💻 Getting Started <a name="getting-started"></a>
  
        This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app), using the [Redux](https://redux.js.org/) and [Redux Toolkit](https://redux-toolkit.js.org/) template.
      STRT
      setupx = <<~SETUPO
        ### Install
        
        - In the project directory, install the neccessary packages with the following command:
        
        ```
        npm i --legacy-peer-deps
        ```
        > The --legacy-peer-deps options is because of using some older packages of react for using an older version of React
        
        - After installing, run:
        
        ```
        npm start
        ```
        
        Runs the app in the development mode.\
        Open [http://localhost:3000](http://localhost:3000) to view it in your browser.
        
        The page will reload when you make changes.\
        
        - You may also see any lint errors in the console.
        ```
        npm test
        ````
        
        Launches the test runner in the interactive watch mode.\
        See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.
        
        - For building the application for deployment:
        ```
        yarn build
        ```
        
        Builds the app for production to the `build` folder.\
        It correctly bundles React in production mode and optimizes the build for the best performance.
        
        The build is minified and the filenames include the hashes.\
        Your app is ready to be deployed!
        
        See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.
        
        ### Learn More
        
        You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).
        
        To learn React, check out the [React documentation](https://reactjs.org/).
        
        <p align="right">(<a href="#readme-top">back to top</a>)</p>
      SETUPO
      set_str = gettn_started + inter_setup + setupx
    when '2'
      gettn_started = <<~GETSTRT
        ## 💻 Getting Started <a name="getting-started"></a>

        This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app), styled with [Tailwind CSS](https://tailwindcss.com/docs/guides/nextjs).
      GETSTRT
      setupx = <<~SETUPO
        ### Usage
        
        First, run the development server:
        
        ```bash
        npm run dev
        # or
        yarn dev
        # or
        pnpm dev
        ```
        
        Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.
        
        You can start editing the page by modifying `pages/index.js`. The page auto-updates as you edit the file.
        
        [API routes](https://nextjs.org/docs/api-routes/introduction) can be accessed on [http://localhost:3000/api/hello](http://localhost:3000/api/hello). This endpoint can be edited in `pages/api/hello.js`.
        
        The `pages/api` directory is mapped to `/api/*`. Files in this directory are treated as [API routes](https://nextjs.org/docs/api-routes/introduction) instead of React pages.
        
        This project uses [`next/font`](https://nextjs.org/docs/basic-features/font-optimization) to automatically optimize and load Inter, a custom Google Font.
        
        ### Learn More
        
        To learn more about Next.js, take a look at the following resources:
        
        - [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
        - [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.
        
        You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!
        
        ### Deploy on Vercel
        
        The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.
        
        Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.
        
        <p align="right">(<a href="#readme-top">back to top</a>)</p>
      SETUPO
      set_str = gettn_started + inter_setup + setupx
    when '3'
      gettn_started = <<~STRT
        ## 💻 Getting Started <a name="getting-started"></a>
        
        ### Prerequisites
        
        #### Check your Ruby version or install it
        
        ```shell
        ruby --version && irb
        ```
        
        The ouput should start with something like `ruby 3.1.2`
        
        If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):
        
        ```shell
        rbenv install 3.1.2
        ```
      STRT
      setupx = <<~SETUPO
        ### Install
        
        - Ensure you have PostgreSQL installed before running the application `psql --version`
        - Run `bundle install`
        - Create a `.env` file in the project's root folder to assign variable values for the psql database (linked to the config/database.yml)
        - Then run the following commands:
        ```shell
        rails db:create
        rails db:migrate
        rails server
        ```
        - Open Browser `http://localhost:3000/`
        
        ### .env File Structure
        
        See the [.env.example file](.env.example)
        
        Replacing the variable values where needed (most importantly `username` and `password`)
        
        ### Usage
        
        To run the project, execute the following command:
        
        ```sh
          rails server
        ```
        
        ### Testing
        
        To test and utilize the code, use the terminal and run ruby by inputting `irb` in the command line, or by using an extension in Visual Studio Code like _Code runner_
        
        The user then can modify and play with the files as needed
        
        <p align="right">(<a href="#readme-top">back to top</a>)</p>
      SETUPO
      set_str = gettn_started + inter_setup + setupx
    end
    set_str
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