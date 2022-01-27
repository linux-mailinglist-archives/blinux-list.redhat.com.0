Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C8C49E702
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 17:05:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643299500;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Jrrk5CA1NpRPrLm1Gl0zh6kZegeoegjorwbRlz/aErE=;
	b=O69sL84dRXkdRxKs28cANaf3b+qoK0UjTT+vc85lho4liWW0wqz9WB9VL4wUVl/ePS9kD9
	5f+xML2mGvn1LsOTJya6vLkV5t9uQc2lJCZpK/oUUlSDmgqW+dC8kvBk8FoXobX6KbWhuh
	+NUcpRnHtUDt66J+YI12ThtSvPm7pKg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-10-xdg_PGqOM3ipA8nh681cOA-1; Thu, 27 Jan 2022 11:04:56 -0500
X-MC-Unique: xdg_PGqOM3ipA8nh681cOA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EECBC2F26;
	Thu, 27 Jan 2022 16:04:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 301C7753C0;
	Thu, 27 Jan 2022 16:04:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9EF641809CB8;
	Thu, 27 Jan 2022 16:04:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20RG4XYo014441 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 11:04:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0B46140FF69B; Thu, 27 Jan 2022 16:04:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0656340FF690
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 16:04:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E72F3811E76
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 16:04:31 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-622-vLYUYsC7O462HW-uQXTfUg-1; Thu, 27 Jan 2022 11:04:30 -0500
X-MC-Unique: vLYUYsC7O462HW-uQXTfUg-1
Received: by mail-wr1-f54.google.com with SMTP id u15so5682869wrt.3
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 08:04:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=2AcoW3sLYDA3aheSCs4fUrBfnEUkHO2BMyPAkxNrjvg=;
	b=4qzltVEbForCUgNnOJLLYcoXvm9CBH5dSjIatQO+JN32ye7S2PyqfBHstgCsivrsMu
	TENIdp7mwYqYd3bB3NjLD6TFUMLSWF17mr/GQcmhctjDSIbxoAvhXfpmu2VE2L3fR7OM
	AOPryda2FUGhgU5TQrmq/YRu1vbUIKsFUQf19X60Wgb/jt8LpzmH6wJieYuG4nijpKwE
	+KRPq/jC0qBNfCArJm1xruL67nJFdWseFZkXs7TQJGEqOr9JKUiKg9dLKTyHRo1aBbYJ
	UqJqIXRW5PJUP1olfSz3FTPI6Y0RZrBRG7ox+zwPGhZuU8d5HugV1OEw6c2AlFGfnB92
	jSAQ==
X-Gm-Message-State: AOAM530V2nGQrI5EijTUI+waQX/kpxHztXs2KvG9OGIZR4XryjIP8xuY
	lyld+S4XX9BOj7HtszLMmLm5O74+JQBU+g==
X-Google-Smtp-Source: ABdhPJxIehMdpctW06+1m6ZJnd3saLPoyuwgzwCrxaTiuQi46Lz5ASaBB4OMnWLs4g/qPf+2earrsw==
X-Received: by 2002:adf:f30e:: with SMTP id i14mr3341308wro.633.1643299468623; 
	Thu, 27 Jan 2022 08:04:28 -0800 (PST)
Received: from [192.168.1.130] ([87.74.163.68])
	by smtp.gmail.com with ESMTPSA id
	o14sm3018524wry.104.2022.01.27.08.04.28 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 27 Jan 2022 08:04:28 -0800 (PST)
Subject: Re: Why do you use Linux? expanded from Converting text to mp3
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <13d57fcf-44bf-b872-146b-e02674d479ee@gmail.com>
Message-ID: <8d5d4a8a-dfa4-65c8-677d-d0f0108768d9@gmail.com>
Date: Thu, 27 Jan 2022 16:04:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <13d57fcf-44bf-b872-146b-e02674d479ee@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'll answer the why question first.

Because it just works, bar a few minor quirks. I don't have to stop what 
I'm doing to update. I can know what is on my system and if something I 
need isn't in a repo, I can find it in, say, the AUR, or Github, or 
Gitlab, or pip.

It's not really a case of why do I use /Linux/, it's more why do I use 
this setup of Linux. Because it works for what I want. Is it 110% 
perfect? No.

But it is, for my use case, a hell of a lot better than Windows thinking 
it knows best, using my bandwidth and making it hard to control what is 
on the system. I don't have to pay through the nose for what I 
personally need, or have people on the Windos side hit me over the head 
with their preferred screenreader of choice. I can use what I want with, 
99% of the time, nobody being extremely preachy, or going 'but but pay 
$900 for this software you absolutely need'

Nah. I can install and after a little bit of setup, be it with an 
installer, or by hand, I can be up and going. I could probably just 
write a little script to install what I want and config what I want on a 
new system.

Also, I've not had that many kernel panics or BSOD equivalents in Linux, 
whereas I regularly had 1-2 BSOD on Windows due to hardware that didn't 
work that well but works flawlessly in Linux. I'll take stability and 
uptime, and not having a preachy, judgemental bunch of people trying to 
pressure me into buying some bit of access software, any day.

Linux for blind general discussion wrote:
> Your mac in the terminal is a flavor of unix so all that is familiar to you in linux is the same.  Macports and homebrew are two of the
> repositories with many of the same choices as in the linux ones. The many mac quality voices are available also.
>
> On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
>
>> Hi Karen-and-thanks for an introspective topic. My road to Linux was a slow
>> transition. I had my first PC with DOS6 from 1994-97. Got windows95 so I would
>> have an easier time playing mp3s, which were fairly new at that time. The
>> concept of just being able to mash enter on a highlighted file to play was
>> appealing. But a majority of the time I was stilling going to a DOS prompt to
>> get in to a shell account to read mail in what was then pine. In 2003 once the
>> late Bill Acker helped set me up with DecPC drivers, we tried a duel boot
>> system, including first Redhat9 and later Fedora. Because there were so many
>> anoying issues with those DecTalk drivers, I found myself going back to windows
>> where DecTalk sounded great. Maybe early 2005 got either a newer pc and
>> certainly a USB DecTalk, which I still have. 1 night in 2006 a friend from
>> HighSchool was here, I tried playing him a Weird Al video, but each time
>> Windows Media Player would lockup. I finally just went back in Linux-and-played
>> him an audio version. Next time we went from Fedora 6 to 9 we practicly had a
>> ceremony when we got rid of windows forever. In 2010 with needing a new PC, I
>> switched to Debian, as they have more of the latest packages.
>> In 2006 I got involved with a local Linux LUG, where I occasionally received
>> many hours of valuable asistance-and-even sometimes I was able to help.
>> Even though I have many struggles with web-sites which I cannot access because
>> of the javascript disease, I am still willing to stick with Linux, as once its
>> setup, it is a comfortable envirenment.
>> I have a Chromebook which I almost exclusively only attend Zoom meetings, as
>> far as I know, no1 has  written any commandline scripts to run Zoom in a
>> non-graphical setting. I also have a Mac but have not really looked in to
>> classes at an Apple store, but at least all of these machines have Linux I can
>> run.
>> Just last evening I was trying to help my Wife in windows7 but its practicly a
>> foreign language now from win98.
>> And lastly Karen, Linux provides me so much customization. I have 24 text
>> consoles. My Linux expert wrote me software to play-and-record streams with 4
>> sound-cards. I think I recorded maybe 10 streams at a time-and-later edited
>> them, as well as ajusting levels. So I have `much flexibility in Linux-and-am
>> `really happy here at nearly 70 next month. Thanks so much for listening
>> Chime
>>
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

