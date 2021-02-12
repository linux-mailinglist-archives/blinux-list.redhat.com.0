Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0C04F319D4E
	for <lists+blinux-list@lfdr.de>; Fri, 12 Feb 2021 12:23:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613129005;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DpXf9JLxRYF1azIPoIHZEj3Qof84PVgDxqT2Za0RHrc=;
	b=K6L75ptas8ly5/rBDn2Iyw73IWPAcpnF7bCWUKzZbJU8q/q+FQK51nSNyc9ps6PrhZxVgu
	fiLdb/Yd7FRdkIoAxWEl3TGIG2onnRLwc4LPwmTdJ6Gmiovj0Axy8J5aIUW0OOYavlo+PH
	ZVmDgoaL/gdQpO4jErJ/XYMGDU3m1wA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-296-ztWgePp9NsS89h3_O20hEg-1; Fri, 12 Feb 2021 06:23:23 -0500
X-MC-Unique: ztWgePp9NsS89h3_O20hEg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9A50C100A689;
	Fri, 12 Feb 2021 11:23:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53AAA60BF1;
	Fri, 12 Feb 2021 11:23:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 215EE4EE4D;
	Fri, 12 Feb 2021 11:23:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11CBN0O4024266 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 12 Feb 2021 06:23:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D40E4115D36A; Fri, 12 Feb 2021 11:23:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A06A7115D36D
	for <blinux-list@redhat.com>; Fri, 12 Feb 2021 11:22:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE84A800C81
	for <blinux-list@redhat.com>; Fri, 12 Feb 2021 11:22:53 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-43-FqOKptCQM3G5n47KQ4EpxA-1;
	Fri, 12 Feb 2021 06:22:46 -0500
X-MC-Unique: FqOKptCQM3G5n47KQ4EpxA-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 00FB1BE2FD
	for <blinux-list@redhat.com>; Fri, 12 Feb 2021 11:15:19 +0100 (CET)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: [Announce] A new Slint ISO is available with an accessible and a
	beginner friendly installer
Message-ID: <4785d37c-88c8-d632-1610-eb1d5d4817bc@slint.fr>
Date: Fri, 12 Feb 2021 12:16:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,

A new Slint ISO is available, including an enhanced installer.

This installer is accessible with Braille and speech by default, and now 
also
provides an 'auto' installation mode. After having selected your sound board
if several are detected, you select the language for installation, 
confirm or
not that you want speech during installation (if yes the installed 
system will
have speech too), then are presented the menu below between "-----" lines:

------------------------------------------------------------------------------
Welcome to the Slint installer! (version 14.2.1)

Available commands (do not type the quotes):

'doc' to know the features and usage of the installer.
'auto' to start a semi-automatic, guided installation.
'setup' to start a manual installation.

We recommend that you type 'doc' first to prepare a manual installation, 
or if
you want to encrypt the drive where Slint will be installed, or if you 
need to
reduce the size of a partition to make room for Slint alongside another 
system.
When you finish reading this menu will be displayed again.
------------------------------------------------------------------------------

For folks not at ease with the command line the 'auto' mode allows to 
install
without typing a Linux command, just answering questions, and includes a
contextual help to answer several of these questions when asked.

Our user Pawel Loba has kindly provided an quick audio walk-through of
installation in 'auto' mode:
https://slackware.uk/slint/x86_64/slint-14.2.1/doc/AudioTutorials/slint-installation-quick-walkthrough.mp3
Since he recorded it I made a few changes in the installer but you get 
the idea.

The requirements and features of the 'auto' mode are described in:
https://slackware.uk/slint/x86_64/slint-14.2.1/doc/New_Installer/REQUIREMENTS_AND_FEATURES

Beyond a new installer Slint includes most accessibility software: console
screen readers (espeakup, fenrir, speechd-up), Orca for the desktops and of
course Speech-Dispatcher, as well as emacspeak, mumble and more. Several
desktops are installed including Mate (set as by default in 'auto' mode).

Speech is available on the console as in desktops and you don't loose speech
switching between these modes. You can choose to start the system in console
mode and later start Mate or another desktop just typing 'startx', or start
directly on the desktop.

Beyond accessibility Slint now includes distinctive features, like automatic
encryption of the whole drive during installation and setting of two swap
spaces: a swap file and swap in zram, the latter compressing the files 
in RAM
to get an usable space around 1.7 times the size of the physical RAM.
If installing on an SD card or an eMMC drive and F2FS file system is set up.
Slint can also be made portable if installed alone on a removable device.

To register to the Slint mailing list just send an email to:
slint-request@freelists.org
with just in the subject line: subscribe
then answer the reply that you will receive

Links below to know more.
https://slackware.uk/slint/x86_64/slint-14.2.1/README.installation
http://slackware.uk/slint/x86_64/slint-14.2.1/doc/Accessibility/Accessibility
http://slackware.uk/slint/x86_64/slint-14.2.1/doc

Thanks for having taken the time to read this long message.

Best regards
Didier


PS Indeed Slint can be installed alongside Ubuntu or another Linux system.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

