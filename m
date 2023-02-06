Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FA968CA2D
	for <lists+blinux-list@lfdr.de>; Tue,  7 Feb 2023 00:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675724427;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Y+TdyaL+VpD9fRn0CSZKCuKlqVUnYg3Ahii9Mpy4TNU=;
	b=BBln5hljaHpeHtYFG7eDRkU55SCFE20z9oVn4nJjU3E5YDNipyHl/wi77h8cw9zFpfs/VW
	EAHVI1PZSXfT3kYJOdvXRkA7qS29oxu5Sx4/PhFvnlikQoZMlo7UNK9s42EmLZNG2KZFg7
	wJj1cM9nAvpJqSmCL2cLnKNhNlhK3Xw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-19-oiByEO_cOGKxdOVTb6gNzQ-1; Mon, 06 Feb 2023 18:00:23 -0500
X-MC-Unique: oiByEO_cOGKxdOVTb6gNzQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7407F100F906;
	Mon,  6 Feb 2023 23:00:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 054E02166B29;
	Mon,  6 Feb 2023 23:00:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 763BA1946597;
	Mon,  6 Feb 2023 23:00:16 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Getting DavMail to Work in the Gnome Desktop
In-reply-to: <mailman.4550.1675673037.8170.blinux-list@redhat.com>
References: <mailman.3943.1675628072.8168.blinux-list@redhat.com>
 <mailman.4278.1675636403.8172.blinux-list@redhat.com>
 <mailman.4304.1675651874.8171.blinux-list@redhat.com>
 <mailman.4550.1675673037.8170.blinux-list@redhat.com>
Comments: In-reply-to Linux for blind general discussion
 <blinux-list@redhat.com>
 message dated "Sun, 05 Feb 2023 22:37:58 -1000."
MIME-Version: 1.0
Date: Mon, 06 Feb 2023 17:00:00 -0600
Message-ID: <mailman.4550.1675724416.8176.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <8704.1675724400.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The last few years before I retired, I did everything in perl at
work.  My coworkers were happy and I kicked myself for not
delving in to perl much earlier.

	I have briefly looked at python code and it has much the
look and feel of perl except that in perl, indentation of code is
a nice idea where python requires it.

	I was able to successfully download the module and
install it on a HP PC using an AMD64 processor.  I also tried
installing EWS::Client on an I86 PC running Debian Buster.  This
PC has no GUI capabilities but does have some x11 libs installed
and one of them blows up the module installation just when it is
about to successfully complete.

	This is the first time I have run in to this issue so I
haven't figured out what to do except that one of the libraries
appears to be the wrong version and once you hit that, it's all crash
and burn after that.
	The blow-up of the cpanp session looks like:

Module 'XML::Compile' requires 'XML::LibXML' to be installed


Module 'XML::LibXML' requires 'Alien::Libxml2' to be installed

Running [/usr/bin/perl -MCPANPLUS::Internals::Utils::Autoflush /home/martin/.cpanplus/5.28.1/build/GeonD3kfeU/Alien-Libxml2-0.19/Makefile.PL INSTALLDIRS=site]...
Alien::Build::Plugin::PkgConfig::Negotiate> Using PkgConfig plugin: PkgConfig::PP
Alien::Build::CommandSequence> + xml2-config --version
Alien::Build::CommandSequence> [output consumed by Alien::Build recipe]
Use of uninitialized value $version in substitution (s///) at /home/martin/.cpanplus/5.28.1/build/GeonD3kfeU/Alien-Libxml2-0.19/alienfile line 85.

You can sure tell things are going South fast.  Resuming the
quotation of the output:


Unfortunately, Alien::Libxml2 requires the version from the system libxml2 in
order to determine if it is acceptable for use, but Alien::Build prior to 1.61
did not provide this information in the probe step.  Alien::Libxml2 can still
find the system libxml2 on systems with xml2-config in the PATH, or if libxml2
is available from one of the commonly known locations.  If you want to detect
the system libxml2 with a .pc file via pkg-config, then please upgrade
Alien::Build to 1.61 or better

	That is the end of the quoted text.
	I am not sure if I can safely do anything about this or
if the AMD64 system is the only one that will run this module,
assuming it actually does something.

	I am fortunate to have one system that installed this
module properly so maybe I should concentrate on it and hope it
will contact the mail gateway.

	This whole project so far can be summarized as poke,
prod, pray and finally swear.

	I appreciate the responses I have gotten so far.  I keep
thinking something should work and I can get all the mail
messages and even merge them with messages I am getting from the
mailer I am using from the cable provider which is a fine mailer
when they just leave it alone and aren't tweaking things like how
the TLS encryption is started.  That knocked me off line from
March to May of last year and the support staff I talked to
insist they made no changes.  I believe they think they were
telling the truth but that's what happens when you've got a
monster of a company that covers different parts of the globe and
we're just blades of grass that get squashed from time to time
and it's all in a day's work.  I don't know whether to laugh or
really cuss.

Martin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

