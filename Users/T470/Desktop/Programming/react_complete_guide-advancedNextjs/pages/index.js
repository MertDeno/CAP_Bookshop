import { MongoClient } from 'mongodb';
import Head from 'next/head';
import React, { Fragment } from 'react';
import MeetupList from '../components/meetups/MeetupList'


function HomePage(props) {
    return(
      <Fragment>
        <Head>
          <title>React Meetups</title>
          <meta name='description' content='Browse a huge list of highly active React meetups' />
        </Head>
          <MeetupList meetups={props.meetups} />
      </Fragment>
    ) 
}

export async function getStaticProps() {
  const client = await MongoClient.connect(
    'mongodb+srv://Arthuro:06hmfZOeU3p4KOeI@cluster0.drtxmsb.mongodb.net/meetups?retryWrites=true&w=majority'
  )

  const db = client.db()
  const meetupCollection = db.collection('meetups')
  const meetups = await meetupCollection.find().toArray()

  client.close()

  return {
    props: {
        meetups: meetups.map((meetup) => ({
          id: meetup._id.toString(),
          title: meetup.title,
          image: meetup.image,
          address: meetup.address,
          description: meetup.description
        })
      )
    },
    revalidate: 10
  }
}

export default HomePage;