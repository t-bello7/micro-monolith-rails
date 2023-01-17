import * as React from 'react';
import { useGetGreetingQuery } from '../services/greeting';

const Greeting = () => {
  const { data, error, isLoading } = useGetGreetingQuery('greetings.json');
  return (
    <div>
      {error ? (
        <>Oh no, there was an error</>
      ) : isLoading ? (
        <>Loading...</>
      ) : data ? (
        <>
          <h3>{data.name}</h3>
        </>
      ) : null}

    </div>
  );
};

export default Greeting;
