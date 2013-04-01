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
		command => "curl -L http://www.bizdirusa.com/mirrors/apache/jmeter/binaries/apache-jmeter-2.9.tgz | tar zx",
		creates => "/home/ubuntu/apache-jmeter-2.9",		
		timeout => 0,
		cwd => "/home/ubuntu",
		user => "ubuntu",
		path => "/usr/bin/:/bin",
		require => Package[ "curl" ]
	}	