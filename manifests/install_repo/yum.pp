# yum.pp 

# Class: fluentd::install_repo::yum ()
#
#
class fluentd::install_repo::yum (
    $key = $fluentd::params::yum_key_url,
    ) {

    # Sorry for the different naming of the Repository between debian and redhat.
    # But I dont want rename it to avoid a duplication.
    yumrepo { 'treasuredata':
        descr => 'Treasure Data',
        baseurl => 'https://td-agent-package-browser.herokuapp.com/2/redhat/$operatingsystemmajrelease/$basearch',
        gpgkey => 'http://packages.treasuredata.com/redhat/RPM-GPG-KEY-td-agent',
        gpgcheck => 1,
    }
}
