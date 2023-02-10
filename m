Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4FB691615
	for <lists+blinux-list@lfdr.de>; Fri, 10 Feb 2023 02:11:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675991507;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JRWWVqzmwO26/Qup1KaoHvhRFSQMq+VdrEr/2zzMCJA=;
	b=GBN4iLTOanc9Zo8MXkAkhPkqG/sOO3CDKY2mSfm+9Jg9GOp/LBa4fBjwAQNdoCJAJpWNn8
	6L7Zl4o67hwkSCcZWRLsczHIFjICIVDfbawtvsNFPQ/FWEuga6938mV1wvxkNIuVOf2FMi
	C0UuYtbWymqUQ49yVNRL6Fhem/11kwc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-423-fxcZhf8qP9WcGbdp5Z7Jcw-1; Thu, 09 Feb 2023 20:11:44 -0500
X-MC-Unique: fxcZhf8qP9WcGbdp5Z7Jcw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 60D6C862FE2;
	Fri, 10 Feb 2023 01:11:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 21DCE4014CF2;
	Fri, 10 Feb 2023 01:11:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CDDDF1946597;
	Fri, 10 Feb 2023 01:11:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 9 Feb 2023 20:11:38 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: carbonyl: Chromium based browser built to run in a terminal
In-Reply-To: <mailman.5587.1675987861.8171.blinux-list@redhat.com>
References: <mailman.5886.1675981319.8177.blinux-list@redhat.com>
 <mailman.5469.1675986838.8174.blinux-list@redhat.com>
 <mailman.5587.1675987861.8171.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.5451.1675991501.8173.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I used lynx to view the readme.md file and in carbonyl/scripts you run the
build.sh script to build the package.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Thu, 9 Feb 2023, Linux for blind general discussion wrote:

> Well, there seems no man-page, also, seemingly 1 of the few read me files
> which are not capitolized. In those instructions, do they want me to run all
> those g n u commands? Thanks, this may be really interesting.
> Chime
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

