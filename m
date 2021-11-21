Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E396458273
	for <lists+blinux-list@lfdr.de>; Sun, 21 Nov 2021 08:17:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637479045;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0PW1ByWJ8h7k6QcczgTb+rAprdiPZcJDXqBcHieY3S0=;
	b=NXq+vSajTBea1SaMsnsxoveIfReUC3tZkOuLsG/zZnFhnRBvbkTQaIz9rolJaR+cXA9Bcy
	AMnoRd/bu4+7aUDLooMkZDw2wzBXUFlo4xJ0ithKNDvlLYrRNcgH2pYTSXK3BkrhPsQwsP
	aX7kACMQEIzxlKJdb8mvAjayzmbyMrU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-277-H6RbLNgqNTq4hhpiGO9zDg-1; Sun, 21 Nov 2021 02:17:23 -0500
X-MC-Unique: H6RbLNgqNTq4hhpiGO9zDg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BFD2C80668B;
	Sun, 21 Nov 2021 07:17:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D293960C5F;
	Sun, 21 Nov 2021 07:17:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DF8234A703;
	Sun, 21 Nov 2021 07:17:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AL7F9SA006073 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 21 Nov 2021 02:15:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B528451E4; Sun, 21 Nov 2021 07:15:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE9F951E1
	for <blinux-list@redhat.com>; Sun, 21 Nov 2021 07:15:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EFD93185A7B2
	for <blinux-list@redhat.com>; Sun, 21 Nov 2021 07:15:04 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-235-WgIpOAP-Ng62N0k4GmRevQ-1; Sun, 21 Nov 2021 02:15:01 -0500
X-MC-Unique: WgIpOAP-Ng62N0k4GmRevQ-1
Received: from email.seznam.cz
	by email-smtpc14a.ng.seznam.cz (email-smtpc14a.ng.seznam.cz
	[10.23.11.165]) id 6da3712d783b22776c498031;
	Sun, 21 Nov 2021 08:15:00 +0100 (CET)
Received: from [192.168.1.173] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay22.ng.seznam.cz (Seznam SMTPD 1.3.128) with ESMTP;
	Sun, 21 Nov 2021 08:14:56 +0100 (CET)
Subject: Re: Ideal temperature
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <fe3a75a0-6db8-6f92-8859-a009326e9678@seznam.cz>
	<daa7b60aa84f6ee9af1210b4db6b34e7@ijn2.net>
Message-ID: <2436cb02-c2d8-15f1-50f8-012a781ba1ec@seznam.cz>
Date: Sun, 21 Nov 2021 08:14:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <daa7b60aa84f6ee9af1210b4db6b34e7@ijn2.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

and what about turning off and on the cooling? What about writing script 
to automatically turn on and off the cooling when is needed or some 
script to turn on and off the cooling by key binding or command? Is it 
possible? I have Monitor toggle script to turn off and on the screen. Is 
it possible to do with cooling?

Thanks a lot.

Best regards

Vojta.

Dne 20. 11. 21 v 22:33 Linux for blind general discussion napsal(a):
> Hello Vojta,
> 
> On 2021-11-20 16:14 UTC, Linux for blind general discussion wrote:
>> Hello all,
>>
>> please, how much can Raspberry Pi 4B be warm and not suffer? What
>> temperature is ideal for Raspberry and what is uncomfortable for it
> 
> The higher the temperature the more your Raspberry suffers. That's
> why in the firmware there are limiters which step in whenever the die
> temperature gets too high. The limiters function so that you shouldn't
> be able to break your Raspberry due to excess heat.
> 
>> when I am using Mate desktop and Orca in Ubuntu mate 20.04? When I had
>> only passive cooling, my Rpi 4B had 58 degrees and was slower, now
>> with active cooling it has only 34 degrees and it's quick and no
>> sluggish, but if I want to read or watch film, the sound of cooling is
> 
> I assume you are relating to degrees Celsius (aka Centigrade).
> Whenever the SoC temperature reaches certain limit the firmware reduces
> processor frequency hence lowering the SoC die temperature so that
> it would not die due to excess heat. It sounds like your cooling is
> really good.
> 
>> a little annoying for me. But I don't want suffering for my Raspberry,
>> because I like it. I am thinking to unplug active cooling, but I am
>> afraid about my raspberry condition. I can't buy any other active
>> cooling, because it wouldn't be joined in my Zonepi box, in what I
>> have my Pi installed.
> 
> You either let firmware do its frequency lowering due to temperature
> rising (caused by watching films and other computationally heavy loads),
> add bigger (passive) heat sink or just live with your present active
> cooling.
> 
> Regards,
> Birdie

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

