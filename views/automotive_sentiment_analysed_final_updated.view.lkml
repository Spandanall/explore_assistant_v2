view: automotive_sentiment_analysed_final_updated {
  sql_table_name: `pandera-bi-demo.sentiment.automotive_sentiment_analysed_final_updated` ;;

  dimension: asin {
    type: string
    sql: ${TABLE}.asin ;;
  }
  dimension: keywords {
    type: string
    sql: ${TABLE}.keywords ;;
  }
  dimension: parent_asin {
    type: string
    sql: ${TABLE}.parent_asin ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: review_text {
    type: string
    sql: ${TABLE}.review_text ;;
  }
  dimension: sentiment_magnitude {
    type: number
    sql: ${TABLE}.sentiment_magnitude ;;
  }
  dimension: sentiment_score {
    type: number
    sql: ${TABLE}.sentiment_score ;;
  }
  dimension_group: timestamp_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.timestamp_dt ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
