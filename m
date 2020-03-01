Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 51331174F9A
	for <lists+blinux-list@lfdr.de>; Sun,  1 Mar 2020 21:41:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583095286;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O3SMIo/6JOWXfbleTtI7uk5b48/CXB+oO3jupI5RzOE=;
	b=VD9T0l7Ae3ZkmboucHpxd+w6T+YirObUwH4ux1nBr2sdVauzKTdsdfWqXaIRGEDpDvG/Ec
	PpcEArha5a8P+U+Bm5mm4Tm6mqePM+eVjT6HnZbRMqhdyFc3EJ6+8mCnALXZNRKBFM3wKU
	1V5tOcfSkZmV0CmIXtMK54SwV1ysxJg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-398-Jc6Y-KylPWyMeiGmLCe9Mg-1; Sun, 01 Mar 2020 15:41:23 -0500
X-MC-Unique: Jc6Y-KylPWyMeiGmLCe9Mg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 515E218FE860;
	Sun,  1 Mar 2020 20:41:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BB8ED90F5B;
	Sun,  1 Mar 2020 20:41:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DA64E860F2;
	Sun,  1 Mar 2020 20:41:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 021KfCmA007563 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Mar 2020 15:41:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 36C9A2063FE5; Sun,  1 Mar 2020 20:41:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31F032026D67
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 20:41:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 93EE3800296
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 20:41:09 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-357-QH31jhJhOxOiVRHX5Vg4qA-1; Sun, 01 Mar 2020 15:41:07 -0500
X-MC-Unique: QH31jhJhOxOiVRHX5Vg4qA-1
Received: by mail-oi1-f181.google.com with SMTP id g6so6627888oiy.1
	for <blinux-list@redhat.com>; Sun, 01 Mar 2020 12:41:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=C0KV4o58y0FW4HZchvlShssS/al1Notr/VJYmQLS8D4=;
	b=DqI8PzSWa/ZBWQbqjTmFRk9O00bhTIh9B9sDVx5dqotT0u+J/iT7z1fcNQG8R45KbH
	9OrP6vIeMFHM9010Iypa4EhHqFhxiEv5uKmFtYGhTAX43WKc9K056hobfYQWaWQIxPZV
	vMUqe8k/zoAIoYiBaQS/DGPcTCng3wcImbSrS42B9palUwu35YjlKDjczj0GocPEveyT
	9PBOam9P/a8J7AJ8cghZJiD98nUHqepfpI2ah40ulJVEXLFBUsXbh6UAyeBbs7sD5GEc
	Ny2j7RjiaxDaMa0onynLsR3WdI9FXwRpUzeVhE3p8Zfn3raemY7eaconX2fLVf7E+ZkS
	T7dQ==
X-Gm-Message-State: APjAAAXDvOr+pCAJQwjZOnVpmkr5IXxHgh1oRUdo8oGvVkY4o0l1n8fC
	uNyU6BpQNaNRn4oo6GuTnpQ8xxeQ
X-Google-Smtp-Source: APXvYqztjxJTvp2EoP62KjVxeOePeZNLerko+QXFm43uV6R8gArSQDhiS0SsYahOZnippTne+o+/Lw==
X-Received: by 2002:aca:1913:: with SMTP id l19mr8949431oii.47.1583095266576; 
	Sun, 01 Mar 2020 12:41:06 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:9414:81d7:188:57f3?
	([2601:3c2:8200:9360:9414:81d7:188:57f3])
	by smtp.gmail.com with ESMTPSA id r13sm807090oij.40.2020.03.01.12.41.05
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 01 Mar 2020 12:41:05 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Want to try a GUI. Which one is best?
Date: Sun, 1 Mar 2020 14:41:04 -0600
References: <20200301111759.GA12551@abilitiessoft>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <20200301111759.GA12551@abilitiessoft>
Message-Id: <4FABBFAD-282B-4F95-8EDD-1EC3ED168279@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 021KfCmA007563
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Ubuntu Mate might be your best bet.

> On Mar 1, 2020, at 5:17 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hello,
> 
> I am using Debian command line as much as possible. When I must deal with a GUI I use Microsoft Windows 10. However, i'm getting disgusted with Microsoft's 
> updates, which it makes without asking permission. they keep causing trouble with my computers. I've heard of several Linux Desktop environments, but I'm 
> skeptical if they are as good as Windows. Which one would you recommend?
> 
> I want my Linux machine to continue to boot into the command line, and when I want a GUI to start it with a simple command, or maybe a shell script.
> 
> Thanks,
> John
> 
> -- 
> John J. Boyer
> Email: john.boyer@abilitiessoft.org
> website: http://www.abilitiessoft.org
> Status: Company dissolved but website and email addresses  live.
> Location: Madison, Wisconsin, USA
> Mission: developing assistive technology software and providing STEM services 
>        that are available at no cost
> 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

