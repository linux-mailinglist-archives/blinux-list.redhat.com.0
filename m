Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 669933D170E
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 21:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626895751;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=J0UCgsc/RP+LEfmMflFx4GRGQRKSdSZxdjxOPCRN/X0=;
	b=KYxtGHyU0496t/pIHIfZ4gEj7Vnz/KYR8hytlv5/BKpDVl6JOsAPYGEcOeWrAx5nExG6Pf
	oqVxN+q0601kykRQopFU9P7nyfT3OPyjrrmhouG8vhTe25AIqckIuhH/++T00HAJBQBvwl
	1LzDAaC+NzfDcQ5BqWNzuGmldxb4YMY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-175-ELAi4YnDPUqiwlWB0C8BTQ-1; Wed, 21 Jul 2021 15:29:09 -0400
X-MC-Unique: ELAi4YnDPUqiwlWB0C8BTQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CFA2C1008548;
	Wed, 21 Jul 2021 19:29:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6795360657;
	Wed, 21 Jul 2021 19:29:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BF85C1801028;
	Wed, 21 Jul 2021 19:29:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LJSwnp013270 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 15:28:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BCA8220D6982; Wed, 21 Jul 2021 19:28:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B810220D6985
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 19:28:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 28153801E6E
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 19:28:56 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-310-Ia6zhsgrOEGyCQvhaow_VA-1; Wed, 21 Jul 2021 15:28:54 -0400
X-MC-Unique: Ia6zhsgrOEGyCQvhaow_VA-1
Received: by mail-wr1-f44.google.com with SMTP id d12so3310007wre.13
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 12:28:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=vgYIJJyahwlDmi247O80nBGRlC7Ara6iXh0XtvTqB/s=;
	b=HixJeSH7bSh6GNRFW5pC1ayRIgvAPsIyfiDiuFOHA4l7AVFUt+l4qDdQUOG+DwS6j6
	fDI7BL26bv1C324BU/XBKLuNRkPY1tGYydIZeuuOH3qYhey0L4JJEQJPLpaaZEGeyEau
	qI/Jr0D08gIV1vjxQ/WULB2xZ5NH8eJMGgmJdSyB238hu3MvZ/M19F5fgeLB38fh3iQn
	v7lJdbTAZexRJgk5NzTrB99CXg1PmxEzIDirYBkJEkyEmf02gAB0dUDNDhWNeV76HEXZ
	DqhGI9O6j3OEXk7gNfr2y1NxclGkSi6iFwvQMAgKQTCfD08GsfQ9iP1GxRR8Fb7TqzvE
	lxbw==
X-Gm-Message-State: AOAM530Q8GP2SpM2tLf4DuaiDGvvqexCbqhSK7reOWvYo8W2qOxMnZhd
	3ve53Z0Mmm1nOdI0FZ5MDJFzgRVfDq/P4Q==
X-Google-Smtp-Source: ABdhPJxtP8eiH6L7ZclbtrMINqGKb3YalghDTh38xTqNyKMNPN8/ZYCgfXgRvH/r7TJ2NB/onGQloA==
X-Received: by 2002:adf:f54e:: with SMTP id j14mr44007081wrp.91.1626895732656; 
	Wed, 21 Jul 2021 12:28:52 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id l18sm708389wme.29.2021.07.21.12.28.51
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 21 Jul 2021 12:28:52 -0700 (PDT)
Subject: Re: Solus and Chromium breaking
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <16cb9466-0a59-0cb0-3b1f-854c02ae7f63@gmail.com>
	<CAGJxbF7H0Y=r8beqN8BGoYS=7cV-6LOr8av+ytRfbD+tXaDmBw@mail.gmail.com>
Message-ID: <1adfd63a-a22c-156f-8849-2693abf8588f@gmail.com>
Date: Wed, 21 Jul 2021 20:28:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAGJxbF7H0Y=r8beqN8BGoYS=7cV-6LOr8av+ytRfbD+tXaDmBw@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Just tested. That didn't do a thing. It's as if Chromium's not even 
showing as running within Solus. Which is amazingly odd even with the 
right flags. I've not tried making a flags.conf yetet (that's next on my 
list), but I swear there were settings I needed in config files or to 
export via a terminal however?

On 7/21/21 7:49 PM, Linux for blind general discussion wrote:
> When Chromium stuff breaks like that, hit Insert + H, then F2 to bring up a
> GTK dialog. Doesn't matter, just close it. Something breaks with focus when
> stuff like that happens.
> Devin Prater
> r.d.t.prater@gmail.com
> gemini://tilde.pink/~devinprater/
>
>
>
> On Wed, Jul 21, 2021 at 12:03 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
>> So, grabbed Solus 4.3 and ran into a few weird oddities with Mate.
>> Nothing insanely deal breaking, bar one or two things...
>>
>>
>> 1. For some reaso, the Mate DE doesn't have the orca shortcut set. This
>> isn't really an issue since alt+f2 and Orca takes care of it.
>>
>>
>> However...
>>
>>
>> 2. Chromium doesn't seem to respect flags set. And it breaks the
>> installed system to the point where it's locked up when quitting a
>> Chromium app
>>
>>
>>
>> 3. After upgrading, Firefox lost the browse/focus mde messages
>>
>>
>> So is it just me using Solus 4.3 here and anyone got any ideas, and no
>> 'use another distro' is not a valid answer. I've already suffered one
>> borked system due to Ubuntu being inane today and the terminal suddenly
>> not being a thing mid version upgrade, so...
>>
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

