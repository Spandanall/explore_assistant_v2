connection: "autozone_poc"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: automotive_sentiment_analysed_final_updated {
  label: "Automotive Sentiment Analysis"
  join: automotive_reviews_summary_updated {
    sql_on: ${automotive_sentiment_analysed_final_updated.product_name} = ${automotive_reviews_summary_updated.product_name} ;;
    relationship: many_to_one
    type: left_outer
  }
}
