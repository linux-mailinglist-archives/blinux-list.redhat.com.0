Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C71DA4447E2
	for <lists+blinux-list@lfdr.de>; Wed,  3 Nov 2021 19:05:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635962742;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mib6/imt4jtqjnkPDQ9sw4h8UQ6YfkYewdDq0yXtML8=;
	b=T2dYfbWudBdSC4PZDfZ2zSJXLQB6bFrjSh8rY+FocqAkudBBuJk2GCm9a5OXcjIl5yYe+A
	LmVQLmgYBNz5eUu2YPx3adNZnU5P16HAosvZJEm1+FAUMhWZv3GXc9jP6ecHLDBRBj3ncH
	LuM/Jm2utPzHgl617e2NwJch/V86fBU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-CcQNjsfcPuCCFdh5izLeeQ-1; Wed, 03 Nov 2021 14:05:39 -0400
X-MC-Unique: CcQNjsfcPuCCFdh5izLeeQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 48D4D80668C;
	Wed,  3 Nov 2021 18:05:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A712C60843;
	Wed,  3 Nov 2021 18:05:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C9A5F4A703;
	Wed,  3 Nov 2021 18:05:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A3I5FBn026961 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 3 Nov 2021 14:05:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7D36F2156736; Wed,  3 Nov 2021 18:05:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 778412156735
	for <blinux-list@redhat.com>; Wed,  3 Nov 2021 18:05:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8B20C811E76
	for <blinux-list@redhat.com>; Wed,  3 Nov 2021 18:05:12 +0000 (UTC)
Received: from smtprelay01.ispgateway.de (smtprelay01.ispgateway.de
	[80.67.18.13]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-349-FYniNeC5O4m77eH-qzKW8w-1; Wed, 03 Nov 2021 14:05:10 -0400
X-MC-Unique: FYniNeC5O4m77eH-qzKW8w-1
Received: from [37.4.229.93] (helo=[192.168.178.104])
	by smtprelay01.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1miKdO-00061S-WF
	for blinux-list@redhat.com; Wed, 03 Nov 2021 19:05:15 +0100
Message-ID: <fce16660-109a-fbea-ad65-75d77c682445@linux-a11y.org>
Date: Wed, 3 Nov 2021 19:05:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.1
Subject: Re: FYI - The Yggdrasil Screen Reader Project
To: blinux-list@redhat.com
References: <CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<1C66A443-A56F-4B20-895C-DD5B7FB80918@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<20211102083235.nuzcsnnrrr2kxyno@begin>
	<CAPo=n-9A+Q-iGjhEbZbb=0bCdGHBtEsFZH8QoR4bn+AoudT3qA@mail.gmail.com>
In-Reply-To: <CAPo=n-9A+Q-iGjhEbZbb=0bCdGHBtEsFZH8QoR4bn+AoudT3qA@mail.gmail.com>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Howdy Rynhardt,

this is pretty awesome. Well i keep my libpeas WIP branch always up to 
date with orca master.
my job didnt alow me to continue my work the last couple of weeks. but 
things are working out well currently, so I just started working on the 
code.
maybe you might be interested in migrate your solution as a plugin?

Am 02.11.21 um 10:44 schrieb Linux for blind general discussion:
> FYI, I have a PR open for object navigation in Orca here:
>
> https://gitlab.gnome.org/GNOME/orca/-/merge_requests/101
>
> However, this probably still requires some work, and I suspect it will be
> easier to add in once the migration to the libpeas plugin framework is
> completed.
>
> Regards,
>
> Rynhardt
>
>
> On Tue, Nov 2, 2021 at 10:41 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
>> Hello,
>>
>>> Accessibility on Linux has historically been under-developed,
>> under-maintained,
>>
>> And thus let's split the effort instead of joining? Ew.
>>
>>> Members of the Rust community are reimplementing a number of C-based
>> programs, making the argument that they can improve on the current state of
>> the art.
>>
>> That is right for various C-based programs that are a pain to maintain
>> because of C. Orca is not a pain to maintain because of Python, it's a
>> pain to develop because the problem itself is complex. Rewriting in Rust
>> won't change that.
>>
>>> On the other hand, choices are good.
>> Choices are good when there are enough people to work on the various
>> choices. Split the community, and instead of having one good software,
>> you have two poor software.
>>
>>> not a tremendous amount of development occurring on either.
>> That's just a matter of people joining in.
>>
>>> Does Orca have object navigation? No flat review is not the same thing.
>> Where is the feature request for object navigation?  Where is the pull
>> request to propose an implementation?
>>
>>> Also, I can't remember which, but other the Orca dev or someone on
>> Mastodon
>>> reviewing Orca's code said that, I believe the Terminal-access code is
>>> "black magic".
>> For terminal access, it'll be much more interesting to run brltty, which
>> has decades of experience.
>>
>> brltty -b ba -x a2 -N
>>
>> Note that the "black magic" inserted in Orca is most often because it's
>> the application itself which exposes bogus information.
>>
>> Samuel
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

