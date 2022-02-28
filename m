Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6F44C71CE
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 17:37:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646066271;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=X/kelLLXHHcxpyPicPzvz0RXHarHlxXKSyc68yDOheU=;
	b=DMLAMHjZgAX081pAnnwvAwrT/GhXzXhWWQjaVt9tZofnUCFwbxYd6a2pt5OAWtp5YPfU+A
	9+WGnLaPbyATwb/Cwmd8/KiwPAp2FqGDc3FzvmydOuqep6RPAc4JVK5p2Vj+B7SWIaAI5F
	4NlUKO6YTfQkbU59/UMlnrrhviqStv4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-83-MKKe3gACM0idomYESHvveQ-1; Mon, 28 Feb 2022 11:37:50 -0500
X-MC-Unique: MKKe3gACM0idomYESHvveQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E5E6A805EE5;
	Mon, 28 Feb 2022 16:37:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0332B7C030;
	Mon, 28 Feb 2022 16:37:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DD1C44ED27;
	Mon, 28 Feb 2022 16:37:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21SGbbf2022622 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Feb 2022 11:37:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1357D40E80E7; Mon, 28 Feb 2022 16:37:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F59F40E80E6
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 16:37:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB8FA811E75
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 16:37:36 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-115-YiL2Bf7oMPeAn3VL5IO4Lg-1; Mon, 28 Feb 2022 11:37:35 -0500
X-MC-Unique: YiL2Bf7oMPeAn3VL5IO4Lg-1
Received: by mail-wm1-f47.google.com with SMTP id
	r187-20020a1c2bc4000000b003810e6b192aso6430973wmr.1
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 08:37:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=RWJiQAk/S7sAvIUDZ8pTbTuLE/0Fku/l4zyx0kj36l0=;
	b=l0L+v1GMr703NGAUtcdhowk5URSm7vendyEnlX0nyWQwHIz7/eWMbuzVmSL9DjpB7n
	ZEcrqdck8lXk9pD5vhJWmePvDIJQLPo4DpvhfTZKUtC9ffAzTAW22IxSKbObqxgU3Vlc
	l6fLhpu/JturD5rJq0bBIA/qS4ehdzADI+QQ7a2iId7BvNJKAxucopOdN5BpFnZkcTPJ
	jWK6BLEoszd7Pfq2ql2LdAzE5c1hWKLRhabJubpw/IE8PIXEytOmibxVwMjzdEXWMnQW
	YMQJTdnw+SRd/A6vz6UOiqHv92re2EZPXW00cDW8uI6PX4GfZUzngYdCt2m8tc5EAKTB
	haYQ==
X-Gm-Message-State: AOAM530GNmlhWWPtmV7WDOFzPzpY6tM+0WTWqdXYRv4rf9wTkDLmtJA5
	PpLBVoR9GLetztMPdRHwnqGXB/9Up171bA==
X-Google-Smtp-Source: ABdhPJxX77frcWw+R6zOpbHE01mm6QfsSEdQHYJVPEeAaF02oDxkqABsBtXW6cAag84h2ppbcMnJDQ==
X-Received: by 2002:a05:600c:1d05:b0:381:4fdd:e761 with SMTP id
	l5-20020a05600c1d0500b003814fdde761mr7946535wms.89.1646066253462;
	Mon, 28 Feb 2022 08:37:33 -0800 (PST)
Received: from [192.168.8.130] ([197.184.177.193])
	by smtp.gmail.com with ESMTPSA id
	17-20020a05600c241100b0037c01ad7152sm16240884wmp.14.2022.02.28.08.37.32
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 28 Feb 2022 08:37:32 -0800 (PST)
Message-ID: <30be31e3-1962-44f3-a7ea-c5895e9870b1@gmail.com>
Date: Mon, 28 Feb 2022 18:37:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.1
Subject: Re: Use alexa on linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b58188d0-6477-4bd2-1f6-3e9115dafb5a@gmail.com>
In-Reply-To: <b58188d0-6477-4bd2-1f6-3e9115dafb5a@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

Unfortunately not very useful to me, since my distro of choice (Slint) 
doesn't have anything to do with systemd, thank goodness, being software 
developed by a company (Redhat), and snapd, again proprietary software 
requires parts of systemd.


Warm regards,

Brandt Steenkamp

Sent using Thunderbird from the Slint machine

On 2022/02/28 16:45, Linux for blind general discussion wrote:
> Here is a 2020 article:
>
> How to Add Alexa to a Raspberry Pi (Or Any Linux Device)
>
> https://www.iotforall.com/how-add-alexa-raspberry-pi
>
> On Sun, 27 Feb 2022, Linux for blind general discussion wrote:
>
>> This, unfortunately, is an old article.
>> Devin Prater
>> r.d.t.prater@gmail.com
>>
>>
>>
>>
>> On Sat, Feb 26, 2022 at 10:58 AM Linux for blind general discussion <
>> blinux-list@redhat.com> wrote:
>>
>>> Amazon's Alexa Can Now Run on Your Windows, Mac, or Linux Machine
>>>
>>>
>>> https://gadgets360.com/internet/news/amazons-alexa-can-now-run-on-your-windows-mac-or-linux-machine-1472377--
>>> ent-
>>> XR
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

