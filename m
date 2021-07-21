Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id AB4773D17DF
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 22:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626898828;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/GPoYlElxfYg0llV+v2FDqsnX3uCYDkosIHlEfnMVXw=;
	b=MwvYM0av55+Y5H7zwHWIOWa6GVgaNkHWGpD7s2ZxeT2GJY4k0iFaxP5yiuO5sr3G63JTuH
	wkiWhVGwdUhdXc6TQKETx7DedAO6IRoExA0gYr2mX9kxldnMdevmE269X5PeRmDAet9f5u
	fyknRg/YZoOCeB5iG9iiJuciCSizbMg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-247-sKxqyvomOAKf_Lmq0xADoQ-1; Wed, 21 Jul 2021 16:20:27 -0400
X-MC-Unique: sKxqyvomOAKf_Lmq0xADoQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 27B141853031;
	Wed, 21 Jul 2021 20:20:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFBA05D9DD;
	Wed, 21 Jul 2021 20:20:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B3271801028;
	Wed, 21 Jul 2021 20:20:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LKKH0g017432 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 16:20:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A9348FC73A; Wed, 21 Jul 2021 20:20:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A41C0FC74E
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 20:20:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 08AD889C7DE
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 20:20:15 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-12-6ZxtKxNpN-CcYV7-sitTag-1; Wed, 21 Jul 2021 16:20:12 -0400
X-MC-Unique: 6ZxtKxNpN-CcYV7-sitTag-1
Received: by mail-wr1-f41.google.com with SMTP id c12so3485664wrt.3
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 13:20:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=S5vupauktRICcYBVIS7xoQqD8sWgBUy7jjmr32JCZLk=;
	b=MgqmmD2SHZtuELkgwS6WePhF4XnMSkaOec7/SwGyPB7zjh+42Np0Hm+FFDqTmMezb4
	4CL9LwpR7QeUuQSSrh1bASSfti2nYzJ2t9Anf0mKGD73FC1AXglNcnNCBmeuyrJHsHs/
	0mSowZBddqj5U/PW5wLaQR20oOZgD/lngNdYtXeeT4RsESaTfSvVZ/DCdgTJMhTO4bZY
	KzEkoDRyk7+H/xoLtiu3eTxIyYoh+QNGSagR29blUy0uY2sJ50lKX+J8hyI9Rub9IV8K
	ADNKBp7smMEZBfAUUvYFcocfk/rV6NdZB6oWPBHm5E/NU6YGUQMEEXPEp5m7mki7hDkd
	x0Pg==
X-Gm-Message-State: AOAM532X+MIckcAplKfvojmceQVpXN9uOQgYcMcP2fn+hOZUrif/2mPW
	sJmAmoVtyv6naec+V8E7pkX0BcrH8zjDXw==
X-Google-Smtp-Source: ABdhPJyNrpnXRSQj63m0mUQtAv/FN2kR2KSrY3djjrX64Hq95BFCph1qyURyjA1qvdsDnW8er93qag==
X-Received: by 2002:a5d:64cc:: with SMTP id f12mr19296492wri.201.1626898811160;
	Wed, 21 Jul 2021 13:20:11 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id o18sm2485707wmh.0.2021.07.21.13.20.10
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 21 Jul 2021 13:20:10 -0700 (PDT)
Subject: Re: Solus and Chromium breaking
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <16cb9466-0a59-0cb0-3b1f-854c02ae7f63@gmail.com>
	<CAGJxbF7H0Y=r8beqN8BGoYS=7cV-6LOr8av+ytRfbD+tXaDmBw@mail.gmail.com>
	<1adfd63a-a22c-156f-8849-2693abf8588f@gmail.com>
	<CAGJxbF5ZRmXb7N=gQ8REOPBBpqeCO=PAgcw7xGz1Z8BYOrwQtQ@mail.gmail.com>
	<0b4c6937-3bbb-795a-bdcf-ad962622b164@gmail.com>
	<CAGJxbF6H70jjhStaSkrwZwO-MbKLXpXP_kEDmFy69sOULJPXfg@mail.gmail.com>
Message-ID: <08edbb7b-3148-d42e-cb42-f2a763e62e28@gmail.com>
Date: Wed, 21 Jul 2021 21:20:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAGJxbF6H70jjhStaSkrwZwO-MbKLXpXP_kEDmFy69sOULJPXfg@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Does it also happen, by the way with electron based apps?

I said Chromium, but it happens with electron apps however so....does 
that help at all? Still trying to figure out the settings I need to export

On 7/21/21 9:12 PM, Linux for blind general discussion wrote:
> That's what I'm trying to figure out too. I'm on Fedora, and I'm having the
> same problem.
> Devin Prater
> r.d.t.prater@gmail.com
> gemini://tilde.pink/~devinprater/
>
>
>
> On Wed, Jul 21, 2021 at 2:45 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
>> That was one of the problems. But that's sorted with your trick.
>>
>> Now trying to remember what I had to set where. Just tried vanilla
>> Chromium, and no luck right now. So do I need to set values somewhere or?
>>
>> On 7/21/21 8:36 PM, Linux for blind general discussion wrote:
>>> Oh, sorry, I thought you meant that Orca didn't talk after exiting
>> Chromium.
>>> Devin Prater
>>> r.d.t.prater@gmail.com
>>> gemini://tilde.pink/~devinprater/
>>>
>>>
>>>
>>> On Wed, Jul 21, 2021 at 2:29 PM Linux for blind general discussion <
>>> blinux-list@redhat.com> wrote:
>>>
>>>> Just tested. That didn't do a thing. It's as if Chromium's not even
>>>> showing as running within Solus. Which is amazingly odd even with the
>>>> right flags. I've not tried making a flags.conf yetet (that's next on my
>>>> list), but I swear there were settings I needed in config files or to
>>>> export via a terminal however?
>>>>
>>>> On 7/21/21 7:49 PM, Linux for blind general discussion wrote:
>>>>> When Chromium stuff breaks like that, hit Insert + H, then F2 to bring
>>>> up a
>>>>> GTK dialog. Doesn't matter, just close it. Something breaks with focus
>>>> when
>>>>> stuff like that happens.
>>>>> Devin Prater
>>>>> r.d.t.prater@gmail.com
>>>>> gemini://tilde.pink/~devinprater/
>>>>>
>>>>>
>>>>>
>>>>> On Wed, Jul 21, 2021 at 12:03 PM Linux for blind general discussion <
>>>>> blinux-list@redhat.com> wrote:
>>>>>
>>>>>> So, grabbed Solus 4.3 and ran into a few weird oddities with Mate.
>>>>>> Nothing insanely deal breaking, bar one or two things...
>>>>>>
>>>>>>
>>>>>> 1. For some reaso, the Mate DE doesn't have the orca shortcut set.
>> This
>>>>>> isn't really an issue since alt+f2 and Orca takes care of it.
>>>>>>
>>>>>>
>>>>>> However...
>>>>>>
>>>>>>
>>>>>> 2. Chromium doesn't seem to respect flags set. And it breaks the
>>>>>> installed system to the point where it's locked up when quitting a
>>>>>> Chromium app
>>>>>>
>>>>>>
>>>>>>
>>>>>> 3. After upgrading, Firefox lost the browse/focus mde messages
>>>>>>
>>>>>>
>>>>>> So is it just me using Solus 4.3 here and anyone got any ideas, and no
>>>>>> 'use another distro' is not a valid answer. I've already suffered one
>>>>>> borked system due to Ubuntu being inane today and the terminal
>> suddenly
>>>>>> not being a thing mid version upgrade, so...
>>>>>>
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>
>>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>
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

