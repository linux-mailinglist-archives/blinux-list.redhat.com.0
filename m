Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8BC75A04E
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jul 2023 23:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689800628;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OIn/QSwwKGbV4kuWisM7zN5AfEEoeTneL/L/Jv/DHBU=;
	b=G0fr+8HN8LNTqT9ATJqjek7aIoZTr7pmMHX0h9Vf3+WHM8xocRqIQ8hk2JPqWDxPNszBnb
	XqE0anK4/xlW5C79J7vIpuo9Qw3xYmpjt/L+TxPsHu4dW+FdA6AqlYynFoQSTznEFd4REX
	oDV6+zBqSaVoqikA3FBUihCUUV3BXVA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-102-lwML2_p1NGWDVxl6IDn7kw-1; Wed, 19 Jul 2023 17:03:45 -0400
X-MC-Unique: lwML2_p1NGWDVxl6IDn7kw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 210F1185A78F;
	Wed, 19 Jul 2023 21:03:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 55E5F1121314;
	Wed, 19 Jul 2023 21:03:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 447591946A41;
	Wed, 19 Jul 2023 21:03:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
Subject: Re: Attention chime: the podcast client
Date: Wed, 19 Jul 2023 16:03:23 -0500
References: <mailman.119.1689509513.687817.blinux-list@redhat.com>
 <mailman.83.1689515407.687813.blinux-list@redhat.com>
 <mailman.98.1689516548.687812.blinux-list@redhat.com>
 <mailman.131.1689519363.687818.blinux-list@redhat.com>
 <mailman.1276.1689797270.687810.blinux-list@redhat.com>
 <mailman.1585.1689797886.687814.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.1585.1689797886.687814.blinux-list@redhat.com>
Message-ID: <mailman.1630.1689800618.687818.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

What is h podder?

> On Jul 19, 2023, at 15:16, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Well, I only used h podder, which I basicly liked. Actually it was an only client I found easy. I suppose I can show you the main menu
> number 1 Add new category
> number 2 Edit category
> number 3 Delete category
> number 4 Add new podcast
> number 5 Edit podcast
> number 6 Delete podcast
> number 7 Choose episodes to download
> number 8 Start downloads
> number 9 Search for podcasts
> number 10 delete from download queue
> number 11 update all podcasts
> number 12 archive
> Choice:
> Back again live, really what can be simpler than that? Sure as more of us use it, we can suggest wish list items, such as currently it doesn't check for duplicate titles or eppesodes. Thank you for an interest.
> Chime
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

