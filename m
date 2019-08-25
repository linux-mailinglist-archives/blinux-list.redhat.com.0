Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 3827D9C644
	for <lists+blinux-list@lfdr.de>; Sun, 25 Aug 2019 23:28:46 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 7413D308424E;
	Sun, 25 Aug 2019 21:28:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0ACC8600C4;
	Sun, 25 Aug 2019 21:28:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4372B2551C;
	Sun, 25 Aug 2019 21:28:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7PLSfBe011092 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 17:28:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 194671001B08; Sun, 25 Aug 2019 21:28:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx16.extmail.prod.ext.phx2.redhat.com
	[10.5.110.45])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 130241001959
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 21:28:38 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
	[209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 820333082B43
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 21:28:37 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id p23so9243540oto.0
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 14:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=VRHlqyK12hLFuboAHO8ei9qHajOOVubWuYQpJ5SXQMU=;
	b=XLEUvjaIFcV2QfD59H7VgysNBzLKrj/vWl/JcqC1dyYmwEEGagFycBV2Ozz9Jn3et4
	7I6xcCp4HDIIWxR/NRif1CK+x+/ls3PAH74EtdQqtWLeLNDwZazJIRNcTNu06proEEGV
	nKgwUUIiw57YqfqTjui0yDZf1bvhGV6LqZWimRmz8c+6U6vWm/Spr/NVHUjGB3S46lb/
	KqOlrrtSIVrkbsQlE4fQNUR52VHBWEY0MWiI8FjCVFsgau4xkwc8pfbxU0Zla9xlLL+t
	FAGTt2CWn7aEZlC4d2FUaXrxB305bIJx78woJCQ+/EfGqWEeGUFW/OgKZ4BbCvZ/NxLJ
	8RsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=VRHlqyK12hLFuboAHO8ei9qHajOOVubWuYQpJ5SXQMU=;
	b=QPXVQ2f89SdFWeolUEaLX26ektfOXuAr23d/BOu0w26PmE9OpVks6+HLkHYiGfhDoU
	9iLA88Ixkk4ZDH4lvjg4EOufunB6jH0ZBjSqZvxmElDaAYEDc5HJU7AYUho2ps/SkQyk
	UtRT/tLsJPaO5KVkDEPjSA9bsU3BRZS6kZngAVBG+OUhkwXl/bCiuXZEAJlMoxv+1bmr
	M9z5TXqBTo+nBN+GO8oyY/g5ODsr8QQrzkoFtCyV89xX2FFlsEO3LYNtQnxNzpySwiD5
	8ZawDXWIOZH1fZObiZB5pWZPUZkpzeTWSiA7Nuy7bSbUZSYeYvh8AP2GwJfCqBJqjNih
	dxnA==
X-Gm-Message-State: APjAAAVK+iO6DrxnDRmmUtsyUCMaOFMS/R3S7Ow1k1dUrgauC7Vxw3RE
	H2MVYyGdmNvp80RsVlJ02twcV7PU
X-Google-Smtp-Source: APXvYqyXS2Fp680Q5ULONus5xZqRpgSbXoQdHFC86dPEfgLs9uFjfkxFzqIEcSleVBn6cDqiwAyc/Q==
X-Received: by 2002:a9d:6a4a:: with SMTP id h10mr13479029otn.260.1566768516725;
	Sun, 25 Aug 2019 14:28:36 -0700 (PDT)
Received: from [192.168.1.11] (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49])
	by smtp.gmail.com with ESMTPSA id 9sm2796878oij.25.2019.08.25.14.28.36
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Aug 2019 14:28:36 -0700 (PDT)
Subject: Re: amazon?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<Pine.LNX.4.64.1908241501480.31524@server2.shellworld.net>
	<251aee8d-1527-b391-a37e-e4fbf6799996@gmail.com>
	<alpine.NEB.2.21.1908241555430.22902@panix1.panix.com>
	<7f8743f3-bddf-6807-b2bf-0e7443c9c322@gmail.com>
	<Pine.LNX.4.64.1908250041020.12504@server2.shellworld.net>
	<6acc536b-99c9-21f7-1d40-be4d10abab70@GMAIL.COM>
	<Pine.LNX.4.64.1908251207060.2365@server2.shellworld.net>
	<a1ef7648-72f7-8fc7-e5b5-142187a91cc0@GMAIL.COM>
	<74ebe647-3c78-b87d-c7a3-aa65d2d688d1@gmail.com>
	<20190825.212134.847.19@[192.168.1.131]>
Message-ID: <64b22aae-23e5-d645-eeb9-6c7646972090@gmail.com>
Date: Sun, 25 Aug 2019 16:28:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190825.212134.847.19@[192.168.1.131]>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.45]);
	Sun, 25 Aug 2019 21:28:37 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]);
	Sun, 25 Aug 2019 21:28:37 +0000 (UTC) for IP:'209.85.210.43'
	DOMAIN:'mail-ot1-f43.google.com' HELO:'mail-ot1-f43.google.com'
	FROM:'chaltain@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.43 mail-ot1-f43.google.com 209.85.210.43
	mail-ot1-f43.google.com <chaltain@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.45
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]); Sun, 25 Aug 2019 21:28:44 +0000 (UTC)

And yet Domino's is being sued because their web site and app is not 
accessible.


I agree with you but that doesn't mean law suits should never be filed.


-- 
Christopher (CJ)
Chaltain at Gmail


On 8/25/19 4:21 PM, Linux for blind general discussion wrote:
> The problem is most of us don't have money to hire lawyers. You'd be amazed how many people are screwed over, shoved aside and ignored because they lack the money, connections and clout to do anything. Companies aren't going to listen to a few, or even a few hundred customers, unless there's a clear advantage for them. That's why a lot of these complaints never go anywhere.
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Date: Sun, 25 Aug 2019 16:18:37 -0500
> Subject: Re: amazon?
>
>> I agree litigation should be a final step, but there are also certain
> sections of the blindness community who don't think law suits should
> ever be used, and IMHO, this is just another extreme that should be
> avoided. If a company isn't following the law, and nothing else is
> working, then law suits are a perfectly reasonable tool.
>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 
Christopher (CJ)
Chaltain at Gmail

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
