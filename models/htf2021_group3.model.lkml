connection: "htf2021"

# include all the views
include: "/views/**/*.view"

datagroup: htf2021_group3_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: htf2021_group3_default_datagroup

explore: bnbcheckins {}

explore: appearance {}

explore: companies {}

explore: company_employees {}

explore: event_reviews {
  join: events {
    type: left_outer
    sql_on: ${event_reviews.event_id} = ${events.id} ;;
    relationship: many_to_one
  }
}

explore: ages {}

explore: aib_bnbs_nyc {}

explore: bnbreservations {}

explore: events {}

explore: financial_status {}

explore: physical_characteristics {}

explore: nationalities {}

explore: gender {}

explore: locations {}

explore: religions {}

explore: people {
  join: ages {
    type: left_outer
    sql_on:${people.id}=${ages.id};;
    relationship: many_to_one
  }
}

explore: roles {}

explore: ride_passengers {}

explore: sub_departments {}

explore: taxi_rides {
  join: taxis {
    type: left_outer
    sql_on: ${taxi_rides.taxi_id} = ${taxis.id} ;;
    relationship: many_to_one
  }
}

explore: ride_info {}

explore: taxis {}
