import 'package:hasura_connect/hasura_connect.dart';

class CustomHasuraConnect {
  static HasuraConnect getConnect() {
    return HasuraConnect("https://witty-boar-47.hasura.app/v1/graphql",
        headers: {
          'x-hasura-admin-secret':
              'gqNR3RNTiBxkzqdMabv7Q0FLKKJJQYzRpwtPZNDcyrFVHXYrBB13iiVdS3vk6uYx'
        });
  }
}
