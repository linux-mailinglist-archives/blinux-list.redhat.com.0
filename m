Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 616F1699FD3
	for <lists+blinux-list@lfdr.de>; Thu, 16 Feb 2023 23:41:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676587318;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8Ow9cf28bMFDEuayFUgqlbGFTQzlLiTw9TFn+GpvXiU=;
	b=OYoqg2ninP2WC6MmlrWtxdM5+yZBpCgWQSTkW0eIQn0dJgKuQ7GQ6ztqtK38KgV1d6KXut
	4O9TmUzL1iYxjgeqRB0zypD6dbFzr1dNCFsxm0c0M9nKSlkkEOu+1kFveGBFwS1X6enCS5
	O0ZYooUY80j7+qWigOAl0AZs2tFfi8k=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-609-lLtRD48LP8ubB_raijJ7RA-1; Thu, 16 Feb 2023 17:41:54 -0500
X-MC-Unique: lLtRD48LP8ubB_raijJ7RA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 195F41C05AC8;
	Thu, 16 Feb 2023 22:41:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2BC5240C1423;
	Thu, 16 Feb 2023 22:41:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 84D1F1946597;
	Thu, 16 Feb 2023 22:41:43 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 16 Feb 2023 17:29:44 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: audacity
References: <mailman.72.1676559958.3521.blinux-list@redhat.com>
 <mailman.75.1676562907.3521.blinux-list@redhat.com>
 <mailman.99.1676564186.3519.blinux-list@redhat.com>
Mime-Version: 1.0
In-Reply-To: <mailman.99.1676564186.3519.blinux-list@redhat.com>
User-Agent: Mutt/1.4.2.3i
Message-ID: <mailman.128.1676587302.3515.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Feb 16, 2023 at 11:16:14AM -0500, Linux for blind general discussion wrote:
> According to Iris:
> >sox input-file output-file vol x
> 
> 
> Yes, probably much better than using the sledgehammer when a screwdriver 
> will do the job much more efficiently, although it would be better if 
> there was a way to use sox to raise the volume to the maximal level 
> allowed without clipping.

There is. The "stat" option in sox outputs a "volume adjustment" which is
the maximum value of the "vol" parameter that could be applied without
clipping. Use "stat" with the "-n" option. The "stat" command-line and
the "vol" command-line invocations of sox could be combined into a single
pipeline assuming a non-crippled shell.

-- 
Henry Yen                                       Aegis Information Systems, Inc.
Senior Systems Programmer                       Hicksville, New York

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

