include stdlib
include apt
include java

package { ["vim",
	           "curl",
	           "git-core",
	           "zsh"]:
	  ensure => present
	  }

exec {
		"download_jmeter":
		command => "curl -L http://www.bizdirusa.com/mirrors/apache/jmeter/binaries/apache-jmeter-2.9.tgz | tar zx && mv /usr/local/apache-jmeter-2.9 /usr/local/jmeter",
		creates => "/usr/local/jmeter",		
		timeout => 0,
		cwd => "/usr/local",
		user => "root",
		path => "/usr/bin/:/bin",
		require => Package[ "curl" ]
	}	