Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 16FE63D17C3
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 22:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626898616;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=J2b/fcibgN7q8ScfrThpckKPWxkNNc1sZtLrCnagnp8=;
	b=EwC5BEbSZfGiYOV09u9sDtl9DuZTPkCoNoAdS3UpFC8sv+Y/Gcmpc59N3wjzED/qf2a9XR
	ZFHLDayyQ9OF0iuUmHlRyToZlg3ifXMgVctsg4C+D7Huqjj+DwDnfULWdvwUKNDZIbxcGU
	VZyLiMTg8BqyS9b+y0N+cFzDlRpu7h4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-558-fciCFUBdPHGVWlX0cuQ7mQ-1; Wed, 21 Jul 2021 16:16:54 -0400
X-MC-Unique: fciCFUBdPHGVWlX0cuQ7mQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D70451853027;
	Wed, 21 Jul 2021 20:16:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D1206091B;
	Wed, 21 Jul 2021 20:16:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 15B971801028;
	Wed, 21 Jul 2021 20:16:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LKGk3k017149 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 16:16:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BE6161031F28; Wed, 21 Jul 2021 20:16:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B9F0B1031F33
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 20:16:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13254801E80
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 20:16:44 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-421-RksLMA3LNSu3uOmr0YgRXA-1; Wed, 21 Jul 2021 16:16:42 -0400
X-MC-Unique: RksLMA3LNSu3uOmr0YgRXA-1
Received: by mail-wm1-f44.google.com with SMTP id
	z8-20020a1c4c080000b029022d4c6cfc37so220632wmf.5
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 13:16:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=QpFMlusY8bAEVBM9Krt1nOCwe1eMMrp4Y0l2NBS+p1w=;
	b=tGVQ4wUnaGKc28M7u27XFdkj++Nu0PSy5HaDp5arO9ixex9c2R4mMSzbLXOx6mQRBs
	JCfrNNSpZLnPabeQAUR4tmWZG4PeeMUp5VJBzivl4UtObh4TpSD7OK8DujhG3lcsCW2Y
	NeeJ352Ven5FdX+Rz0syJL/H2rkR+5QoeHSH40aWJ8/rcgSDFKuTHWOoObuQGo7VMKvG
	LSc2Io3V9LA6ct4hl5bi8efc6m0vuaG0z9Uzbpv1TA+LNU/iHDS37Hsg0H03ezWBFHdB
	0jk0ZO7JGwDKnONSidBDabEZCjasgfYKkR9W2Kjv+hXjQ7h8iVmTY2uIDnDeYGj6o2XH
	Ig2g==
X-Gm-Message-State: AOAM532UnYOlIkilT0CuABtqim0A92vHItCrK98k6ti2vbj6KNGZR5Sr
	rBhMK70CPjPUJNfUzVtwNiAyBFbnKg4dNQ==
X-Google-Smtp-Source: ABdhPJyoFVrfyQ0tOf5X7/N2jWsZHVa23HtMgLsjFeJC8Tn3gCEiCuQEEl6uYnGk5VdYH8GM9QuHPA==
X-Received: by 2002:a05:600c:1c93:: with SMTP id
	k19mr39597370wms.125.1626898600478; 
	Wed, 21 Jul 2021 13:16:40 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id
	i10sm15208275wml.31.2021.07.21.13.16.39 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 21 Jul 2021 13:16:40 -0700 (PDT)
Subject: Re: Solus and Chromium breaking
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <16cb9466-0a59-0cb0-3b1f-854c02ae7f63@gmail.com>
	<CAGJxbF7H0Y=r8beqN8BGoYS=7cV-6LOr8av+ytRfbD+tXaDmBw@mail.gmail.com>
	<1adfd63a-a22c-156f-8849-2693abf8588f@gmail.com>
	<CAGJxbF5ZRmXb7N=gQ8REOPBBpqeCO=PAgcw7xGz1Z8BYOrwQtQ@mail.gmail.com>
	<0b4c6937-3bbb-795a-bdcf-ad962622b164@gmail.com>
	<CAGJxbF6H70jjhStaSkrwZwO-MbKLXpXP_kEDmFy69sOULJPXfg@mail.gmail.com>
Message-ID: <e9a14811-d7e0-30be-ecd1-ef3d47927981@gmail.com>
Date: Wed, 21 Jul 2021 21:16:39 +0100
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Ah, so for us non Ubuntu/Arch folks, did you try with the flags enabled?

I'm still trying to hunt down what I need to explore and put in the .rc 
or .bashrc or whatever files, I forget what goes where and Google's not 
helpful

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

