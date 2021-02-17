Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0929731DDB1
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 17:53:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613580831;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jJktOxWNG1K66I4TBi7yiFvCinJVMs6jE9M2JPFNSZc=;
	b=JqnDR/9YKX/Q7fXOemBgufRCVF8mjzya/iTws4KOmd+HZSEPBboyxOgnkjdlZiX5c1rj5B
	Rwi+Ek+LXQZes2P9o0/k3ft4towY41CzcneI8c3R0VeLd5LcQO/IxDrEZs2Pcdk8svM0t0
	wxRV4JyLLbvs6AKUh3lkYV1tS4lJ6K4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-510-1_eND8yrNCaioRGLwaGlGA-1; Wed, 17 Feb 2021 11:53:48 -0500
X-MC-Unique: 1_eND8yrNCaioRGLwaGlGA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D28D31020C24;
	Wed, 17 Feb 2021 16:53:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A243C19C46;
	Wed, 17 Feb 2021 16:53:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E317557DF9;
	Wed, 17 Feb 2021 16:53:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11HGleJb032259 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 11:47:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5D46720614DE; Wed, 17 Feb 2021 16:47:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 58B3520614D9
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:47:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1CFA805F16
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:47:37 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-86-zkA83brENEO8a6RiIbGOww-1; Wed, 17 Feb 2021 11:47:35 -0500
X-MC-Unique: zkA83brENEO8a6RiIbGOww-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 84360622516; Wed, 17 Feb 2021 16:47:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 810D0621D5F
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 11:47:34 -0500 (EST)
Date: Wed, 17 Feb 2021 11:47:34 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is this possible?
In-Reply-To: <alpine.DEB.2.22.394.2102170827320.36595@precision-M2800>
Message-ID: <Pine.LNX.4.64.2102171145160.1320379@server2.shellworld.net>
References: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
	<alpine.NEB.2.23.451.2102171111070.5642@panix1.panix.com>
	<Pine.LNX.4.64.2102171119510.1319856@server2.shellworld.net>
	<alpine.DEB.2.22.394.2102170827320.36595@precision-M2800>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

..ding ding ding!
And here is the answer.
You cannot   ssh  into  a graphical desktop.
which was actually the question.  I understood that one can do so with any 
shell, but since my associate was asking about reaching a graphical 
desktop, that was the focus of my question.



On Wed, 17 Feb 2021, Linux for blind general discussion wrote:

> As far as I know all additions of ubuntu have a shell of some sort.  All the 
> graphical stuff run on top of a shell.  If ssh is installed and configured 
> then you should be able to ssh into any version of ubuntu.  You will, of 
> course not have the graphical desktop.  I do this with virtual machines all 
> the time some running as servers without graphics and some running a desktop.
>
> Tom
>
>
> On Wed, 17 Feb 2021, Linux for blind general discussion wrote:
>
>>  I am not talking about shellworld, as I am using it now.
>>  In fact I  can ssh into shellworld from my DOS computer.
>>  However, shellworld is a shell, not a graphical desktop  edition of
>>  Ubuntu.
>>  same can be said for the shell dreamhost, who is the hosting service for
>>  my office, provides its clients.
>>  My question is related to an entirely different issue, where a work
>>  associate asked if one could do what I do, but into a strictly graphical
>>  desktop of Ubuntu.
>> 
>> 
>>
>>  On Wed, 17 Feb 2021, Linux for blind general discussion wrote:
>> 
>> >  shellworld.net is running ubuntu, so that ought to be possible unless 
>> >  misconfigured.
>> > 
>> > 
>> >  On Wed, 17 Feb 2021, Linux for blind general discussion wrote:
>> > 
>> > >   Hi folks,
>> > >   Is it possible to ssh into a graphical desktop edition of Linux, 
>> > >   Ubuntu
>> > >   for example?
>> > >   Karen
>> > > 
>> > > 
>> > >   _______________________________________________
>> > >   Blinux-list mailing list
>> > >   Blinux-list@listman.redhat.com
>> > >   https://listman.redhat.com/mailman/listinfo/blinux-list
>> > > 
>> > > 
>> > 
>> >  _______________________________________________
>> >  Blinux-list mailing list
>> >  Blinux-list@redhat.com
>> >  https://listman.redhat.com/mailman/listinfo/blinux-list
>> > 
>> > 
>> > 
>>
>>  _______________________________________________
>>  Blinux-list mailing list
>>  Blinux-list@redhat.com
>>  https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

