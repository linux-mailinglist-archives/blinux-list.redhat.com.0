Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 276E29C8AA
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 07:23:36 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 7255D83F45;
	Mon, 26 Aug 2019 05:23:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 385A65C220;
	Mon, 26 Aug 2019 05:23:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5822C1802218;
	Mon, 26 Aug 2019 05:23:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7Q5NTQi020749 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Aug 2019 01:23:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B1BE819D7A; Mon, 26 Aug 2019 05:23:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx10.extmail.prod.ext.phx2.redhat.com
	[10.5.110.39])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD53219C70
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 05:23:27 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3D19A59455
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 05:23:26 +0000 (UTC)
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 1400C8C033E; Mon, 26 Aug 2019 05:23:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 135D98C012D
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 01:23:26 -0400 (EDT)
Date: Mon, 26 Aug 2019 01:23:26 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: latest lynx ANN: lynx2.9.0dev.3
In-Reply-To: <CAO2sX31-dortHjXk_pL+ZJW0hTivNvzZAS3z=3P8x66r+JkpSg@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.1908260116290.16691@server2.shellworld.net>
References: <20190826004808.lapid7qsq5dili2u@prl-debianold-64.jexium-island.net>
	<Pine.LNX.4.64.1908252054480.12148@server2.shellworld.net>
	<4F2EC260-5157-43BD-95C3-F3BEFC09CF5E@gmail.com>
	<Pine.LNX.4.64.1908252215290.13997@server2.shellworld.net>
	<CAO2sX31-dortHjXk_pL+ZJW0hTivNvzZAS3z=3P8x66r+JkpSg@mail.gmail.com>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, ACL 264 matched, not delayed by
	milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]);
	Mon, 26 Aug 2019 05:23:26 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]);
	Mon, 26 Aug 2019 05:23:26 +0000 (UTC) for IP:'66.172.12.120'
	DOMAIN:'server2.shellworld.net' HELO:'server2.shellworld.net'
	FROM:'klewellen@shellworld.net' RCPT:''
X-RedHat-Spam-Score: 0.001 (SPF_HELO_NONE) 66.172.12.120
	server2.shellworld.net 66.172.12.120 server2.shellworld.net
	<klewellen@shellworld.net>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.39
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Mon, 26 Aug 2019 05:23:35 +0000 (UTC)

My date was a guess, might go further back.  Given the number of 
developers who  do  track lynx frequent updates, its used in site testing 
by professionals  across the board, you might be surprised.  As I said 
earlier, the new York Times ran an article suggesting its use, this year.
You do not follow the development of any tools, even your own.  that 
might suggest you are in no position to comment on limitations that  might 
not  even exist, let alone project your idea of cutting edge onto a tool.
Goodness there are some lynx compiles that can submit script buttons if 
those buttons are designed to manage the enter key.


On Mon, 26 Aug 2019, Linux for blind general discussion wrote:

> I don't follow the development of any web browser, not even the one I
> spend most of my waking hours in(Firefox), but if HTML5 has been a
> standard since 2012 and Lynx has only had HTML5 support since 2016,
> that still sounds like a rather significant amount of feature lag.
>
> Not that I'd expect a text-mode browser to stay cutting edge, but it
> does make you wonder how many web sites are one major upgrade away
> from breaking in Lynx and how many web design teams wouldn't even be
> aware it happened.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
