Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5F53A362CAF
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 03:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618622824;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uCPo81ZcoMeAE9nUnE7pThdaipgR9mZKJzpNIrWU4Dw=;
	b=hnRGh5l9M9AfYVdRpoEMRHT/PWqf+dyF6Oluzc6rzM6eQ3YtcLb+sEc39u77qY8AVK7dOZ
	ayC59MyQXV+fzHAkTgKQ+hlUaCrtw6983RVqomeF5YMeW6aMJ/ncITAU492Qpoq+dO2lB6
	f8Ci7H+pnj5czGIPqQu0ktGVzk5tBFg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-560-ZpqSb7ubNr6ZYVYyIYpWvg-1; Fri, 16 Apr 2021 21:27:02 -0400
X-MC-Unique: ZpqSb7ubNr6ZYVYyIYpWvg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3368A8143FE;
	Sat, 17 Apr 2021 01:26:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E0846A046;
	Sat, 17 Apr 2021 01:26:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CA34944A65;
	Sat, 17 Apr 2021 01:26:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13H1Qssc025891 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 21:26:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8B44920AE824; Sat, 17 Apr 2021 01:26:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8676A2075281
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 01:26:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 18C74185A79C
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 01:26:52 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-264-u1l5QDHqMNy7nx2Wx55UhA-1; Fri, 16 Apr 2021 21:26:49 -0400
X-MC-Unique: u1l5QDHqMNy7nx2Wx55UhA-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 614F7621C36; Sat, 17 Apr 2021 01:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 607136217FD
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 21:26:48 -0400 (EDT)
Date: Fri, 16 Apr 2021 21:26:48 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: SL's response to all inquiries re: Readspeaker voices
In-Reply-To: <161862148227.7.18281104954975477453.5938888@slmail.me>
Message-ID: <Pine.LNX.4.64.2104162123120.2353670@server2.shellworld.net>
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
	<161861134168.7.8725593548099427193.5935596@simplelogin.co>
	<161861745773.6.10221248550300079442.5937580@slmail.me>
	<2d84575-10dc-a8b6-d46d-60773d4fafc8@hubert-humphrey.com>
	<161861948053.7.16244801545361401537.5938331@simplelogin.co>
	<161862148227.7.18281104954975477453.5938888@slmail.me>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

well...that explains the formatting problem,  as I guess?, you are not 
choosing saving to plain text  in your word processor?
It seems like you are doing what would be  like my writing in my word 
processor of choice, word perfect, and putting that file into the body of 
an email without saving it as text...or something like that.
Does your word processor allow for saving to text, or even .html?



On Sat, 17 Apr 2021, Linux for blind general discussion wrote:

> Yea, I'm just so used to writing long documents in a word processor before sending it, coming from Windows where I would do that all the time. I like having a document, because my internet access will frequently pop on and off line, so I worry that I might lose an email draft unless I save it like every 5 minutes.
> I wonder if it would work differently pasting from Pluma rather than LibreOffice. Next time I write a big document, I'll send a small test to see if Pluma will paste coherently.
> But at least for now, I transfered it to Windows and reformatted it on Windows, so I'll re-send it from Windows hopefully in a legible format.
> I'll give it its own title so it doesn't get lost in this thread, so that people can refer to it more easily.
> Thanks,
> SL
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

