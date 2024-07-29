# Flight Booker

Flight Booker is a Ruby on Rails application that allows users to search for flights and book them. This project was completed as part of [The Odin Project](https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker) curriculum.

## Features

- Search for flights based on departure airport, arrival airport, date, and number of passengers
- View available flights matching search criteria
- Book flights for multiple passengers
- Responsive design using Bootstrap

## Technologies Used

- Ruby 3.x
- Rails 7.x
- SQLite3
- Bootstrap 5

## Setup

To run this project locally:

1. Clone the repository
   ```
   git clone https://github.com/your-username/flight-booker.git
   cd flight-booker
   ```

2. Install dependencies
   ```
   bundle install
   ```

3. Set up the database
   ```
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. Start the Rails server
   ```
   rails server
   ```

5. Visit `http://localhost:3000` in your web browser

## Project Structure

- `app/models`: Contains the data models (Airport, Flight, Booking, Passenger)
- `app/controllers`: Contains the controllers for Flights and Bookings
- `app/views`: Contains the view templates for the application
- `db/migrate`: Contains the database migration files

## Future Improvements

- Add user authentication
- Implement email notifications for bookings
- Add pagination for flight search results
- Integrate with a real flight data API
- Add unit and integration tests

## Contributing

Contributions, issues, and feature requests are welcome! Feel free to check [issues page](https://github.com/Vladimire87/flight-booker/issues).

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Acknowledgments

- [The Odin Project](https://www.theodinproject.com/) for providing the project idea and guidelines
- [Ruby on Rails Guides](https://guides.rubyonrails.org/) for excellent documentation