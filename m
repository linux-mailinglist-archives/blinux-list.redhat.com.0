Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 7453F207BF9
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 21:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593025537;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yyDmYZQuH80d9FvoiqffLLOOh2sN0ih11Wlrk895818=;
	b=FnVe7aZmme7Ak28/2mwL6/siQTYgorM5H6ftWDgJ9sT05zMhhnIjy2EgmU15kykXWcAWgn
	f1r8qm4HYM3JRpG8F0w6i5apKZD+t7JkIMJgK9cdZUaloRbvXq1SiS4Y1ci7986Dhi72Rw
	d4fS2kaTYdQ+R5eYRIgCXiE8X987kmo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-WcgXmN2KO5ydAg4j2l21RA-1; Wed, 24 Jun 2020 15:05:33 -0400
X-MC-Unique: WcgXmN2KO5ydAg4j2l21RA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7541210059B6;
	Wed, 24 Jun 2020 19:05:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E3F979305;
	Wed, 24 Jun 2020 19:05:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CBB688758A;
	Wed, 24 Jun 2020 19:05:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OJ5QrW019993 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 15:05:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 365061007A49; Wed, 24 Jun 2020 19:05:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31E8610CB297
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 19:05:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 14BD88007D9
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 19:05:24 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-234-rWEX4eF-ONa4ozUFwvM3gg-1; Wed, 24 Jun 2020 15:05:21 -0400
X-MC-Unique: rWEX4eF-ONa4ozUFwvM3gg-1
Received: by mail-qk1-f175.google.com with SMTP id 80so2910853qko.7
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 12:05:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=x5wYlqpB4GiDHC0Mw++2lvjXuAQir41PihzrjpFht9w=;
	b=iSlBzD8STwGnWLRjd27r3bxf8o29C4AGEQfEty4zJamwoVE3Sf8+nj8JJ4PsKhBcyN
	m8YnRdxfPhjwlSlW14Nqg82eRRQxLlYzA941KIk0rOcLkOMMgcdoqd3JZXUs/qU+b1kk
	e2EnN2bsARiIzK5VDMYm3Z5G+42iiltEybxD1eGJX8J/gVUtSRYCILF+tGXemFjTGQZJ
	dcQ5omclsnbuEwKSvjYEgFF+C7Q7vhxZjk1cngFkr/+GVBb6I6M0/P+JexApmYbTttZ+
	qed/iXe5MXXawpYCEpGC+iYBR/UgZus2tUfIj4JVTqz53aL3tXWOTgOANqJYuEmnYSYd
	dgew==
X-Gm-Message-State: AOAM530q1JNNQshUDFubO+avb3eZ1M52bq5UQHtX0Npb6gQ9KH8109mj
	KTu8aBvgKmR9GuM7DAdNq4056XHKmR4peil0fGT5+u88
X-Google-Smtp-Source: ABdhPJxgDuu8ghhu8Y/EpTdAdi4meQLj0V4Ih/BRQoXi6WrYXuGnWRDGftO3QZXaNBaEj4CBKqOtnJbYq7fXu3aGM1U=
X-Received: by 2002:a05:620a:142a:: with SMTP id
	k10mr26311642qkj.182.1593025520854; 
	Wed, 24 Jun 2020 12:05:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Wed, 24 Jun 2020 12:05:19
	-0700 (PDT)
In-Reply-To: <Pine.LNX.4.64.2006241420050.27528@server2.shellworld.net>
References: <CCAC71E7-DD5D-453C-BCCE-67BC02E9ECB0@cfcl.com>
	<Pine.LNX.4.64.2006241341320.26460@server2.shellworld.net>
	<435D6EB7-70C3-4C70-AAED-11CE64B93241@cfcl.com>
	<Pine.LNX.4.64.2006241420050.27528@server2.shellworld.net>
Date: Wed, 24 Jun 2020 19:05:19 +0000
Message-ID: <CAO2sX32BWM_Oxdme42Ok1_bG0Yok2hpAZDWSOoMM-tV3_bScBA@mail.gmail.com>
Subject: Re: anonymity, threads, signatures, and confusion
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm not sure who the list owner/administrator is or even if they're
active, but I assume Rich would've already tried to figure out a way
to conceal e-mail addresses without completely anonymizing the list if
he had the access to do so.

That said, asking for users to include some kind of  tag line in their
posts to make it easier to keep straight who said what isn't an
unreasonable request, and while I doubt I'll actually make a habit of
it because I'm somewhat absent-minded and forming new habits is hard
and pretty much anyone can just ignore the request, actually  getting
hostile about it seems uncalled for.

Anyways, my name is Jeffery with a J and an E-R-Y. I don't have a
signature on the e-mail I use for mailing lists and I'm not in the
habit of adding a tag line, though I am in the habit of not
quotingmessages when replying to threads as I think everyone quoting
everyone else just makes messages messier. I'm usually the first to
mention Knoppix, Adriane, or SBL in a thread and I'm prone to griping
about useful hardware features being ditched in the name of
miniturization(among other things, I hate how physical buttons on
phones are critically endangered thanks to touchscreens, I want to
slap whoever came up with microSD and wish every microSD slot were a
full-sized SD slot, the lack of a 3.5mm audio jack is a deal breaker
on just about anything with audio output, and I'm disturbed that you
can't take optical drives for granted even on desktops anymore).

Sorry if my unsigned posts have confused anyone and sorry that I'll
most likely completely forget about this thread more often than I'll
think to include a tagline going forward.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

