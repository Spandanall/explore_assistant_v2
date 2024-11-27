project_name: "explore_assistant_demo_sp"
application: helloworld-js {
  label: "Helloworld (JavaScript)"
  url: "https://localhost:8080/bundle.js"
  entitlements: {
    core_api_methods: ["me"]
  }
}
application: explore_assistant {
  label: "Explore Assistant Extension Framework - Sp"
  # url: "https://localhost:8080/bundle.js"
  file: "bundle.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
    # external_api_urls: ["cloud function url"]
  }
  }
application: explore_sb_assistant_lh {
    label: "Explore Assistant Extension Localhost - Sp"
    url: "https://localhost:8080/bundle.js"
    #file: "bundle.js"
    entitlements: {
      core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query"]
      navigation: yes
      use_embeds: yes
      use_iframes: yes
      new_window: yes
      new_window_external_urls: ["https://developers.generativeai.google/*"]
      local_storage: yes
      # external_api_urls: ["cloud function url"]
    }
}
