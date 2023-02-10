Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A42D0692452
	for <lists+blinux-list@lfdr.de>; Fri, 10 Feb 2023 18:21:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676049662;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=A/yFlH3AcKV9HdbUrDMigxstQspKPWl6u5U5ZkHWQS8=;
	b=HiNlbludcAIHLPODW9I9jDABal+rh9lVGlZDpMaG9eAuASvy8mxs9f+LYVLMeKHs02/nMk
	wuQ2Tn332QOpgr4nA3YLlcyvNWdF8gLdwmRI1X4tz6nsRFOZVCr9XJaFMzzp5zrbu1AN/n
	ybMEmh2qUKxomy30wjd7SGXlZoREW4g=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-67-cIddSnQPMVCothQFYnSwyg-1; Fri, 10 Feb 2023 12:21:00 -0500
X-MC-Unique: cIddSnQPMVCothQFYnSwyg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 97CE9858F09;
	Fri, 10 Feb 2023 17:20:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DDE84492B01;
	Fri, 10 Feb 2023 17:20:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7F7D219465A2;
	Fri, 10 Feb 2023 17:20:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 10 Feb 2023 17:20:52 +0000
To: blinux-list@redhat.com
Subject: routing audio from one application to another
User-Agent: K-9 Mail for Android
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.5778.1676049656.8169.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi everyone,

Today I ran into a situation where it would have been very helpful for someone I was on a voice chat with to be able to here the audio of an application I was using. Unfortunately, I wasn't able to get this to work, the best I was able to manage was setting my default input to monitor of <default output>, but this had the disadvantage of them hearing all system audio, and not being able to here my voice.

My ideal setup is something like this:

A virtual output device

A virtual input device that captures audio from the virtual output above

A way for my microphone to also be heard

A way for me to hear the audio being sent to the virtual output device (probably easiest achieved by just listening to the virtual input, but i'm not sure how to do that either).

I also would need a way to force an application to use that device, as in many cases applications just use the default with no option to change from their interface

I assume most of this if not all will be possible with pipewire, perhaps requiring the use of jack but I have no idea where to even start configuring this.

Any help would be greatly appreciated, sorry this was a long one.

Thank you for your time,

Aaron. 
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

