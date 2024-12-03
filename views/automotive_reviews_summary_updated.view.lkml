view: automotive_reviews_summary_updated {
  sql_table_name: `pandera-bi-demo.sentiment.Automotive_reviews_summary_updated` ;;

  dimension: issues {
    type: string
    sql: ${TABLE}.issues ;;
  }
  dimension: positives {
    type: string
    sql: ${TABLE}.positives ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: review_text {
    type: string
    sql: ${TABLE}.review_text ;;
  }
  dimension: threshold {
    type: number
    sql: ${TABLE}.threshold ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
