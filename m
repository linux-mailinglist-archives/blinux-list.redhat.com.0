Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4FC8F327509
	for <lists+blinux-list@lfdr.de>; Mon,  1 Mar 2021 00:06:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614553572;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=dmB/YEeBWfL+4n2bawJ53vB5Mmy7Q+dt1UX/uhY45po=;
	b=OwBtRnZF7EAFiKM1K5g7TvU2LYXocNO19raKjTD/t6926edTCXB9FQl2tCOboiNWWtxrM+
	oGYt8j671W4aj2w25tGdiE6dVZ9sgxjr9g1vNWPYcYNFOibeis0mUsWTqgFJ0KsF9Vioin
	TycFpSEVufhvUZVA77c+f5D53SqRL/8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-108-J35FLdgqOki7PqDSNrkYhA-1; Sun, 28 Feb 2021 18:06:09 -0500
X-MC-Unique: J35FLdgqOki7PqDSNrkYhA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B2ECD835E21;
	Sun, 28 Feb 2021 23:06:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC60F5D760;
	Sun, 28 Feb 2021 23:05:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1A75518095C7;
	Sun, 28 Feb 2021 23:05:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11SN5bF7009946 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Feb 2021 18:05:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E96A64405F; Sun, 28 Feb 2021 23:05:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3F304405C
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 23:05:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 65292800BFF
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 23:05:33 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-211-iuV1oMXXMWmAgFVdcWfiug-1; Sun, 28 Feb 2021 18:05:30 -0500
X-MC-Unique: iuV1oMXXMWmAgFVdcWfiug-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 9186662027D; Sun, 28 Feb 2021 23:05:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 8CCF062021F
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 18:05:29 -0500 (EST)
Date: Sun, 28 Feb 2021 18:05:29 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running Android Voices in Linux?
In-Reply-To: <161453342282.6.13142153429195754961.4290790@slmail.me>
Message-ID: <Pine.LNX.4.64.2102281800540.3106249@server2.shellworld.net>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<161446814123.8.7902586507444098707.4271150@simplelogin.co>
	<161447494525.8.17811239841066658738.4272534@slmail.me>
	<161447666901.8.13140491573543472108.4272803@simplelogin.co>
	<161453342282.6.13142153429195754961.4290790@slmail.me>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: MULTIPART/MIXED;
	BOUNDARY="-1404930036-1771250366-1614553529=:3106249"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
---1404930036-1771250366-1614553529=:3106249
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Hi SL,
May I ask what state  you are located in?
While I am not a direct Linux user, yet to find safe quality speech, I=20
have an associate here who is very interested in how tts is employed into=
=20
Linux.  They are also rather involved with  various Linux users groups.
Perhaps he would be interested in helping out as well.
One thing I admit some surprise with is why, if licensing is required,=20
one cannot provide a tax incentive to those holding the license?
Kare



On Sun, 28 Feb 2021, Linux for blind general discussion wrote:

> Hey Chime,
> Thank you, I see the link, I'll check it out.
> I'll read up on it and familiarize myself if there is any Ivona licensing=
 legalities involved to help me determine if these files or if the readspea=
ker Ivona sdk would be the best to work with for a project that could poten=
tially result in a widely dispersed program if all went well. The terms of =
agreement (I'm assuming there may be some), may be different for individual=
 use versus being integrated into a project that could have global potentia=
l. I don't know, havn't checked it out yet.
> Thank you so much for sharing the link to those files and I look forward =
to reading all about them.=C2=A0
> Once I decide what to work with, either these files, or the readspeaker s=
dk, it will likely take me some time trying to reach out to the local organ=
izations around me, considering that last I checked, some of their physical=
 meetups were on hold due to the whole statewide off and on shutdown stuff.=
 But I know a computer business in town whose employees work with a lot of =
the Linux setups around here and they are open. So I'll start with asking t=
hem, and if they don't have the connections I'm looking for, I'll try email=
ing the Linux groups in nearby cities. So it might take some time, but if I=
 manage to get a project going, I'll definitely let you know.
> Hi Kyle,
> Thank you for that suggestion and for the commands to clone RHVoice. I've=
 never cloned a program before, sounds interesting, I look forward to tryin=
g it. Here's to hoping it will work for me.
> Thank you and have a great day,
> SL
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-1771250366-1614553529=:3106249
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-1771250366-1614553529=:3106249--

