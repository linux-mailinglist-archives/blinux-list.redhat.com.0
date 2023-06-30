Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C1876744027
	for <lists+blinux-list@lfdr.de>; Fri, 30 Jun 2023 18:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688144025;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gn7mCd388Tg3pIB7brYm/YzP6t+g9Nw7WZC95jY3eR0=;
	b=GzUtu0JEQtcvL/Vy7OyQF2FMpjFgdQn5LOmYK2LGEiv8UQF0ryeUGY9C4r33YTeoqmSCQY
	jsyw+1L0J8xJxWBL2YSYdXnKMxYj1goJyqQhMkq+qWsntJclMMGj7vQor3rdMYUG/wJqC0
	zMGCqoWj/y2WXhU4pFVr2PcqK3w39X4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-118-7eA41gSnNmCZJaIkhu9xiw-1; Fri, 30 Jun 2023 12:53:43 -0400
X-MC-Unique: 7eA41gSnNmCZJaIkhu9xiw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E8FE13C1015E;
	Fri, 30 Jun 2023 16:53:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B6EC740462BC;
	Fri, 30 Jun 2023 16:53:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4135D19452C4;
	Fri, 30 Jun 2023 16:53:15 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
Subject: Re: v p n and linux
Date: Fri, 30 Jun 2023 11:33:51 -0500
References: <mailman.1554.1688134875.3098363.blinux-list@redhat.com>
 <mailman.1673.1688141668.3098370.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.1673.1688141668.3098370.blinux-list@redhat.com>
Message-ID: <mailman.1615.1688143995.3098363.blinux-list@redhat.com>
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

Where may I get wire gard?
How may I find how to set it up?

> On Jun 30, 2023, at 10:42, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> 
> On 30/6/23 09:50, Linux for blind general discussion wrote:
>> I have never used a v p n before.
>> Which one might work well with linux?
>> Which might work well with orca?
> 
> I have WireGuard configured to provide extra security in connecting to my server. The configuration is simply a matter of editing files on both sides, and enabling WireGuard to run, so there's no accessibility issue at all.
> 
> It has been remarkably reliable. I haven't had to touch it since setting it up.
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

