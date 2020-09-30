Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0802F27F35F
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 22:33:56 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601498036;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tc233AzECWmyzL7zMKR38l50lqFwUDbgEzk1kWHsBEI=;
	b=D+RLc3BUjDdGFkzLfKhDbInuKFvUo4X1SEk3YohsJam8S0XhlVbqUbaA9nQtW3Izg4DEU8
	nqLaPcKI8MSL9zJxh2kRNYHGa8Bf4e5rYbkKEwwtn5H9AUYSS6wUzZOCZ6Ezd4EvLmZlzn
	7lkQzTgfoZ+A4gB1xEuNGPMUjimxH9E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-526-tT-XeBVIO9Gen6FfcVP4Cw-1; Wed, 30 Sep 2020 16:33:53 -0400
X-MC-Unique: tT-XeBVIO9Gen6FfcVP4Cw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE03D80EF8B;
	Wed, 30 Sep 2020 20:33:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D1A5178833;
	Wed, 30 Sep 2020 20:33:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BEDE3183D021;
	Wed, 30 Sep 2020 20:33:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UKXgmw006714 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 16:33:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 94EFA2024508; Wed, 30 Sep 2020 20:33:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90526202450A
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 20:33:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BDB37101A540
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 20:33:39 +0000 (UTC)
Received: from server2.shellworld.net (ip-66-172-12-120.chunkhost.com
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-430-zgaThMecMw-za0WhBUy4oA-1; Wed, 30 Sep 2020 16:33:37 -0400
X-MC-Unique: zgaThMecMw-za0WhBUy4oA-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 01A0C540129; Wed, 30 Sep 2020 20:33:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id F2EC15400FF
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 16:33:35 -0400 (EDT)
Date: Wed, 30 Sep 2020 16:33:35 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
In-Reply-To: <alpine.DEB.2.23.453.2009301142230.3902695@chime>
Message-ID: <Pine.LNX.4.64.2009301627180.4521@server2.shellworld.net>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<Pine.LNX.4.64.2009301423450.2145@server2.shellworld.net>
	<alpine.DEB.2.23.453.2009301142230.3902695@chime>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Adding one extra question to Chime's.
There was, many years back a software edition of the dectalk called 
dectalk32
Packaged with window eyes at the very least.
I am curious if anyone knows what became of the rights to that software 
coding?
Did the patent go to freedom scientific when they got gw micro?
I am prepared to do an official u. s. patent search, but if someone has 
directions, that would help.
best idea would be if possible someday creating *quality* software 
synthesis comparative to the quality of dectalk hardware.
Karen



On Wed, 30 Sep 2020, Linux for blind general discussion wrote:

> Quite an interesting discussion. Many years ago I discovered Jupiter while 
> looking for screen-reader in Linux which had an exception dictionary-and-also 
> worked with a DecTalk. Well, in working directly with Karl, we found a DecPC 
> worked well, but we could not get my newer DecTalk U S B to play nice. 
> Likewise, Mike Gorse from YASR was not able to get me DecTalk support, 
> although he was willing to consider a dictionary. Speakup has DecTalk driver 
> issues which are frustrating, which I've commented on `quite a number of 
> times. Some1 mentioned SBL? What is that? If I were to ever switch away from 
> Speakup, I would certainly want a really good review option as Vocal-Eyes 
> had. And a side question? In the graphical side, is their only ORCA? We tried 
> getting a 2008 LSR running but not so far. Thanks so much in advance
> Chime
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

