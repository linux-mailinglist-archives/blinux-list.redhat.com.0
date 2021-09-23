Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6A8C24165C5
	for <lists+blinux-list@lfdr.de>; Thu, 23 Sep 2021 21:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632424474;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MGD9/qjCTWGyw7AH9UDfUwKjRL5rDcxMWu2vG5KkXO4=;
	b=ZiOMoewAlxGQwOHn/vrO0wFtK6+msCdX+FQMaNW9FaE7hjWlU348reiOc2qQhvuUO5IlAp
	xBQ7Zy/15UOX7JMRAM8gAVKWyA9G9S3nb9e5PxGqQYbIY+PVNcaZZT+oEJyFJ0r82QGFrO
	tgJl87mH3xFNcCAWpSjmCHQG+tRH86k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-JlVALTXBMYO8AyKthR0adw-1; Thu, 23 Sep 2021 15:14:32 -0400
X-MC-Unique: JlVALTXBMYO8AyKthR0adw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5EBB98042EF;
	Thu, 23 Sep 2021 19:14:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C3FA55D9DD;
	Thu, 23 Sep 2021 19:14:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C22F54EA2A;
	Thu, 23 Sep 2021 19:14:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18NJED23022971 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 23 Sep 2021 15:14:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3EC5F1112C18; Thu, 23 Sep 2021 19:14:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A71D111C483
	for <blinux-list@redhat.com>; Thu, 23 Sep 2021 19:14:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2374E811E7F
	for <blinux-list@redhat.com>; Thu, 23 Sep 2021 19:14:13 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
	[209.85.219.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-272-qjeg9bMiOg6tlFkw4bWBgw-1; Thu, 23 Sep 2021 15:14:11 -0400
X-MC-Unique: qjeg9bMiOg6tlFkw4bWBgw-1
Received: by mail-qv1-f48.google.com with SMTP id a13so4805930qvo.9
	for <blinux-list@redhat.com>; Thu, 23 Sep 2021 12:14:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=cFxL7nFmbQQXslmOg89ywNF85bKp6H1U3qBPZ9UVx8o=;
	b=wyscKR4fNUBGt+HGKn2f7U2kRdLZesEZrLXHWYMQyWdGwMGn5StiPsmy9sT6ocN8dB
	51g/pmv9NbncQFqSyB20f8dj6OnKboFWbi3WA1Ryw/UAch/SVdV+H4xgCjd+yE9AQ+M1
	Bx4XyTXzzIHgkEfaf4ii56Q6/50r3g8wl5NkWRueNiKqfBt0NkAQj4maHq5ay0G0qU0z
	SHfffpwDLBQJhN/RtI0yTePBtKq+kEBTOqIotwHZauklus9F7vGyOAu6eje84vxZU8fG
	wvAvnTquF5vac3WYVz4Ryux/pu/tIDZfcM2lxmUx6v2Do4IOo1EvPe6EhL5LbUShOWop
	TvtQ==
X-Gm-Message-State: AOAM533OeR9KcP8H8YhO1ZMEh2i+28swzXdJcyKrOLJaktzSfjSu93qL
	GqhkAD8li+AC/sdkhY8X9sMG5Zl7/qM=
X-Google-Smtp-Source: ABdhPJzBGJevGxO+JE5PPj9NE+KplcpWhxYqkKQ5iY4tczR4TM6QUY0q19pQwCYSLKER7Xm+8iwMEA==
X-Received: by 2002:ad4:55b3:: with SMTP id f19mr6397851qvx.16.1632424450935; 
	Thu, 23 Sep 2021 12:14:10 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id h9sm4938572qkl.4.2021.09.23.12.14.10
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 23 Sep 2021 12:14:10 -0700 (PDT)
Subject: Re: [raspberry-vi] Re: Possibly Off-Topic: Android Smartphone
	Recommendations.
To: blinux-list@redhat.com
References: <CAO2sX33aWL4__RHq2RZkFW+PimVh7Z7g=_TS1wudsG7sAeiBQA@mail.gmail.com>
	<A4E5D55F-F90B-4069-9848-C21414621974@hxcore.ol>
	<CAO2sX31tRhsEv_p2-Zp4b=B5GVWNtoariLePU-DQ=ngaT-OJuA@mail.gmail.com>
Message-ID: <07faf20a-0d9c-27c9-96fd-0740bf315ceb@gmail.com>
Date: Thu, 23 Sep 2021 15:14:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX31tRhsEv_p2-Zp4b=B5GVWNtoariLePU-DQ=ngaT-OJuA@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I would avoid both Samsung and Google. Samsung has enormous prices and 
tries to reinvent everything from the browser to at one point the screen 
reader, which it changed up dramatically and made part of the OS that 
could only be updated with a system update, no Play Store support. I 
believe in recent updates they returned to the Android Accessibility 
suite with Talkback, but that little experiment left a bad taste in my 
mouth, especially after I couldn't even figure out how to use their 
voice assist screen reader effectively and productively as I can use 
Talkback. They also remove the headphone jacks in recent versions. 
Google's phones have always been substandard for the price, because they 
have never had removable storage, and they removed the headphone jacks 
from their phones as well. My personal recommendation is Motorola 
phones, which all keep the headphone jack right on the phone and never 
lost the SD slot either. Aside from Moto Actions and rebranding the 
launcher, Android is a pretty stock experience, including built-in 
Talkback that can be updated from the Play Store in the Android 
Accessibility Suite. Their phones also include fair amounts of internal 
storage and RAM. Most of these still have the fingerprint sensor, which 
is getting harder to find now for some reason, and some of their phones 
even ship with NFC if you want to be able to quickly pair some bluetooth 
devices by tapping them with your phone, send files from one phone to 
another by letting them kiss, or make contactless payments using GPay. 
My current phone, the G(7+), has 64GB internal storage, I have expanded 
it for under $30 with an additional 256GB removeable, which can be 
adopted as internal if desired, and it has 4GB RAM. It's not 8GB RAM, 
but the $150 price tag makes all the difference in the world. It's 
running Android 10, which is definitely new enough, and still gets 
security updates.


If newness of the OS and getting full OS updates rather than just the 
security patches is a concern, then your best bet is a phone that is in 
the Android 1 program. Several Nokia phones fall into this category, and 
although their prices are higher and you get less internal storage, you 
still can plug headphones into them and add a MicroSD. I think one of 
Nokia's Android 1 phones may still even have a battery that can be 
replaced easily without tools, which is something that is becoming 
impossible to find these days. If price is a concern, I don't think 
you'll find many of their phones that are more than $500.


Unfortunately, your carrier is a bit odd and has very little 
compatibility, so it looks like Moto is your best bet overall. In any 
case, do go with something that is factory unlocked, as although you are 
locked into your carrier for now, you don't want to extend that lock-in 
any further than you absolutely have to, and you will want to be able to 
carry that phone with you elsewhere when the need arises, or even put 
free service like the $5 TextNow SIM into it if you want to experiment 
or just have a spare phone that can make calls and send texts, and do 
most other things on wifi. Every other carrier in the country has now 
switched up its network to be compatible with most factory unlocked 
phones now, so in the future, finding one that is compatible with your 
network should you decide to change carriers will no longer be a 
concern, although Moto has had very broad compatibility for years, all 
while keeping the price relatively low. I hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

