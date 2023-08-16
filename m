Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B0477E1E7
	for <lists+blinux-list@lfdr.de>; Wed, 16 Aug 2023 14:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692190182;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1Bhm49QsuTIK9Q3nBj3ZdLdogeXWGM8LKc592GEjjxg=;
	b=igB8+gLFCYe2YGQGDoGAzLCMwr934L6UMxzv31qlf1DoLybQr0db0E7FIdCOgApbilDIzS
	yg1TA194M1gpbJpHBwFmT2gGfolzdJTrUKFa6GlomKVEPe+Pa7fuqZcGdKUJwo/cLU0BmE
	U3rjEMDtZw7/GfrgS6xxJKgrVlUK3fE=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-690-P2WWcTzMMEaoyYcn2kBNXg-1; Wed, 16 Aug 2023 08:49:39 -0400
X-MC-Unique: P2WWcTzMMEaoyYcn2kBNXg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2E703C10152;
	Wed, 16 Aug 2023 12:49:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 63C70492C14;
	Wed, 16 Aug 2023 12:49:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1AA81194037B;
	Wed, 16 Aug 2023 12:49:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 16 Aug 2023 08:47:54 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: transmission-cli question
References: <mailman.1271.1692187747.2238104.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.1271.1692187747.2238104.blinux-list@redhat.com>
Message-ID: <mailman.1418.1692190171.2238102.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

kill -s SIGUP <pid of transmission-cli>


On Wed, Aug 16, 2023 at 08:03:12AM -0400, Linux for blind general discussion wrote:
> In the man page it says giving transmission-cli a SIGHUP signal will cause
> transmission-cli to request more piers.  Can I do that with the keyboard
> and if so, what's the key combination to make that happen?
> 
> 
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: Europan Dance, at https://www.scifishorts.co/authors/rudy-vener
Need a Limerick Fix? Visit https://limerickdude.substack.com

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

