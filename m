Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DD21845EE91
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 14:06:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637931971;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mR7RwHCLBHgNQYnWtJ7eSdcx41TULdMBQk9UsHy2jqE=;
	b=XqoLVsnYmmpZrbk43k6/qlZHeKrMKrR670BGm+bO9sMP5BAiY0Y8HkjkrWdVei9OGydfzB
	SWNv9nq8vdOOlhPSOAENI+D2KWmp2nEQFipSc9hYMrAUS1p7Fra11mykqRYPSTvNP/kBXH
	s3JyYMusr6GfhP/rMmXk46Iy7BwSztM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-330-RUmj3WxrOL28r9dUIvRdZw-1; Fri, 26 Nov 2021 08:06:09 -0500
X-MC-Unique: RUmj3WxrOL28r9dUIvRdZw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 413EC93922;
	Fri, 26 Nov 2021 13:06:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D26FC1000051;
	Fri, 26 Nov 2021 13:05:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 757F31809C81;
	Fri, 26 Nov 2021 13:05:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQD5ZYx012449 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Nov 2021 08:05:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A95CA2166B25; Fri, 26 Nov 2021 13:05:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A343E2166B2D
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 13:05:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8587085A5BC
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 13:05:32 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-203-RATyIL3rMHeorVWOqA_C3g-1;
	Fri, 26 Nov 2021 08:05:30 -0500
X-MC-Unique: RATyIL3rMHeorVWOqA_C3g-1
Received: from [192.168.1.38] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 6DC1AA376D
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 12:04:49 +0100 (CET)
Message-ID: <54a22fdb-8348-346b-170c-8e6f54ad7fbe@slint.fr>
Date: Fri, 26 Nov 2021 15:05:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: In the mood for something new
To: blinux-list@redhat.com
References: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
	<CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
	<52d94c3d-a3c8-a5a0-49c3-b599ec3eb17e@verizon.net>
	<062dbe93-602f-b972-6de1-f9a00ac1aa9b@gmail.com>
	<091390ec-72e4-100d-d1b1-6a10818715ac@gmail.com>
	<b2d6ddcd-2ef7-1425-de0e-78a0c8d5697c@slint.fr>
	<97f47bb7-fcaf-aaf9-0732-0592fd341f18@gmail.com>
In-Reply-To: <97f47bb7-fcaf-aaf9-0732-0592fd341f18@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Kyle,

answers after inline after the quoted lines

 > RPM packaging format, a plugin-based modular package management tool
 > along with graphical package management
I have used Mandrake nearly 20 years ago, it already used RPM ;)

Slint uses the simple package format from Slackware and use the slapt-get
package  tool to manage the packages. It includes the gslapt graphical
front-end, handles dependencies resolution and notification of updates 
on the
desktop. No Slint users requested more so far.
https://slint.fr/doc/HandBook.html#software_management


 > the copr system including semiautomatic serverside builds
Very nice, but do most end users need that?

To build packages from the building scripts repository 
https://slackbuilds.org
Slint includes the slapt-src application, very easy to use.
https://slint.fr/doc/HandBook.html#slapt_src

 > the choice of a release cycle or a rolling release model,
Well, that looks nice however reading the messages in this list
and elsewhere I am not sure that every user be happy with that...

Anyway my preferred release offer by FreeBSD, which
also offers a choice between two branches:
https://docs.freebsd.org/en/books/handbook/cutting-edge/#stable
https://docs.freebsd.org/en/books/handbook/cutting-edge/#current

I think that most of our users would not like a rolling release model, 
so Slint
follow semi-rolling model: releases are made on the basis of Slackware, but
then a lot of software a kept up to date including all the ones needed for
accessibility, as shows this ChangeLog:

https://slackware.uk/slint/x86_64/slint-14.2.1/ChangeLog.txt

 > snapd and flatpak installable from official repositories or installed
 > by default

Well, I am not fond of these packaging systems. Anyway flatpak can be 
get from
https://slackbuilds.org as I just did (honest: had to fetch manually source
tarball of two deps due to broken links in the scripts, but not a daunting
task).

 > not a derivative distro
I didn't plan to create a derivative distro, but Patrick Volkerding didn't
accept to include in Slackware the stuff needed to internationalize  it and
make it accessible, that's why I had to. I won't complain, being fond of
system integration.

 > far more software applications available from all of system 
repositories,
 > third-party repositories that can be added easily
By far not as many available packages as for Debian ;)
I am impressed also by FreeBSD's ports and packages collection. It 
contains a
lot of Linux software, really a lot often up to date.

 > all the newest software versions with support for the
 > latest compilers, toolchains and system libraries, no need to hold back
 > new upstream software because a toolchain or compiler is out of date
While it is true that we have a very old gcc and glibc (waiting for the 
release
of Slackware 15 to upgrade), this have rarely been an issue here (read our
ChangeLog to check).

 > broad and diverse community support
Well, our mailing list is pretty active and can provide answer coming 
directly
from the guy who maintain the distribution and packages all software in its
repositories. Try that with Fedora ;)

 >systemd, which I happen to like

I don't feel a need for that. sysvinit in Slint works pretty well, and 
no user
ever requested to replace it by systemd.
I really like the init system used by FreeBSD though.
https://www.freebsd.org/cgi/man.cgi?init

 > and Pipewire and Wireplumber installed by default, although these do
 > still have their bugs.
Well, we will have that in next Slint version.

This being said, Slint may not be for users looking for the most 
bleeding edge.

Bottom line: I am always eager of feedback to enhance Slint.
So my friend your next mission, if you accept it, is to install Slint 
(possibly
on a removable device, including a good SD card if your firmware can handle
booting from it) and report all found issues.

All needed information is in the HandBook:
https://slint.fr/doc/HandBook.html

Cheers,
Didier

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

