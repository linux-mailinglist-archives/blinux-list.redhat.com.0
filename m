Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E94834BC01D
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 20:09:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645211398;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=fLvychbZaZ6Y9PSi4ufP6p4N3th+w66NuV7AVsquevA=;
	b=duwJOYJIBFZ2lDRcANrbchqIUOnt7uudjf4c72g2JEEryF0LHucOfc5h0WUHyH887KJYXe
	BockIFuZxKVzQfizVeR8ddq1XUiT/EY6S3ptWvypmXJDKi9kPiYs2gNJ9cr/3DOzEwyLiy
	314LBNebIVCXv/VO4aEfBnrmCXbUwfM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-454-y_ogNgbyPY6cMPkyF27dhA-1; Fri, 18 Feb 2022 14:09:55 -0500
X-MC-Unique: y_ogNgbyPY6cMPkyF27dhA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C5662180A0A3;
	Fri, 18 Feb 2022 19:09:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C1A660843;
	Fri, 18 Feb 2022 19:09:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9D30E1806D1C;
	Fri, 18 Feb 2022 19:09:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IJ383X031074 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 14:03:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EBC6E5361DF; Fri, 18 Feb 2022 19:03:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E78875361D0
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 19:03:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD08F185A7A4
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 19:03:07 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-284-9bSt5XsXPtKHNi92JKYx4A-1; Fri, 18 Feb 2022 14:03:05 -0500
X-MC-Unique: 9bSt5XsXPtKHNi92JKYx4A-1
Received: by mail-wm1-f42.google.com with SMTP id k41so5821508wms.0
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 11:03:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:date:to:subject:in-reply-to:message-id
	:references:mime-version;
	bh=05OQY2ZxLrIvLjxBetGmkOrCRucusplqYnoEHGf3wtM=;
	b=hE6LXUxHjwdTsSIoiPLPo9ofSRoUa2HG+tpQ/ZZonN1OBBZ1sPGGsgRi50orM+TEX5
	fZCsZCbVNouh1QtwgqrUlff3SfjwMbD4Juq2PAy+y+O0NOTnj3htcqUNWdJsSnGoPtHE
	A2QPpGXwDpF5p7U6Wcqq0Vqj49RYo9iP1hnIltuFecYGF7a1s23C60dGejhluZc5iyc1
	s1vV88n6P35HygOlLU9lNgKDJrqMmqVDlWHx7D2n1N+yOwG/f5A7O6Zd6UzSDoJNpyq3
	/kc2YdbukcaJujbRHeOusYY26j3ebSA4ObiJ8iBeO3Ha4FcJ5obZUklDNiWVmhXBW+SF
	gPLg==
X-Gm-Message-State: AOAM532SQ3nLacgq2XUAnVq7XJKmVVeFsg9tcwrdGxAAsVZoexPchiDk
	YYp/5Pofq01Ai+5k4UkqYyv7FY2TpaweAQ==
X-Google-Smtp-Source: ABdhPJz5RFm5XrwIKpDw88rC4z5NrBwrWj7hWIGGCTVinMbzrZUYqrAnvLPeIlA5Wodg9Gs0DYf5ow==
X-Received: by 2002:a7b:cf16:0:b0:37b:c4c9:96c6 with SMTP id
	l22-20020a7bcf16000000b0037bc4c996c6mr8484468wmg.59.1645210984050;
	Fri, 18 Feb 2022 11:03:04 -0800 (PST)
Received: from brandt-slint ([197.184.176.211])
	by smtp.gmail.com with ESMTPSA id i7sm9946486wrf.67.2022.02.18.11.03.02
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Feb 2022 11:03:03 -0800 (PST)
X-Google-Original-From: Brandt Steenkamp <brandt@brandt-slint.local>
Date: Fri, 18 Feb 2022 21:02:50 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessibility of installing Distros?
In-Reply-To: <b4ac119d-cdf-7148-bc49-ab67e2ee751b@panix.com>
Message-ID: <8c364cb-a27b-bfc1-692-60bed09fe233@brandt-slint.local>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
	<BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
	<1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
	<efda5c9-a7d-44ad-2598-2db5bcb573@panix.com>
	<05EF6B4E-84E9-4A4B-A0CD-CA20610A93D2@gmail.com>
	<ac6f9804-9307-9ec8-060b-46b98d7abd93@gmail.com>
	<98ef81f8-d366-cb87-303d-2d52e4167a2c@gmail.com>
	<b4ac119d-cdf-7148-bc49-ab67e2ee751b@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
Content-Type: multipart/mixed; boundary="0-948330788-1645210982=:2313"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--0-948330788-1645210982=:2313
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

The issue is that it's already on a desktop, usually Mate.

If I install it again, I'm installing it console only, and then building 
it as I see fit, which would be with ratpoison only.

Will probably go to Arch directly anyway. Why get something that, firstly 
speaks with a Screen reader I never bothered to learn, since Speakup works 
well enough for my needs, secondly speaks so darn fast no human can 
understand the thing, especially if, like me you can hardly hear anything 
anymore anyway?

I can build my system in vanilla Arch as well as with anything else. I, 
for example wouldn't install Firefox at all, but probably one of the 
Chromium based browsers plus elinks for when I'm beeing lazy and want to 
stay on a console.

Warm regards,

Brandt Steenkamp

Sent from the Slint console using Alpine

On Fri, 18 Feb 2022, Linux for blind general discussion wrote:

> Date: Fri, 18 Feb 2022 13:41:19 -0500
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Accessibility of installing Distros?
> 
> Have you tried running startx to turn orca on?  You may find that works.
>
>
> On Fri, 18 Feb 2022, Linux for blind general discussion wrote:
>
>> Sometimes it would finish the install, then reboot, and come up speaking with
>> Fenrir with a very annoying voice, especially if you, like me is legally
>> deafblind, then after typing your username and password, Fenrir would just die
>> and you are stuck, I know it's a desktop environment, but nothing turns orca
>> on.
>>
>>
>> So much for an accessible distro.
>>
>>
>> This is why I love Slint. It does exactly what "you", tell it to do, not the
>> dev.
>>
>>
>> No disrespect to Mr. Nash, I'm sure he's a perfectly nice guy, not that I've
>> ever spoken to him though.
>>
>> Warm regards,
>>
>> Brandt Steenkamp
>>
>> Sent from the Slint machine using Thunderbird
>>
>> On 2022/02/18 17:10, Linux for blind general discussion wrote:
>> > Makes at least two of us.  The installer always found itself looping and
>> > repeating failed package retrieval.
>> >
>> >
>> >
>> > Cheers,
>> >
>> >
>> >
>> > Dave
>> >
>> >
>> >
>> >
>> > On 2/17/22 13:12, Linux for blind general discussion wrote:
>> >> I could never get Jenux to work correctly on my setup.
>> >
>> > _______________________________________________
>> > Blinux-list mailing list
>> > Blinux-list@redhat.com
>> > https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
--0-948330788-1645210982=:2313
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
--0-948330788-1645210982=:2313--

