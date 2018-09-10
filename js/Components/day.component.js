class DayComponent extends React.Component {

	state = {
		holidays: []	// For holidays of this given day
	}

	// On component mount make connection
	componentDidMount = () => {
		// 					NB!
		// Localize the server string here
		var server = 'http://localhost/test_prmr/';
		var action = 'php/Actions/get_holidays_daily.php?date=';
		var requestHolidays = this.props.date.getFullYear()+'-'+(this.props.date.getMonth()+1)+'-'+this.props.date.getDate();
		// var requestHolidays = '2018-01-01';				// for testing
		axios.get(server+action+requestHolidays).then(res => {
			this.setState({
				holidays: holidays.res.records
			});
		})
	}

	// On unmount drop connection
	componentWillUnmount = () => {
		this.serverRequest.abort();
	}

	render() {

		// Prep holiday output
		var retrievedHolidays = this.state.holidays.map(function(holiday) {
			return (
				<HolidayComponent data={holiday} />
			);
		})

		// Prep calendar day indicator
		function prepDate(date) {
			var dayName = date.getDay();
			var day = date.getDate();
			var month = date.getMonth()+1;
			var year = date.getFullYear();
			if (day.toString().length < 2) day = '0' + day;
			if (month.toString().length < 2) month = '0' + month;
			switch (dayName) {
				case 1: dayName = 'Monday'; break;
				case 2: dayName = 'Tuesday'; break;
				case 3: dayName = 'Wednesday'; break;
				case 4: dayName = 'Thursday'; break;
				case 5: dayName = 'Friday'; break;
				case 6: dayName = 'Saturday'; break;
				case 0: dayName = 'Sunday'; break;
			}
			return {
				dayName: dayName,
				day: day,
				month: month,
				year: year
			}
		}
		var dayOutput = prepDate(this.props.date);

		// Output
		return (
			!retrievedHolidays.length
				? 
				<div>{dayOutput.dayName}, {dayOutput.day}-{dayOutput.month}-{dayOutput.year}
					<div className='holiday_not_found'>{retrievedHolidays}</div>
				</div>
				:
				<div>{dayOutput.dayName}, {dayOutput.day}-{dayOutput.month}-{dayOutput.year}
					<div className='holiday_found'>{retrievedHolidays}</div>
				</div>
		);
	}
}