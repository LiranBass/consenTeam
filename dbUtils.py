import psycopg2


def interact_db(query, query_type: str):
    return_value = False
    connection = psycopg2.connect(host='ec2-107-22-83-3.compute-1.amazonaws.com', user='qzcylhbmxhdipr',
                                  password='23b6d0ed8e719ab7e90db337ecffecae3cddd840d89753abdf954e6f3759d7c2',
                                  database='dcdinr9e1o5esu')
    cursor = connection.cursor()
    cursor.execute(query)

    if query_type == 'commit':
        connection.commit()
        return_value = True

    if query_type == 'fetch':
        query_result = cursor.fetchall()
        return_value = query_result

    connection.close()
    cursor.close()
    return return_value