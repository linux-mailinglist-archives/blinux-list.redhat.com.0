Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D3470148F
	for <lists+blinux-list@lfdr.de>; Sat, 13 May 2023 08:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683957899;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bGe9IE5eGtuEujLfZMmsRfLofJjgm9hfvted7G9DRGM=;
	b=YtpH5AdiZFYHeCPXop1IVoLxtyDrne/RbuMgwc21cupTGbcpwIJJyDTPvk/zu6rmJ0/UIt
	C6FpgsYHHJbK2vQVuT6PMRSlP6Oy9qjdh6Q4xsVRbJTjFqJT+kkOchxT6/uAksCfwLZhfT
	b9FRWweTAiKYknd3TVp0siYcyMa2/GE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-354-tEj6Mk2oP2SF61-g4kjkFw-1; Sat, 13 May 2023 02:04:55 -0400
X-MC-Unique: tEj6Mk2oP2SF61-g4kjkFw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB21629AA2F6;
	Sat, 13 May 2023 06:04:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 21A5340107B;
	Sat, 13 May 2023 06:04:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 748A119451E8;
	Sat, 13 May 2023 06:04:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 13 May 2023 07:04:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: Tolc nd Wine support?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2353.1683932002.2822856.blinux-list@redhat.com>
 <mailman.2366.1683934935.2822857.blinux-list@redhat.com>
In-Reply-To: <mailman.2366.1683934935.2822857.blinux-list@redhat.com>
Message-ID: <mailman.20.1683957887.1505529.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The only problem with this is that, IIRC, speechsdk only installs in a 
32bit prefix, and the game in question is 64bit however. Which is, 
unfortunately, the sticking point that's being run into. I've had 
succcess using nvda2speechd, which redirects NVDA's output through 
speech-dispatcher and works in both 32 and 6bit

On 5/13/23 00:42, Linux for blind general discussion wrote:
> Hello,
>
> There is in fact a way to get NVDA working under wine, which would 
> allow Tolk to be used. If you have an NVDA portable copy, you'll have 
> a much better time getting this to work. It boils down to install 
> msaa, speechsdk, and have at least win8 as your windows version in the 
> prefix. Then run nvda.exe, say no if NVDA goes on about it not being 
> able to start securely, and close the dialog for any addon updates. 
> Now if you run a game, it'll come up talking with NVDA. If anyone has 
> problems getting it working, let me know and I'll see what I can do.
>
> Harley
>
> On 12/05/2023 23:53, Linux for blind general discussion wrote:
>> This is more for the WINE users, but....
>>
>> This came up due to a game updating to use Tolc, and the discussion 
>> switly turned to kay, how do we get a workaround to make it run under 
>> WINE?
>>
>> The game ships with a Tolc dll, as well as an NVDA dll. The NVDA dll 
>> isn't the problem, that can be worked around with nvda2speechd, but 
>> it's Tolc that is the issue. What is a good starting point to work 
>> around this?
>>
>> Rastislav, I'm hoping you can look at this and help out, you cracked 
>> nvda2speechd wide open and came up with that after all
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

