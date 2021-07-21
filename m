Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8D0B63D1732
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 21:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626896676;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V0B83Q1WeK2l4X0GvLEjhrhJ9NocjLI3bQ7hu3D3Yos=;
	b=fc4f6X5OMUEcbvSYSUjOq+CtmkkDq89Dr1KfD6qK3MAmBFi9CQHqPph7g53ihPpIwXu4bw
	f0+9rNEn5jUhkg/LlSHQ1+6OJXNkuwa3+sFGyZ0lwlD8NF381OZw3YCh44Lu3ONrXWQm7a
	s39InFk/iC3AUM8sWRdKxj2FiHnxOlU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-96-xdN9LroBNj22seFsBgxtbw-1; Wed, 21 Jul 2021 15:44:30 -0400
X-MC-Unique: xdN9LroBNj22seFsBgxtbw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A74D3800D62;
	Wed, 21 Jul 2021 19:44:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B7631970E;
	Wed, 21 Jul 2021 19:44:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C3A8C1801028;
	Wed, 21 Jul 2021 19:44:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LJiLAT014247 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 15:44:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 34C39202865F; Wed, 21 Jul 2021 19:44:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 30B2220D6985
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 19:44:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 74623866DF1
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 19:44:18 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-218-jFTR5FWlPgqYyDVGYTwJ0g-1; Wed, 21 Jul 2021 15:44:16 -0400
X-MC-Unique: jFTR5FWlPgqYyDVGYTwJ0g-1
Received: by mail-wr1-f49.google.com with SMTP id m2so3408660wrq.2
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 12:44:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=7wMZxI4LvjrZvp/x9k9N/9afwiEK41okkBtZsKKSTLY=;
	b=XEG67WJiNmT7D4/uFLJF0M4YJYJGUhqpz6cYKVq+sJm5JPzAtA/dLEQoAAqibhw6rT
	IF/BZQFu2SWJBAXOoC7KNd4eOjsdsacc254k9UOkmmOEMHo/0Y89Zt0pQnDlDNv590y8
	zkjwKtthCyKixBNppDN0vEBoXqZ4+7g96EgLp5uikCS/E8yfVo15tv1Ah5vv9qpZHipg
	W8yxg/o78ES33PuajmO9/KM9pAaW+I2FYsU6mdPlK76Ve3LlA7eO3k8HF3wim3qb/XCz
	54quHBAUqBHGqMUKicO8XpYJ53lVP46YSs3ulvw0MB66K6M/ZN2Mq8eelpymDhXvYGRD
	dF1w==
X-Gm-Message-State: AOAM5327eV0PxytcEu2p4Fu+cmKAUBpdgpDBR5M1DAsxTow7HmJq8tJj
	cYbtS7CgWvxckNSsoXPYnJZjR16cV+/Urg==
X-Google-Smtp-Source: ABdhPJzPW2PMnN8UuPbw5a51YtRjyyX98U9HrnYjZDRvIiE87Y+5LG/Td8GBV0/6Ldoo/PCLVNYQzQ==
X-Received: by 2002:adf:b307:: with SMTP id j7mr44801275wrd.243.1626896654785; 
	Wed, 21 Jul 2021 12:44:14 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id k25sm841071wmr.45.2021.07.21.12.44.14
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 21 Jul 2021 12:44:14 -0700 (PDT)
Subject: Re: Solus and Chromium breaking
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <16cb9466-0a59-0cb0-3b1f-854c02ae7f63@gmail.com>
	<CAGJxbF7H0Y=r8beqN8BGoYS=7cV-6LOr8av+ytRfbD+tXaDmBw@mail.gmail.com>
	<1adfd63a-a22c-156f-8849-2693abf8588f@gmail.com>
	<CAGJxbF5ZRmXb7N=gQ8REOPBBpqeCO=PAgcw7xGz1Z8BYOrwQtQ@mail.gmail.com>
Message-ID: <0b4c6937-3bbb-795a-bdcf-ad962622b164@gmail.com>
Date: Wed, 21 Jul 2021 20:44:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAGJxbF5ZRmXb7N=gQ8REOPBBpqeCO=PAgcw7xGz1Z8BYOrwQtQ@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

That was one of the problems. But that's sorted with your trick.

Now trying to remember what I had to set where. Just tried vanilla 
Chromium, and no luck right now. So do I need to set values somewhere or?

On 7/21/21 8:36 PM, Linux for blind general discussion wrote:
> Oh, sorry, I thought you meant that Orca didn't talk after exiting Chromium.
> Devin Prater
> r.d.t.prater@gmail.com
> gemini://tilde.pink/~devinprater/
>
>
>
> On Wed, Jul 21, 2021 at 2:29 PM Linux for blind general discussion <
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

