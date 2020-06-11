Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 372DD1F64B7
	for <lists+blinux-list@lfdr.de>; Thu, 11 Jun 2020 11:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591867652;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xNCTkInpeERjaEyxPcg1+TmUUau677sumUKKg197mkc=;
	b=QCWp31/WL/m0QjcAGo8ilwySppq11nSOl5wA43HRwPvwRLjGpq8HZcu++QV5hRv5+WbDeC
	sccB0BnctgVRqOUGp5ZAUTYprbNabg9MeSliVCQNvQxqozurnGZzEOnzkbh7W3IF9JGKdX
	cCzK9NTIOLZRgm+Jxlcv0/PVWFM4QYQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-305-XwXXihT6OrSlTkFttZ-nSQ-1; Thu, 11 Jun 2020 05:27:28 -0400
X-MC-Unique: XwXXihT6OrSlTkFttZ-nSQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D5DF01845171;
	Thu, 11 Jun 2020 09:27:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7235C5D9D3;
	Thu, 11 Jun 2020 09:27:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2F243B34B6;
	Thu, 11 Jun 2020 09:27:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05B9RHcg028742 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 11 Jun 2020 05:27:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4F41F2156A3A; Thu, 11 Jun 2020 09:27:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AEEF2156A2D
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 09:27:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 02C2A1033644
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 09:27:15 +0000 (UTC)
Received: from mail.carmickle.com (mail.carmickle.com [69.164.218.211])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-85-6R7bPyH0OkOaDdma4cwCcQ-1; Thu, 11 Jun 2020 05:27:12 -0400
X-MC-Unique: 6R7bPyH0OkOaDdma4cwCcQ-1
Received: from [192.168.116.128] (unknown [176.230.58.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.carmickle.com (Postfix) with ESMTPSA id 9C17166B6FA4
	for <blinux-list@redhat.com>; Thu, 11 Jun 2020 09:18:21 +0000 (UTC)
Date: Thu, 11 Jun 2020 12:18:17 +0300 (IDT)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: New Mail Sound in Alpine?
In-Reply-To: <alpine.DEB.2.22.394.2006102118150.4085102@chime>
Message-ID: <alpine.DEB.2.11.2006111218080.15039@debian.work>
References: <alpine.DEB.2.22.394.2006102118150.4085102@chime>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

On Wed, 10 Jun 2020, Linux for blind general discussion wrote:

> Can any1 please inform why I am not getting a beep for new mail, or how 
> to fixit?

The relevant setting is quell-status-message-beeping

I still get beeps for messages like IMAP timeout disconnection prompts, 
but this setting will stop the new message beeps.

> I would actually prefer running pine verses alpine, but we cannot build 2005 
> software.

Curious why you'd prefer Pine to Alpine.

Cheers,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

