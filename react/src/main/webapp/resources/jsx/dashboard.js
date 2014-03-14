/** @jsx React.DOM */

var Application = React.createClass({
    render: function () {
        return (
            <a class="dashboard_app_link" href="app_view.html">
                <div class="dashboard_app dashboard_box">
                    <i data-bind="css: {'fa-star': favourite(), 'fa-star-o': !favourite()}" class="fa"></i>

                    <div class="dashboard_app_icon">
                        <img src="http://localhost/img/app/icones_account_closing_64_44.png" data-bind="attr: {alt: name, title: name}"/>
                    </div>
                    <div class="dashboard_app_label">{this.props.name}</div>
                    <div class="dashboard_app_label" style="diplay:none">{this.props.children}</div>

                </div>
            </a>
            );
    }
});

var CommentList = React.createClass({
    render: function () {
        var nodes = this.props.data.map(function (app) {
            return <Application name={app.name}>{app.description}</Application>;
        });

        return (
            <div className="commentList">
        {nodes}
            </div>
            );
    }
});

var CommentForm = React.createClass({
    render: function () {
        return (
            <div className="commentForm">
            Hello, world! I am a CommentForm.
            </div>
            );
    }
});

var CommentBox = React.createClass({
    getInitialState: function() {
        return {data: []};
    },
    loadCommentsFromServer: function () {
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
        this.loadCommentsFromServer();
    },
    render: function () {
        return (
            <div className="commentBox">
                <h1>Comments</h1>
                <CommentList data={this.state.data}/>

            </div>
            );
    }
});

React.renderComponent(
//    <CommentBox url="resources/jsx/data.json"/>,
    <CommentBox url="/dashboard/config/petzi"/>,
    document.getElementById('content')
);
