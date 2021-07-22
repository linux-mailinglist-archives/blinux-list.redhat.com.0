Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4EBF83D1FB4
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 10:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626941703;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gp65KtRWt280sbe6+qV4tojATamGH32AjvnnuwDoIbg=;
	b=T7PWjdbxv1cGaF0C7nsMH7Cb0dLAE1AnxHHZwT3cM0Zpt5wvUxhMGiag6tpwwsUU84HmWw
	AKWRKISg3mQJpOv1LWfxYsElq2WefeH+dxyhRiVO0x5ecTzpS7XI0xPsH0d863ovg1o/kF
	aZ+9B1etU55wOu805rp1g3XghfGgRew=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-440-VaQQQUw_N7mr14G406SOBg-1; Thu, 22 Jul 2021 04:15:01 -0400
X-MC-Unique: VaQQQUw_N7mr14G406SOBg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0803610150A9;
	Thu, 22 Jul 2021 08:14:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 517305D6B1;
	Thu, 22 Jul 2021 08:14:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4BBA94BB7C;
	Thu, 22 Jul 2021 08:14:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16M8Em5o013097 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 04:14:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 38058208DDA1; Thu, 22 Jul 2021 08:14:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 33DE0208DD9F
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 08:14:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9316C101A529
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 08:14:44 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-587-zHWyigBPNO6dLCtlu68Ydw-1; Thu, 22 Jul 2021 04:14:42 -0400
X-MC-Unique: zHWyigBPNO6dLCtlu68Ydw-1
Received: by mail-wm1-f53.google.com with SMTP id
	q18-20020a1ce9120000b02901f259f3a250so2432021wmc.2
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 01:14:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=DJntm1P4eZL0puuv/v0KnJ2BmSGUAuycdKw3ivYOF4k=;
	b=BOqGseIJjvWiYYWDt5IhUWWgX7c8yStH1WrNaRE9uhxZ8k1MTsWAlFXFY0uITMNbvI
	LGyRXBXgeSVr7X8EAdUEI5Dn9LRYO70y1C5RvbbyK37tHF5gWHGKINOVn7GHxF4qUH90
	yLJyVIL1w5GKbVsdotnt3ysz5yFS/Ukpu63fEq64Pg26aHb9Rexr/PIonB+JHOeKSJ2K
	/cJu27l//gIRmvVCSNhntP8jRP3cL/5rLn15RxTZwrdh2q0JRJE9TqQsuyvS5zKZEIMB
	oqVx9amt7JSE+xG//1pTBbu/aAsyJIOJmdrMxolN/prkz5PlOihQhjtcnB4oz/+ImzMg
	Tniw==
X-Gm-Message-State: AOAM533tLCLfVCQENUbHgwEKtCTs1dwHN1vFUdqKsAk1yEp1IELiW3S0
	u9D6MvnHM2bgdpqpTDgzixmVlPgwp+RQXw==
X-Google-Smtp-Source: ABdhPJyWiKlIels0xTdztrzhwYTbTAkqBebzrrReYeDYg7DzrRHRE5DFUE7L+hdyw+5gJzoEwg5nfg==
X-Received: by 2002:a1c:7314:: with SMTP id d20mr7759335wmb.156.1626941679817; 
	Thu, 22 Jul 2021 01:14:39 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id 125sm754070wmb.12.2021.07.22.01.14.38
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 01:14:39 -0700 (PDT)
Subject: Re: Solus and Chromium breaking
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <16cb9466-0a59-0cb0-3b1f-854c02ae7f63@gmail.com>
	<CAGJxbF7H0Y=r8beqN8BGoYS=7cV-6LOr8av+ytRfbD+tXaDmBw@mail.gmail.com>
	<1adfd63a-a22c-156f-8849-2693abf8588f@gmail.com>
	<CAD_4ddTnvv4kF06R03YFvYyRvusp+Z3Vkwhe7T2eNFDJfRT+Ew@mail.gmail.com>
Message-ID: <9c79a038-b427-d15f-d836-b496307026dd@gmail.com>
Date: Thu, 22 Jul 2021 09:14:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAD_4ddTnvv4kF06R03YFvYyRvusp+Z3Vkwhe7T2eNFDJfRT+Ew@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

As a quick update. Here's what I did on Solus to get Chromium/Chrome 
based stuff working


1. Set the export ACCESSIBILITY_ENABLED=1 in ~/.profile


2. Set up the flags in .config/Brave-flags.conf or Chromium flags.conf 
or the Chrome equivalent

3.Launch browser.

It works fine for me on Solus, using the Mate DE

On 7/22/21 10:23 AM, Linux for blind general discussion wrote:
> Hello there,
>
> I am having sort of the same problem here on arch: I installed the latest
> google-chrome from the AUR, and well, no matter what I do, it doesn't start.
> Does it happen to you on Solus as well?
> For me electron apps work without a hitch though, and vanilla Chromium
> works just fine.
> Best regards.
> francisco.
>
> On Wed, Jul 21, 2021 at 7:29 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
>> Just tested. That didn't do a thing. It's as if Chromium's not even
>> showing as running within Solus. Which is amazingly odd even with the
>> right flags. I've not tried making a flags.conf yetet (that's next on my
>> list), but I swear there were settings I needed in config files or to
>> export via a terminal however?
>>
>> On 7/21/21 7:49 PM, Linux for blind general discussion wrote:
>>> When Chromium stuff breaks like that, hit Insert + H, then F2 to bring
>> up a
>>> GTK dialog. Doesn't matter, just close it. Something breaks with focus
>> when
>>> stuff like that happens.
>>> Devin Prater
>>> r.d.t.prater@gmail.com
>>> gemini://tilde.pink/~devinprater/
>>>
>>>
>>>
>>> On Wed, Jul 21, 2021 at 12:03 PM Linux for blind general discussion <
>>> blinux-list@redhat.com> wrote:
>>>
>>>> So, grabbed Solus 4.3 and ran into a few weird oddities with Mate.
>>>> Nothing insanely deal breaking, bar one or two things...
>>>>
>>>>
>>>> 1. For some reaso, the Mate DE doesn't have the orca shortcut set. This
>>>> isn't really an issue since alt+f2 and Orca takes care of it.
>>>>
>>>>
>>>> However...
>>>>
>>>>
>>>> 2. Chromium doesn't seem to respect flags set. And it breaks the
>>>> installed system to the point where it's locked up when quitting a
>>>> Chromium app
>>>>
>>>>
>>>>
>>>> 3. After upgrading, Firefox lost the browse/focus mde messages
>>>>
>>>>
>>>> So is it just me using Solus 4.3 here and anyone got any ideas, and no
>>>> 'use another distro' is not a valid answer. I've already suffered one
>>>> borked system due to Ubuntu being inane today and the terminal suddenly
>>>> not being a thing mid version upgrade, so...
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>
>>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

