/** @jsx React.DOM */

var LiveSearch = React.createClass({
    handleChange: function(event) {
        var value = event.target.value;
        console.log('value='+ value);
        this.props.onUserInput(
            value
        );
    },
    render: function() {
        return (
            <div>
                <input type="text" value={this.props.filterText} onChange={this.handleChange} ref="filterTextInput"/>
                <i class="fa fa-search"></i>
            </div>
        );

    }
});
var Application = React.createClass({
    render: function () {
        var classes = 'fa ';
        if (this.props.app.favourite) {
            classes += 'fa-star ';
        } else{
            classes += 'fa-star-o ';
        }

        return this.transferPropsTo(
            <a className="dashboard_app_link" href="app_view.html">
                <div className="dashboard_app dashboard_box">
                    <i className={classes}></i>

                    <div className="dashboard_app_icon">
                        <img src="http://localhost/img/app/icones_account_closing_64_44.png" />
                    </div>
                    <div className="dashboard_app_label" alt={this.props.app.description} title={this.props.app.description}>{this.props.name}</div>
                </div>
            </a>
            );
    }
});

var AppList = React.createClass({
    render: function () {
        var nodes = [];
        this.props.data.forEach(function(app) {
            if (app.name.toLowerCase().indexOf(this.props.filterText.toLowerCase()) === -1) {
                return;
            }
            nodes.push(<Application name={app.name} app={app}>{app.description}</Application>);
        }.bind(this));
        return (
            <div className="applications">
                {nodes}
            </div>
            );
    }
});

var TagsFilter = React.createClass({
    render:function(){
        return (
                <ul id="filter_list">
                    <li><a href="#" class="selected">All</a></li>
                    <li><a href="dashboard_favorite_apps.html"><i class="fa fa-star"></i> My favorites</a></li>
                    <li><a href="#">Banking</a></li>
                    <li><a href="#">Investment</a></li>
                    <li><a href="#">Admin</a></li>
                    <li><a href="#">Audit / Reporting</a></li>
                    <li><a href="#">Communication</a></li>
                    <li><a href="#">Employee</a></li>
                    <li><a href="#">IT / Support</a></li>
                    <li><a href="#">EFG websites</a></li>
                </ul>
        );
    }
});
var AppFilters = React.createClass({

    render: function(){
        return (
            <div id="app_filters">
                <LiveSearch filterText={this.props.filterText} onUserInput={this.props.handleUserInput}/>
                <TagsFilter/>
            </div>
            );
    }
});

var DashboardMain = React.createClass({
    handleUserInput: function(filterText) {
        this.setState({
            filterText: filterText
        });
    },
    getInitialState: function() {
        return {
            data: [],
            filterText: ''
        };
    },
    loadDataFromServer: function () {
        $.ajax({
            url: this.props.url,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                this.setState({data: data.applications});
            }.bind(this),

            error: function (xhr, status, err) {
                console.error(this.props.url, status, err.toString());
            }.bind(this)
        });
    },
    componentWillMount: function() {
        this.loadDataFromServer();
    },
    render: function () {
        return (
            <div className="applications">
                <AppFilters filterText={this.state.filterText} handleUserInput={this.handleUserInput}/>
                <AppList data={this.state.data} filterText={this.state.filterText}/>
            </div>
            );
    }
});

React.renderComponent(
//    <CommentBox url="resources/jsx/data.json"/>,
    <DashboardMain url="/dashboard/config/petzi"/>,
    document.getElementById('main-content')
);
