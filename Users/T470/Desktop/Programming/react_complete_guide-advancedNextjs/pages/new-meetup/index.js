import Head from 'next/head';
import { useRouter } from 'next/router';
import React, { Fragment } from 'react';
import NewMeetupForm from '../../components/meetups/NewMeetupForm' 


function NewMeetupPage(props) {
    const router = useRouter()

    const addMeetupHandler = async(enteredMeetupData) => {
        const response = await fetch('/api/new-meetup',{
            method: 'POST',
            body: JSON.stringify(enteredMeetupData),
            headers: {
                'Content-Type': 'application/json'
            }
        })
        
        const data = await response.json()
        console.log(data)

        router.push('/')
    }


    return(
        <Fragment>
            <Head>
                <title>Add a new meetup</title>
                <meta name='addMeetup' content='Add new meetups and create new networking opportunities'></meta>
            </Head>
            <NewMeetupForm onAddMeetup={addMeetupHandler}/>
        </Fragment>
    ) 
}

export default NewMeetupPage;