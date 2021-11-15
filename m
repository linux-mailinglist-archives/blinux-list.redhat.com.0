Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 65216450F4E
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 19:26:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637000802;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=B8K7aAxHGmJ5Cqpri7eFLaSnYzo63XCW+OoBWI555tM=;
	b=ECIqeneLa/jyl3FAn9uWeIC5n7bfjO9e3Tl2tSUxsgUQcyYMqykFTUYIFuL+NYULPAQHGP
	JUBC1AssYAsnB/wg3cTjx6PaOdvRHU5EEscSeoEEo/aJGEYJeCyjTrk5MkwMR5QwItS08G
	2hGZJg2p57XMM33P+9OnLNkAVb3HG40=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-225-e2fmqNsCPmaywilnLn0Rkg-1; Mon, 15 Nov 2021 13:26:38 -0500
X-MC-Unique: e2fmqNsCPmaywilnLn0Rkg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 982B91006AA1;
	Mon, 15 Nov 2021 18:26:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B85E100164A;
	Mon, 15 Nov 2021 18:26:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C00B31819AC1;
	Mon, 15 Nov 2021 18:26:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFILeu0005886 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 13:21:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C09BB40CFD12; Mon, 15 Nov 2021 18:21:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC2A240CFD07
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 18:21:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9D60A811E7A
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 18:21:40 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
	[209.85.216.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-400-GFJk8ozANA2tuPRzkn1Elw-1; Mon, 15 Nov 2021 13:21:38 -0500
X-MC-Unique: GFJk8ozANA2tuPRzkn1Elw-1
Received: by mail-pj1-f44.google.com with SMTP id
	gf14-20020a17090ac7ce00b001a7a2a0b5c3so13722895pjb.5
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 10:21:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=wWhNrLAvIaoINRZqdFRLwQn2uWJX1Mj46YfNS5Skfhg=;
	b=2Ceo/sTFFan0WKf7oENwcAubFpd1EYUn0tU6Z0YTeO4zpMSHQzY0g5gn9SMte01rZL
	oCHHTjM+gRjh8KUWX7BhONaFh9mGjUfKpnaufbuxE0jX0fmjqzkHLdoQrJCa0D1/Hk4M
	84nLYS84Xb4JZ/vYceBxwjsPQE66lZ6AxXi9Ab6snhJb1fhvj+UCE3zrS3HZI7wywfAe
	7o8DP3mvu1e733AAfxR4KmzfB1oZ01i4+6/pT6mlZN0FzW+KbhmmSUpC8Tiyet3rLxq9
	i6qae96sR5jG8Ck2psPvtJHv3MDlPRCFzx9S0f4+ZVQI2pxPmqYRh9fWvrWfIbPgO1m4
	5zUw==
X-Gm-Message-State: AOAM533R9DntpBvbjkJF+6+vERqiX1Wg+LwfmHIPI+a86YGQC8R9nlYG
	IZzefNZXgP0LRqkfmtC/MtVwRPlQzkimctHsw+ciea7YRT0=
X-Google-Smtp-Source: ABdhPJzi3ChWOqoXHBHx6K5N38JLT8cQMvuBeV48KeAc/k7iiru/ddJgltNXoEeK4ecfAFSwt3LuKbewl3niSW4W1ac=
X-Received: by 2002:a17:902:9684:b0:143:cc70:6472 with SMTP id
	n4-20020a170902968400b00143cc706472mr1652576plp.70.1637000497269;
	Mon, 15 Nov 2021 10:21:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a11:518:0:0:0:0 with HTTP; Mon, 15 Nov 2021 10:21:36
	-0800 (PST)
In-Reply-To: <6e96b0a1-2e90-8d58-59a2-81a60fbf608a@seznam.cz>
References: <d5a6f4b2-a8ed-da3f-37bc-4c948b6f1a97@gmail.com>
	<6e96b0a1-2e90-8d58-59a2-81a60fbf608a@seznam.cz>
Date: Mon, 15 Nov 2021 11:21:36 -0700
Message-ID: <CAM+Q2c7PzGGQ7rY_FUWtcxiSOxfGJH_bVbjtZ6DMRZpjF2_v3A@mail.gmail.com>
Subject: Re: Gui vs. cli software
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You ever heard the saying, "the command line makes difficult tasks
easy and impossible tasks merely difficult"?" There is a lot of truth
to that. Often I can, w/a few keystrokes, relatively speaking,
accomplish in minutes what it would take hours for a GUI to
accomplish, assuming it could do so at all, which is not always
accurate.

Of course I'm saying there should be accessible GUI apps for those who
wish to use them. But even in century 21, there are still many cases
where the cli is more powerful. Yeah, there are exceptions, but for
the most part it holds true.

On 11/15/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Hello,
>
> I prefer gui apps, because is 21st century, not time of first computers.
> If we want linux will more popular, it must have more gui apps. I agree,
> cli is better for older and slow computers or if you want work without
> spinning computer ventilators, but learn with gui is in my oppinion
> easier than cli.
>
> Take care.
>
> Best regards
>
> Vojta.
>
> Dne 15. 11. 21 v 18:59 Linux for blind general discussion napsal(a):
>>
>> The topic of using gui vs. cli came up recently.  My view is the cli
>> allows much more individual control over software functions.  The gui is
>> oftn limited to what the developer decides is best for you as to function
>> and individual control.  The gui was originally sold as an easier
>> way to use computers; which meant in practice the developer trying to
>> guess how users might want to use it at the cost of greater individual
>> control.
>>
>> Menu driven cli software is the obvious middle ground for ease of learning
>> and using programs, which could easily use mouse input.  The
>> developer could have a default setup for ease of beginner use.  But it was
>> at the time not the new sexy flash bang eye candy which graphics
>> allowed.
>>
>>
>>   -- ent- XR
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>


-- 
Subscribe to a WordPress for Newbies Mailing List by sending a message to:
wp4newbs-request@freelists.org with 'subscribe' in the Subject field OR by
visiting the list page at http://www.freelists.org/list/wp4newbs
& check out my sites at www.brightstarsweb.com & www.mysitesbeenhacked.com

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

