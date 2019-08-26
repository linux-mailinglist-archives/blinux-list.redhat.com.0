Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 555B99C733
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 04:18:51 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 983363082B13;
	Mon, 26 Aug 2019 02:18:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4DF3C5D9D6;
	Mon, 26 Aug 2019 02:18:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ECDDB1800B74;
	Mon, 26 Aug 2019 02:18:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7Q2Il7G016365 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 22:18:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 113F219D7A; Mon, 26 Aug 2019 02:18:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx23.extmail.prod.ext.phx2.redhat.com
	[10.5.110.64])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C91719C70
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 02:18:44 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id DED781089041
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 02:18:43 +0000 (UTC)
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id BC0D48C033E; Mon, 26 Aug 2019 02:18:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id B98E58C003E
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 22:18:43 -0400 (EDT)
Date: Sun, 25 Aug 2019 22:18:43 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: latest lynx  ANN: lynx2.9.0dev.3
In-Reply-To: <4F2EC260-5157-43BD-95C3-F3BEFC09CF5E@gmail.com>
Message-ID: <Pine.LNX.4.64.1908252215290.13997@server2.shellworld.net>
References: <20190826004808.lapid7qsq5dili2u@prl-debianold-64.jexium-island.net>
	<Pine.LNX.4.64.1908252054480.12148@server2.shellworld.net>
	<4F2EC260-5157-43BD-95C3-F3BEFC09CF5E@gmail.com>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED;
	BOUNDARY="-1404930036-716803107-1566785923=:13997"
X-Greylist: Sender passed SPF test, ACL 264 matched, not delayed by
	milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.64]);
	Mon, 26 Aug 2019 02:18:43 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.64]);
	Mon, 26 Aug 2019 02:18:43 +0000 (UTC) for IP:'66.172.12.120'
	DOMAIN:'server2.shellworld.net' HELO:'server2.shellworld.net'
	FROM:'klewellen@shellworld.net' RCPT:''
X-RedHat-Spam-Score: 0.001 (SPF_HELO_NONE) 66.172.12.120
	server2.shellworld.net 66.172.12.120 server2.shellworld.net
	<klewellen@shellworld.net>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.64
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]); Mon, 26 Aug 2019 02:18:50 +0000 (UTC)

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---1404930036-716803107-1566785923=:13997
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

No,
Lynx has incorporated html5  support for a good three years or so now.=20
which is why when you claimed text browsers are the problem I instead noted=
 that=20
response from the keyboard, including the enter key is standard.
Lynx gets  upgraded rather regularly, this is at least the third this year=
=20
alone.


On Sun, 25 Aug 2019, Linux for blind general discussion wrote:

> So Lynx just got an update today that adds HTML5 support. This means that=
 yesterday when I said it didn't support the latest web standards, it still=
 didn't. It doesn't change the fact that in order to implement accessibilit=
y properly, text-based browsers must jump into the end of the first quarter=
 of the 21st century, rather than forcing web designers to essentially doub=
le their code to comply with older browsers. Fortunately, it seems that Lyn=
x has begun taking that step, and its developers are to be commended for th=
is. I will conduct tests on my own website, which I know correctly implemen=
ts HTML5 <audio> and <video> elements, but has a fallback to download in ol=
der browsers, but that nearly doubles the size of a couple of my pages, bec=
ause I have to link to the files twice. If in fact this is now working, I c=
an remove much of that compatibility code and just use standard and properl=
y implemented HTML5 <audio> and <video> elements, as was my initial plan be=
fore I found that many un
> derdeveloped browsers still didn't support the proper implementation of t=
hese elements, which have been a standard since 2012.
> Imetumwa kutoka mkuu
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
---1404930036-716803107-1566785923=:13997
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
---1404930036-716803107-1566785923=:13997--

