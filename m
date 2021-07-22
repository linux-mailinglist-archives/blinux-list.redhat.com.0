Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 689B13D1F56
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 09:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626940383;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=G89I+KILt/aruTYuS8gJV5EElxbFKiyCpB/wWlV4w+s=;
	b=C8sI31zO5+2kOf8oa1zqQvbdNG7BVdAdbSY68Ev5bwl0kSvq11mUi/2Wb8ln5o4z8seH82
	ODS5tfkpaTsUYj3vsdUskybgpxfnkWhsoJsI/TftJ7un4qznjaq2DJAGPBJYHDVyAMHTlt
	myxTvNU0bJYDXmKeZspvcJiv32ma64M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-513-PeQ-EqDTPRG4XwzJfo93vg-1; Thu, 22 Jul 2021 03:53:02 -0400
X-MC-Unique: PeQ-EqDTPRG4XwzJfo93vg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72040DF8A3;
	Thu, 22 Jul 2021 07:52:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 067375C1BB;
	Thu, 22 Jul 2021 07:52:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 88F414BB7C;
	Thu, 22 Jul 2021 07:52:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16M7qm1X010892 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 03:52:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AB08C20BB909; Thu, 22 Jul 2021 07:52:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A6A5A20BB907
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 07:52:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 50D03800159
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 07:52:45 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-571-OPSazePZMkSXs3R-_TMpHg-1; Thu, 22 Jul 2021 03:52:43 -0400
X-MC-Unique: OPSazePZMkSXs3R-_TMpHg-1
Received: by mail-wm1-f48.google.com with SMTP id
	o5-20020a1c4d050000b02901fc3a62af78so973646wmh.3
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 00:52:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=cyfZqbC5Xq2XpJEEIUJZX99B/TdnOekI+4C4QiwfxTo=;
	b=JwFZBcmf0Igz4JM8nMsBcDGqMFygVZhyNAP3u4QyoeijBs7kCM6Foy0WmlIJ9S6Tzj
	Ht0yiZbdF960L1bApKJK4jl3krOLEEtvppoBuqNlbeEUqgXjY0RW/pM3erc8AFlp9OZt
	RVYtpCLodirlmWPdAZk74M7g0zbVX3gNHd2WEMVLjL03nLJ/bvrbAxcmDylPbaxIqqJH
	xDkZP0HBRxXYwPE+wnbrPyyzQur24+Qtu9cDEHvoxpJ0wL/SRb4fsQt+diT6asvFs3ez
	to1y/IawWXyMLL7iHcTb6eCMX315Xkhc8I+izIcFSEViQPmKW9pkwrqKnIRmsmQCyYeS
	tUYA==
X-Gm-Message-State: AOAM533vZyPCeLxoYNOSjBQ39dtse0uiL1MfZBCU/1uw06kDiqX6vl5g
	7RaH1NWl2hX93hFBKUkY5mWc2jpkU7w94w==
X-Google-Smtp-Source: ABdhPJz/gglK4TZXuWL8PoLZhtNP182LyARFFDjkwHxFnoXnr7TTHghGdCIQac5LmwfCz1mx2BT2NA==
X-Received: by 2002:a05:600c:4a17:: with SMTP id
	c23mr41543451wmp.7.1626940361694; 
	Thu, 22 Jul 2021 00:52:41 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id
	e15sm28705666wrp.29.2021.07.22.00.52.40 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 00:52:41 -0700 (PDT)
Subject: Re: Solus and Chromium breaking
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <16cb9466-0a59-0cb0-3b1f-854c02ae7f63@gmail.com>
	<CAGJxbF7H0Y=r8beqN8BGoYS=7cV-6LOr8av+ytRfbD+tXaDmBw@mail.gmail.com>
	<1adfd63a-a22c-156f-8849-2693abf8588f@gmail.com>
	<CAD_4ddTnvv4kF06R03YFvYyRvusp+Z3Vkwhe7T2eNFDJfRT+Ew@mail.gmail.com>
Message-ID: <544ebf9b-92eb-509a-0f0f-26f7ec7f63d0@gmail.com>
Date: Thu, 22 Jul 2021 08:52:40 +0100
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So....turns out I forgot to set up environment variables.

Now wondering if the flags.conf stuff works on Solus, hm...

So, here's what I did.


In .profile


export ACCESSIBILITY_ENABLED=1


Save the file, log out/back in, problem solved once the flags are set on 
the command line or dekstop file

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

