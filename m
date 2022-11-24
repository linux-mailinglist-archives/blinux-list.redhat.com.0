Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B9888637116
	for <lists+blinux-list@lfdr.de>; Thu, 24 Nov 2022 04:32:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669260763;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0WztacBeCd/8Rroq3XRDeVYMOXCwhGcOq/Ufd7w4O24=;
	b=C4SPRTu9il5gOoav7h7+jcALPNQcMGTUOyektbj3DC8/n+G2gfGS3Il8U25FOs0HkmPS9V
	9dNeXViouj14F+MjMKnIOzqeQ3PCPypxJTYQM0y5NSdjATiEUKeTtBHD2uCrXx45uWcfLk
	6leRF5ZYSKObjzri6t+59LjFvZ43/7Y=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-310-gFZ8ZLfSNlmrY0ptjv_W-Q-1; Wed, 23 Nov 2022 22:32:40 -0500
X-MC-Unique: gFZ8ZLfSNlmrY0ptjv_W-Q-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A7183101A56C;
	Thu, 24 Nov 2022 03:32:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B4AA3492B09;
	Thu, 24 Nov 2022 03:32:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 525131946595;
	Thu, 24 Nov 2022 03:32:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 24 Nov 2022 03:32:32 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: command line canadian English spell checkers?
References: <mailman.1562.1669259204.6932.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.1562.1669259204.6932.blinux-list@redhat.com>
Message-ID: <mailman.1633.1669260756.6926.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  According to my Debian box packages, the aspell package
should include a Canadian word-list.  You can either specify it
with a one-off

  $ aspell -d en_CA ...

or you can put it in your config:

  $ echo lang en_CA >> ~/.aspell.conf

to make it the default.  You can then check files like

  $ aspell check mydocument.txt

If the TUI interface is a bit too cluttered for your taste, lying
about your terminal-type can help:

  $ TERM=dumb aspell check mydocument.txt

There are a LOT of options to aspell, so you can lose hours reading
up on it and experimenting, but that should give you the basics.

-Tim

On 2022-11-23 22:00, Linux for blind general discussion wrote:
> Hi,
> rather simple.
> My dream here would actually be a DOS port of an entire Canadian  word
> processor, but I will take something that might be usable from the command
> line only.
> any ideas?
> Karen
> 
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

