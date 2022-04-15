Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DB13750216A
	for <lists+blinux-list@lfdr.de>; Fri, 15 Apr 2022 06:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649996861;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+4hsPAhzoUzpdHgDJoSSfUZalbsWdRM7Ef2ce0NGeTw=;
	b=gbsDo5yroWgpTcstQGmdynbVvT40dMngjmwDkL6b0HLSzQbCO380/32YpACx3iO8Sb8rva
	4/oJ6H1NMohZThmUpM73lILZ8laR/4WwyaovCoL0FVaod9kufHuk+XaIs7XuSm8qo7vsDA
	7bQIjBeVLgdsnMubcoe/OH+EPUOYu7M=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-362-jc6KaaRaN12tDxrcdqfBbw-1; Fri, 15 Apr 2022 00:27:38 -0400
X-MC-Unique: jc6KaaRaN12tDxrcdqfBbw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DC196101AA42;
	Fri, 15 Apr 2022 04:27:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 554D4200BCD8;
	Fri, 15 Apr 2022 04:27:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DC32B194034E;
	Fri, 15 Apr 2022 04:27:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8428.1649888423.111203.blinux-list@redhat.com>
 <mailman.8385.1649917954.111207.blinux-list@redhat.com>
 <mailman.8642.1649947864.111206.blinux-list@redhat.com>
Date: Fri, 15 Apr 2022 00:27:16 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <mailman.8642.1649947864.111206.blinux-list@redhat.com>
Message-ID: <mailman.8751.1649996850.111206.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi.


So you don't want to be able to connect your phone to your computer and 
be able to manage texts, notifications, calls and what ever else from 
the computer then?


Course, that really only works for Android, but you don't have an iPhone, because you'd have to give Apple your existing email address and phone number. Also for the Android thing I think there actually a way to do that with Linux but it's not the your phone companion thing naturally. Hmm, not sure if it's possible to do much on Android without an account. At least if it's based on the Google software much at all it'll have the notification to complete setup if you skip setup.

  Thinking about it, I suppose it should be possible to sync with the phone without knowing what its number is, but meh, I have it set in my account anyway because 2 factor authentication which I turn on everywhere that has it except at this point Amazon.

Btw, Windows 11 really is sluggish on what hardware I've tried it on. It will probably eventually force itself onto my new desktop build, then we shall see how it runs on something that can let it stretch its legs. Windows 10 by and large is cat quick and runs pretty well on even midranged hardware. But I did join this list to have Linux questions hopefully addressed. The last question I asked didn't get any answers, boo!




Cheers:
Aaron Spears, AKA Valiant8086 General Partner at Valiant Galaxy Associates "we make (VERY GOOD AUDIOGAMES) for the blind comunity" http://valiantGalaxy.com

On 4/14/2022 10:50 AM, Linux for blind general discussion wrote:
> They can use their phone number instead.
>
>
> What? You want me to give my phone number to Microsoft? That'll be the 
> damn day for sure. My cell phone number is something I won't give out 
> to companies I don't trust, and the companies I don't trust don't like 
> disposable ones. Forget that. I'll stick with what works and doesn't 
> require that I sign my life away just to use it.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

