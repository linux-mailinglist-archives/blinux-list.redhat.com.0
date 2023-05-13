Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E52587014CC
	for <lists+blinux-list@lfdr.de>; Sat, 13 May 2023 08:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683960525;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=v5vFwKe88Gpq8bnlnA89pLfQ3MlRES5XQ4Wl1kkt3Ak=;
	b=d74OSaLUTzojZDb+1+D+p2J7wjpIO1aahSgpdUXA5Gu4Ra5v+N+aaidveMWwq9Xpq1KJTJ
	7ninyIDqZbYW1Wh927/bMYm6Ilwl3HZ8gPNX4/djCsbbTW68IIzM+sjteXC/lw+EQGCYGh
	f6QkhfkO/Q0Zv43PMVAUGPbde+gntVM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-176-eQ4wQPG4P9uQiDtcGVkqXQ-1; Sat, 13 May 2023 02:48:41 -0400
X-MC-Unique: eQ4wQPG4P9uQiDtcGVkqXQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D170E185A7A4;
	Sat, 13 May 2023 06:48:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DFE9C463ED1;
	Sat, 13 May 2023 06:48:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 542F019451E8;
	Sat, 13 May 2023 06:48:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 13 May 2023 07:48:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: Tolc nd Wine support?
To: blinux-list@redhat.com
References: <mailman.2353.1683932002.2822856.blinux-list@redhat.com>
 <mailman.2366.1683934935.2822857.blinux-list@redhat.com>
 <mailman.20.1683957887.1505529.blinux-list@redhat.com>
In-Reply-To: <mailman.20.1683957887.1505529.blinux-list@redhat.com>
Message-ID: <mailman.24.1683960518.1505527.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

You don't absolutely need speechsdk, but I find it best to have it 
around. I think the 64 bit verb sapi provides speechsdk or at least the 
speech API. Usually if a game finds that NVDA is running, it won't have 
a paddy if it finds no sapi voices configured. So if you start NVDA 
before your game, you shouldn't even need to worry about getting sapi. 
If you have Wine 8.0 or higher you will be able to run NVDA in a 64 bit 
prefix despite it being 32 bit and it'll work just fine. I got cyclepath 
going this way.

On 13/05/2023 07:04, Linux for blind general discussion wrote:
> The only problem with this is that, IIRC, speechsdk only installs in a 
> 32bit prefix, and the game in question is 64bit however. Which is, 
> unfortunately, the sticking point that's being run into. I've had 
> succcess using nvda2speechd, which redirects NVDA's output through 
> speech-dispatcher and works in both 32 and 6bit
>
> On 5/13/23 00:42, Linux for blind general discussion wrote:
>> Hello,
>>
>> There is in fact a way to get NVDA working under wine, which would 
>> allow Tolk to be used. If you have an NVDA portable copy, you'll have 
>> a much better time getting this to work. It boils down to install 
>> msaa, speechsdk, and have at least win8 as your windows version in 
>> the prefix. Then run nvda.exe, say no if NVDA goes on about it not 
>> being able to start securely, and close the dialog for any addon 
>> updates. Now if you run a game, it'll come up talking with NVDA. If 
>> anyone has problems getting it working, let me know and I'll see what 
>> I can do.
>>
>> Harley
>>
>> On 12/05/2023 23:53, Linux for blind general discussion wrote:
>>> This is more for the WINE users, but....
>>>
>>> This came up due to a game updating to use Tolc, and the discussion 
>>> switly turned to kay, how do we get a workaround to make it run 
>>> under WINE?
>>>
>>> The game ships with a Tolc dll, as well as an NVDA dll. The NVDA dll 
>>> isn't the problem, that can be worked around with nvda2speechd, but 
>>> it's Tolc that is the issue. What is a good starting point to work 
>>> around this?
>>>
>>> Rastislav, I'm hoping you can look at this and help out, you cracked 
>>> nvda2speechd wide open and came up with that after all
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

