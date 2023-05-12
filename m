Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3352B701290
	for <lists+blinux-list@lfdr.de>; Sat, 13 May 2023 01:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683934943;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1Gfs/IcTCUmNHIUXpPjZTBxvD0NbUKG00cSXIVS/VCE=;
	b=QPmkov1el9RI2dYNDpmVKwIx7e2uICXqg8N4Av4ciZEiym0AF652pixsXUXXp82zLKs+rH
	+p04H9JUc09t0QIR3cdGhKKdm7gbNIYCnG5d08mPu89WqpNbz1oTt0HvKTQb3gUbJ09cpM
	alyKaGj899W7AS2zT4ECZyJrwd51bak=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-479-BuHVHzctMnOuuRROdu0oCA-1; Fri, 12 May 2023 19:42:19 -0400
X-MC-Unique: BuHVHzctMnOuuRROdu0oCA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0F392299E74F;
	Fri, 12 May 2023 23:42:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D990C492C13;
	Fri, 12 May 2023 23:42:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3FE8619451E8;
	Fri, 12 May 2023 23:42:16 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 13 May 2023 00:42:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: Tolc nd Wine support?
To: blinux-list@redhat.com
References: <mailman.2353.1683932002.2822856.blinux-list@redhat.com>
In-Reply-To: <mailman.2353.1683932002.2822856.blinux-list@redhat.com>
Message-ID: <mailman.2366.1683934935.2822857.blinux-list@redhat.com>
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

Hello,

There is in fact a way to get NVDA working under wine, which would allow 
Tolk to be used. If you have an NVDA portable copy, you'll have a much 
better time getting this to work. It boils down to install msaa, 
speechsdk, and have at least win8 as your windows version in the prefix. 
Then run nvda.exe, say no if NVDA goes on about it not being able to 
start securely, and close the dialog for any addon updates. Now if you 
run a game, it'll come up talking with NVDA. If anyone has problems 
getting it working, let me know and I'll see what I can do.

Harley

On 12/05/2023 23:53, Linux for blind general discussion wrote:
> This is more for the WINE users, but....
>
> This came up due to a game updating to use Tolc, and the discussion 
> switly turned to kay, how do we get a workaround to make it run under 
> WINE?
>
> The game ships with a Tolc dll, as well as an NVDA dll. The NVDA dll 
> isn't the problem, that can be worked around with nvda2speechd, but 
> it's Tolc that is the issue. What is a good starting point to work 
> around this?
>
> Rastislav, I'm hoping you can look at this and help out, you cracked 
> nvda2speechd wide open and came up with that after all
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

