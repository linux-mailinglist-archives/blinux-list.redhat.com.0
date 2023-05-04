Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 125D26F7584
	for <lists+blinux-list@lfdr.de>; Thu,  4 May 2023 21:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683230289;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9Y/YBtwGCNN2OsXLrdkngJ6HplZjYHrUH9pwozRzH8Q=;
	b=Yg7hgMbZk66B4Rs0+3KHfhb1tjtpTh/J3x7PpVSXYsnaGU7msWdqMPUKNktW76d/jVlslv
	PfCmsvYi3Mg83yhCp6ORhwZPQRs/r97N5Y6whMf/ZhxAWolM8Z3IMXkMkQeo5BdD/5DoSL
	V7IrUQj6IjPYuk14GjConOXJ70bb+Jo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-554-BWwTIR0mMcWlZTs0Nbf_TQ-1; Thu, 04 May 2023 15:58:06 -0400
X-MC-Unique: BWwTIR0mMcWlZTs0Nbf_TQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 45ADB3C0F68A;
	Thu,  4 May 2023 19:58:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E2ECE2026D16;
	Thu,  4 May 2023 19:58:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4FCDA1946A49;
	Thu,  4 May 2023 19:58:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 4 May 2023 15:57:56 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Problem installing fenrir using pip in fedora 38 workstation
In-Reply-To: <mailman.1877.1683229429.290937.blinux-list@redhat.com>
References: <mailman.1649.1683139375.290942.blinux-list@redhat.com>
 <mailman.1628.1683140218.290941.blinux-list@redhat.com>
 <mailman.1717.1683182658.290935.blinux-list@redhat.com>
 <mailman.1846.1683185639.290938.blinux-list@redhat.com>
 <mailman.1877.1683229429.290937.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1909.1683230282.290939.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Try lsmod|grep -i evdev.
If evdev is returned as a response, you got evdev installed.
Others I like to modprobe are sg for scsi disks like dvd and pcspkr so the
beginning of a line when backspacing beeps if you go beyond it.  I've also
used that as a login confirmation test too.  It won't beep on backspaces
if you're not logged in.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Thu, 4 May 2023, Linux for blind general discussion wrote:

> Just tried it and was taken back to my prompt and got no output. Should I get
> some kind of prmpt should I get.
>
>
> Matthew
>
>
>
> On 5/4/23 3:33 AM, Linux for blind general discussion wrote:
> > modprobe evdev
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

