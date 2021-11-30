Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E51463F46
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 21:30:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638304225;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KTJZhFvtfwNbhIWgt78+bTwtLZCTIVXzt8X9vNLk1Yo=;
	b=XriHWomg9A8ATgY44/cocf8ipxP31s00pokon3/hmKEEGK3fvXYoKvffZBXkaIVU/Gkhy+
	1xvvgvili9klTKUUT3T6kxhh+vvqcYibf9VanR+sYsL6KztHvve+6Y6OAf6J99UmcU42N/
	te82yW6SncmjaHBD9Ap0IZL7r4F0Qx4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-35-tqsrIxILMXiaPfm7ubApCQ-1; Tue, 30 Nov 2021 15:30:23 -0500
X-MC-Unique: tqsrIxILMXiaPfm7ubApCQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D364192CC41;
	Tue, 30 Nov 2021 20:30:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6BE710023B8;
	Tue, 30 Nov 2021 20:30:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8F40D4BB7B;
	Tue, 30 Nov 2021 20:30:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUKRA5K025012 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 15:27:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D306E492C3B; Tue, 30 Nov 2021 20:27:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CF084492C38
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 20:27:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B60D21066564
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 20:27:10 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-286-V4oB5Wf1OZiMg5FSqjuVNg-1; Tue, 30 Nov 2021 15:27:09 -0500
X-MC-Unique: V4oB5Wf1OZiMg5FSqjuVNg-1
Received: by mail-qk1-f175.google.com with SMTP id d2so28208580qki.12
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 12:27:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=DWyqg1br8NfryvMQNC3CLEpl7j8hGBLke1QDHqcQTko=;
	b=jOZdu2xz50/i39QK2aqhy2gCUH6Kid3GPWOSRbVmgH7cfAFS5GCL9X1DZpn8ySrStu
	Er2/2GlnQ3K34om3jWc3ktu87vFejn5NrbN0ZLg0iFYmAywaVTSJnlcK3qnaM91LDZKN
	JopTJbMMlzCCGhDeyUGp3ePEavZ86qShhrsjKMxMk56a0NgVyaKEdG3tro/26Jb70HWi
	Sxnk9F7K00HA7fFlfsvyE9LeMfTb1i0QAHYkwCCu87UZM31vD50OgXeu3PBUhHDOkkei
	m2jxnjmlS9cHKJDynmK2S2rcEm0lOpVk/UwdEaQvCemVOXHXk2LseG2d/CF5E7j7/4po
	+93A==
X-Gm-Message-State: AOAM531NOBQ9N57E90zHddCjKWuqu+9Jl5Aim9FWShBccltoC1MEETuw
	sLcAg0EpocWD6ijdF6rdKThuAMQXKk4=
X-Google-Smtp-Source: ABdhPJzUHDjzHwedORnAAkOUBoyxSyNLeSJJ06GFuxabcwdjm5XMlDj4VMIAPpyUSCxB8MrYu9PEbg==
X-Received: by 2002:a05:620a:4087:: with SMTP id
	f7mr1698680qko.639.1638304028310; 
	Tue, 30 Nov 2021 12:27:08 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	j14sm1735502qkp.28.2021.11.30.12.27.07 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 12:27:07 -0800 (PST)
Subject: Re: What is the easiest and most accessible editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<61abb084-c69c-17f5-dc0e-fe6447caf720@gmail.com>
	<6029d348-4a5d-9371-38a7-b2a940901b92@gmail.com>
	<CAO2sX332h-dTG7uubXnj1JPhDJ9oLaaGVt98T7gCpFeQZBbdcg@mail.gmail.com>
Message-ID: <874eda6a-1f4b-29e4-0d74-cd7d42e484fe@gmail.com>
Date: Tue, 30 Nov 2021 15:27:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX332h-dTG7uubXnj1JPhDJ9oLaaGVt98T7gCpFeQZBbdcg@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I believe what we have come to know as standard desktop keys may have come from 
some fairly old word processors, although most I knew of 30 to 35 years ago 
didn't have most of the cut, copy and paste keys and such. I remember an old DOS 
editor called Boxer that if I remember correctly had many of the selection 
arrows and such, and I seem to recall being able to cut, copy and paste in a 
similar way. There once was a word processor known as Word Perfect that came 
with a computer running DOS 6 I had 25 to 30 years ago, and if I remember 
correctly, it may have use some of these same keys. I specifically remember it 
having a blue screen background, and pressing shifted arrows would highlight the 
selected text white. I don't remember if it used the control+x, c and v for cut, 
copy and paste, but it seems it may have.

As for control+q and control+w, q means quit, and w is for window, which closes 
the current tab or window, but alt+f4 can do the same, which I do believe came 
from older desktop operating systems. I don't like what I call stupid questions 
that make me take extra steps just to close a window that I really did want to 
close already, which is why it's unfortunate that Nano and I believe also Pico 
chose these keys to perform searches, especially since I can derive no mnemonic 
from the keys. I'm so glad we have Micro these days. Where has this gem been all 
my life of using ssh and other terminals?
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

