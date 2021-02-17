Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E8A3331DD8A
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 17:44:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613580285;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OH9hx1weLWa8LLsIwnfc8270SiaEVQqJvTLGxYdatok=;
	b=hpFbaEcDJtWqccYxxTPBA53XMin1GwpwvsJjuI1ejkk9u3JUMg1JeVfLS41rVzfd2nDvzw
	a+4Ot/FrxwhIbC6qGCv08giaIvggLednMYg4LON0ssNy+jx1GMx+6Su+ELPGzQIC6/hgHN
	h9t5YxSdLlV0TOSQqg2dimZuG9s7rh4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-70-Z8-vZOeWOVGUC0YMfKjJ-A-1; Wed, 17 Feb 2021 11:44:42 -0500
X-MC-Unique: Z8-vZOeWOVGUC0YMfKjJ-A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 28D981E564;
	Wed, 17 Feb 2021 16:44:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F27AF6F44C;
	Wed, 17 Feb 2021 16:44:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C15F818095CB;
	Wed, 17 Feb 2021 16:44:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11HGiZga031910 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 11:44:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DEEDA104848; Wed, 17 Feb 2021 16:44:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D9C39103CC6
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:44:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ADC758919BC
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:44:32 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-125-B3ApOw8fPsKzPWBFXI2vYw-1; Wed, 17 Feb 2021 11:44:30 -0500
X-MC-Unique: B3ApOw8fPsKzPWBFXI2vYw-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 4DD44621D52; Wed, 17 Feb 2021 16:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 4CEDC621CD6;
	Wed, 17 Feb 2021 11:44:29 -0500 (EST)
Date: Wed, 17 Feb 2021 11:44:29 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is this possible?
In-Reply-To: <alpine.NEB.2.23.451.2102171130420.5642@panix1.panix.com>
Message-ID: <Pine.LNX.4.64.2102171141410.1320379@server2.shellworld.net>
References: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
	<alpine.NEB.2.23.451.2102171111070.5642@panix1.panix.com>
	<Pine.LNX.4.64.2102171119510.1319856@server2.shellworld.net>
	<alpine.NEB.2.23.451.2102171130420.5642@panix1.panix.com>
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
Cc: Linux for blind general discussion <blinux-list@e1890.dsca.akamaiedge.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I am not trying to log into shellworld.
Still if I follow  your information, the answer is no.
One cannot ssh into a desktop interface of Ubuntu, thereby able to use say 
Firefox as a browser.
That was what I suspected, but again the question is less for me and more 
for another.



On Wed, 17 Feb 2021, Linux for blind general discussion wrote:

> Shellworld for you is a shell, but not necessarily everyone else.  It depends 
> on the type of account you buy.  When I use panix, I use it on a telnet 
> account which works fine for ssh and rlogin and telnet.  I could have bought 
> a web account and in that case I would have had to use pppoe and wvdial to 
> log in.  You don't necessarily use the same interface as administrators use 
> on these systems.
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
>> >   shellworld.net is running ubuntu, so that ought to be possible unless
>> >   misconfigured.
>> > 
>> > 
>> >   On Wed, 17 Feb 2021, Linux for blind general discussion wrote:
>> > 
>> > >    Hi folks,
>> > >    Is it possible to ssh into a graphical desktop edition of Linux, 
>> > >    Ubuntu
>> > >    for example?
>> > >    Karen
>> > > 
>> > > 
>> > >    _______________________________________________
>> > >    Blinux-list mailing list
>> > >    Blinux-list@listman.redhat.com
>> > >    https://listman.redhat.com/mailman/listinfo/blinux-list
>> > > 
>> > > 
>> > 
>> >   _______________________________________________
>> >   Blinux-list mailing list
>> >   Blinux-list@redhat.com
>> >   https://listman.redhat.com/mailman/listinfo/blinux-list
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

