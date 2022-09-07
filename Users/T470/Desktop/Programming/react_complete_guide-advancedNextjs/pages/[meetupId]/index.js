
import { MongoClient, ObjectId } from 'mongodb';
import Head from 'next/head';
import { Fragment } from 'react';
import MeetupDetail from '../../components/meetups/MeetupDetail';

function MeetupDetails(props) {
  return (
    <Fragment>
      <Head>
        <title>{props.meetupData.title}</title>
        <meta name='MeetupDetail' content={props.meetupData.description}></meta>
      </Head>
      <MeetupDetail
        image={props.meetupData.image}
        title={props.meetupData.title}
        address={props.meetupData.address}
        description={props.meetupData.description}
      />
    </Fragment>
  );
}

export async function getStaticPaths(){
  const client = await MongoClient.connect('mongodb+srv://Arthuro:06hmfZOeU3p4KOeI@cluster0.drtxmsb.mongodb.net/meetups?retryWrites=true&w=majority')

  const db = client.db()

  const meetupCollection = db.collection('meetups')

  const meetups = await meetupCollection.find({}, { _id: 1 }).toArray()

  client.close()

  return {
    fallback: false,
    paths: meetups.map((meetup) => ({ params: { meetupId: meetup._id.toString()}})) 
  }

}

export async function getStaticProps(context) {
  const meetupId = context.params.meetupId

  const client = await MongoClient.connect('mongodb+srv://Arthuro:06hmfZOeU3p4KOeI@cluster0.drtxmsb.mongodb.net/meetups?retryWrites=true&w=majority')

  const db = client.db()

  const meetupCollection = db.collection('meetups')

  const selectedMeetup = await meetupCollection.findOne({_id: ObjectId(meetupId)})

  client.close()

  return {
    props: {
      meetupData: {
        id: selectedMeetup._id.toString(),
        title: selectedMeetup.title,
        address: selectedMeetup.address,
        image: selectedMeetup.image,
        description: selectedMeetup.description
      }
    }
  }
}

export default MeetupDetails