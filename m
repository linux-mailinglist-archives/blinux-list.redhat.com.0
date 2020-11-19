Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8097E2B8ACB
	for <lists+blinux-list@lfdr.de>; Thu, 19 Nov 2020 06:19:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605763152;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=J4KqwmVFT3+RU4dARrW/zgemv/74hERHWiuoGYJ7h4g=;
	b=buoiIB/o7TWwqpb2HT2C78sNnnkIKs7q4lmVPR6Auu3bYLEL/aUi0k2X4FPe6yMS83P2NB
	8quggzaURl0tEG0IvOKLc/5aXCORCt56qE/G+vW2OfsyP9juezJUxDJ4aCafK3bwzt+qyY
	SzKKcJECCBkglZBg+tqEFZkBfGYXFuI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-531-24p-XPlSPha7eNnHh6IHJg-1; Thu, 19 Nov 2020 00:19:09 -0500
X-MC-Unique: 24p-XPlSPha7eNnHh6IHJg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 433B56D24E;
	Thu, 19 Nov 2020 05:19:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C266760636;
	Thu, 19 Nov 2020 05:19:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A1639180954D;
	Thu, 19 Nov 2020 05:18:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AJ5IqwM019080 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Nov 2020 00:18:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3804F2166BA2; Thu, 19 Nov 2020 05:18:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3262C2166B44
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 05:18:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D469A185A78B
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 05:18:49 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
	[209.85.214.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-507-dj-wkDb9P9eSJD6-D-0R4Q-1; Thu, 19 Nov 2020 00:18:46 -0500
X-MC-Unique: dj-wkDb9P9eSJD6-D-0R4Q-1
Received: by mail-pl1-f174.google.com with SMTP id d17so2316586plr.5
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 21:18:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=AdZDCs74DxFKszy15EKmVzhatY+VcU0M/z6gkOKRvww=;
	b=pm0c1omWRmrjaharHa56j7oHa5JNm/UZAUX7F38pjjpOrr+88ekPZ2lY1+rXD5bTnO
	Q0k5AJEmXowzzzJWTT8gH3MvJWu+9cAIbsVw1a3YAIoDPZmQ3PXH6VC8pzd9QodU927X
	jHxrD+Ornjj12d2ds0gNsNhoDwtEIyI9Kz3YSkD7jFTKjDBX7KHc5RCXhG2M2UafxoyG
	ZfxUn6jy7Y2V9sFzKOpquWH8UcHxzmZLOt/GdZ15mG2648gF3mHMUGMzla+ce7Pj9Gnv
	y2ggjWosKnN0n1rW3vegXJDNC4jro89wkvFtp3Gh9sy1Oksr4MI+ilcySDyWtkcpM7QA
	Q/HA==
X-Gm-Message-State: AOAM532vCRpZ4ePq4mGoUl8rkQ4WO3PPRl6tjZx9nohYCwTLfs+U0gI4
	tRCvuCNnPlyWim4uBaxaRRW1hWJI2ATxaA==
X-Google-Smtp-Source: ABdhPJz6+1ATYYNIpf9TCT24OmKjB6JB0S0Br73T7svFgsfclDx6hvG87xh9+uepjq9Wvc66e4gj/A==
X-Received: by 2002:a17:902:b582:b029:d6:6008:264d with SMTP id
	a2-20020a170902b582b02900d66008264dmr7555434pls.80.1605763125515;
	Wed, 18 Nov 2020 21:18:45 -0800 (PST)
Received: from [192.168.0.3] (174-18-35-29.tcso.qwest.net. [174.18.35.29])
	by smtp.gmail.com with ESMTPSA id
	26sm24507621pgm.92.2020.11.18.21.18.44 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 18 Nov 2020 21:18:44 -0800 (PST)
Subject: Re: as I suspected
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2011171247360.29919@panix1.panix.com>
	<CAN8Cudjc1YNLBu_MLC+MU5g51HBuqk4nh0i4osfyGETY-JPVUw@mail.gmail.com>
	<CAJKfDDG3bJqAjidbnyOouUo4kD8OKNkxiZe1cqzd4T-ATe-7Kw@mail.gmail.com>
	<alpine.NEB.2.23.451.2011172101190.5885@panix1.panix.com>
	<175d9abee88.276e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
	<alpine.NEB.2.23.451.2011181237320.25416@panix1.panix.com>
Message-ID: <67ed7599-090c-d5c3-1dd2-3fcda50767ba@gmail.com>
Date: Wed, 18 Nov 2020 22:18:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2011181237320.25416@panix1.panix.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

I have never gotten android to instal except in a virtual invirement

any one gotten this to work?

Hank

On 11/18/2020 10:38 AM, Linux for blind general discussion wrote:
> I don't know what's on the latest iso, and I don't know if a way exists
> to update android post-install yet.  It would be worth asking about
> that.
>
> On Wed, 18 Nov 2020, Linux for blind general discussion wrote:
>
>> Date: Tue, 17 Nov 2020 23:45:25
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: blinux-list@redhat.com
>> Subject: Re: as I suspected
>>
>> but only old android releases
>>
>>
>> Den 18 november 2020 03:03:46 skrev Linux for blind general discussion
>> <blinux-list@redhat.com>:
>>
>>> It's not based on a distribution.  See when you get the iso going, you
>>> have a choice of what's called jenux which is based on blackarch but you
>>> can also install android and if you do that at the end of a successful
>>> installation talkback will be reading your screen for you.
>>>
>>> On Tue, 17 Nov 2020, Linux for blind general discussion wrote:
>>>
>>>> Date: Tue, 17 Nov 2020 19:51:33
>>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>>> To: blinux-list <blinux-list@redhat.com>
>>>> Subject: Re: as I suspected
>>>>
>>>> Jenux is based on which distribution???
>>>>
>>>> Le mar. 17 nov. 2020 19:36, Linux for blind general discussion <
>>>> blinux-list@redhat.com> a ?crit :
>>>>
>>>>> Daniel Nash, the maintainer of Jenux, is a good friend of mine and he
>>>>> always seems to make sure that things stay updated. His dedication to the
>>>>> Linux operating system and to his user base has not been equaled in the
>>>>> space of visually impaired Linux distributions, at least in my opinion.
>>>>>
>>>>> On Tue, Nov 17, 2020, 11:48 AM Linux for blind general discussion <
>>>>> blinux-list@redhat.com> wrote:
>>>>>
>>>>>> A new iso was released.
>>>>>> https://nashcentral.duckdns.org/projects/Jenux-2020.11.16-dual.iso
>>>>>> for Jenux.
>>>>>>
>>>>>>
>>>>>> --
>>>>>> United States has 633 Billionaires with only 10 doing any annual
>>>>>> significant giving.
>>>>>>
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>>>
>>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>>
>>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>> --
>>> United States has 633 Billionaires with only 10 doing any annual
>>> significant giving.
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

