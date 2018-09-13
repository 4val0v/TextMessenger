import React, {Component} from 'react'
import {connect} from 'react-redux'
import {loadUser, updateUser} from '../../actions/userActions'
import CurrentUserInfo from './CurrentUserInfo'
import classnames from 'classnames'
import {withStyles} from '@material-ui/core/styles'
import PostList from '../../components/Post/PostList'

const styles = (theme) => ({
  ChangeUserProfileInfoCard: {
    Width: '25%',
    maxWidth: '300px',
    display: 'flex',
    flexDirection: 'column',
    justifyItems: 'space-between',
    alignContent: 'center',
    '*': {
      borderRadius: '2px',
      justifyContent: 'space-between',
      alignItems: 'baseline'
    }
  },
  ProfileCnt: {
    display: 'flex',
    flexDirection: 'row',
    flexWrap: 'wrap',
    alignItems: 'flex-start',
    justifyContent: 'space-evenly',
    padding: '32px',
    background: '#009688'
  },
  UserInfoCnt: {
    flexShrink: 1,
    flexBasis: 1,
    flexGrow: 1,
    maxWidth: 'fit-content'
  },
  userPostList: {
    flexBasis: 1,
    flexGrow: 5,
    flexShrink: 1,
    width: 500,
    maxWidth: 862,
    minWidth: 400,
    borderRadius: 6,
    padding: '1em',
    background: '#00897B'
  }
})

class CurrentUserProfile extends Component {
  constructor (props) {
    super(props)
    this.state = {
      login: this.props.user.login,
      email: this.props.user.email,
      password: this.props.user.password === null ? '' : this.props.user.password,
      firstName: this.props.user.firstName === null ? '' : this.props.user.firstName,
      lastName: this.props.user.lastName === null ? '' : this.props.user.lastName,
      address: this.props.user.address === null ? '' : this.props.user.address,
      profileHeader: this.props.user.profileHeader === null ? '' : this.props.user.profileHeader,
      profilePhoto: this.props.user.profilePhoto === null ? '' : this.props.user.profilePhoto,
      dateBirthday: this.props.user.dateBirthday === null ? '' : this.props.user.dateBirthday,
      viewMode: true
    }
  }

  change = e => {
    this.setState({
      [e.target.name]: e.target.value
    })
  };
  editableField = () => {
    this.setState({
      viewMode: !this.state.viewMode
    })
  };
  updateUser = e => {
    const {user, updateUser} = this.props
    e.preventDefault()
    let data = this.state
    const up = {...data, id: user.id}
    updateUser(up, user.login)
    this.editableField()
  };

  render () {
    const {user, classes, userPosts} = this.props

    return (
      <div className={classes.ProfileCnt}>
        {this.state.viewMode &&
          <div className={classes.UserInfoCnt}>
            <CurrentUserInfo user={user}/>
            <input type='button' name='Edit' value='Edit' onClick={this.editableField}/>
          </div>
        }
        {!this.state.viewMode &&
          <form className={classnames(classes.ChangeUserProfileInfoCard)}>     display: flex;

            <label>
              password:
              <input id='password-change' name='password' type='password' onChange={e => this.change(e)}/>
            </label>
            <label>
              name:
              <input id='firstName-change' name='firstName' type='text' value={this.state.firstName}
                onChange={e => this.change(e)} />
            </label>
            <label>
              surname:
              <input id='lastName-change' name='lastName' type='text' value={this.state.lastName}
                onChange={e => this.change(e)} />
            </label>
            <label>
              address:
              <input id='address-change' name='address' type='text' value={this.state.address}
                onChange={e => this.change(e)} />
            </label>
            <label>
              url to avatar:
              <input id='profileHeader-change' name='profileHeader' type='url' value={this.state.profileHeader}
                onChange={e => this.change(e)} />
            </label>
            <label>
              url to photo:
              <input id='profilePhoto-change' name='profilePhoto' type='url' value={this.state.profilePhoto}
                onChange={e => this.change(e)} />
            </label>
            <label>
              birthday:
              <input id='dateBirth-change' name='dateBirth' type='date' value={this.state.dateBirthday}
                onChange={e => this.change(e)} />
            </label>

            <input type='button' name='Apply' value='Apply' onClick={e => this.updateUser(e)}/>
            <input type='button' name='Cancel' value='Cancel' onClick={this.editableField}/>
          </form>
        }

        <PostList user={user}
                  posts={userPosts}
                  className={classes.userPostList}
                  classes />

      </div>
    )
  }
}

const mapStateToProps = state => {
  return {
    user: state.user,
    id: state.user.id
  }
}

const mapDispatchToProps = dispatch => {
  return {
    loadUser: (login) => dispatch(loadUser(login)),
    updateUser: (data, login) => dispatch(updateUser(data, login))
  }
}

export default withStyles(styles)(connect(mapStateToProps, mapDispatchToProps)(CurrentUserProfile))