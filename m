Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7BB44F5DC
	for <lists+blinux-list@lfdr.de>; Sun, 14 Nov 2021 02:14:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636852440;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=wYhdF5cIHLtNhd/8d1IXnovn9flkck7X1xThE1l8T/Q=;
	b=MXdUm6DCgO1N/4vpcgbsYeuNMajULBxgKiMwRmsM7V44UDGJ1j5SXz/X7ZBeRD8h49uVNA
	nVbcngGCgBEoafDDzY+Bj4qPbwfMt7kx2Wg9a2rI/5ecac2PM96Fp2PZRpErPaCIumy6iN
	2M2vkKZa/WljwnlNvGKljKQWu7ZrtA0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-51-fQsTgQQIM72ex0sIEoHRFA-1; Sat, 13 Nov 2021 20:13:58 -0500
X-MC-Unique: fQsTgQQIM72ex0sIEoHRFA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5ADDAE744;
	Sun, 14 Nov 2021 01:13:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A733460862;
	Sun, 14 Nov 2021 01:13:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 831EF181A1D0;
	Sun, 14 Nov 2021 01:13:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AE1DiXO011653 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 20:13:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0218851E2; Sun, 14 Nov 2021 01:13:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F035751DC
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 01:13:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1DC37101AA63
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 01:13:41 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-144-XUcW4PnhN9SwM3OwdHVGIg-1; Sat, 13 Nov 2021 20:13:39 -0500
X-MC-Unique: XUcW4PnhN9SwM3OwdHVGIg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id EF7A5621C33; Sun, 14 Nov 2021 01:13:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id EE87062022F
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 20:13:37 -0500 (EST)
Date: Sat, 13 Nov 2021 20:13:37 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
In-Reply-To: <ed697912-0e80-3ceb-3de4-528157bdd61a@gmail.com>
Message-ID: <Pine.LNX.4.64.2111132009150.2138967@server2.shellworld.net>
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
	<8a83ad83-7d3c-c5f5-4bb5-e1c8d657c804@gmail.com>
	<YZAAhqsubBVL2pNl@panix.com>
	<CAGPwheC9=RwFv18uyCTDPz3BLzFuzYbWkN=PCOQ2H6PNRGgLiA@mail.gmail.com>
	<Pine.LNX.4.64.2111131952300.2138967@server2.shellworld.net>
	<ed697912-0e80-3ceb-3de4-528157bdd61a@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: MULTIPART/MIXED;
	BOUNDARY="-1404930036-562142597-1636852417=:2138967"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
---1404930036-562142597-1636852417=:2138967
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Oh but no!
Pine was created first, is speaking personally, far more stable for that=20
reason.
alpine is a continuation of the pine project, providing additional=20
options, and able to be Incorporated into  some extra things these days=20
like  those keys some mail services use.
I know I am not objective, Alpine as installed and configured by dreamhost=
=20
is far less stable to my tastes.
I dare say it is a matter of personal choices, how important it is to you=
=20
that your client is  still under current development.



On Sat, 13 Nov 2021, Linux for blind general discussion wrote:

> Good for you and Pine;=C2=A0 LOL.=C2=A0 Not sure I know the difference be=
tween Pine=20
> and Alpine; they are identical in all respects I have encountered, anyway=
.=C2=A0=20
> Maybe it's a question of brands or licensing?=C2=A0 Elm is also good, ass=
uming=20
> it's still around.
>
>
> -Dave=C2=A0 -
>
>
>
> On 11/13/21 19:54, Linux for blind general discussion wrote:
>>  using pine right now to create this email,=C2=A0 and recommend it very =
much
>>  indeed.=20
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
---1404930036-562142597-1636852417=:2138967
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-562142597-1636852417=:2138967--

