Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 817114F9481
	for <lists+blinux-list@lfdr.de>; Fri,  8 Apr 2022 13:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649418724;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DjSfvBXm6ouZt9nYgPm6sdVSAfrSCqAHdc7YXcQp1js=;
	b=GXaIW7TgAf2b9nWOXhuoWeuivhDSQUTL8S3ulxH7o+wBG1vUO32GhiwDA53ZKDr9Kdc7Wy
	h3A0vXPoi/4fOj2G3CtfHA2lsdKhesmG0hZnyspCxVs7bP9fIntDvDRwDNjkqBXiMiH8pq
	3LZPvnXXvyI6/bgBTTaQSoykEbXnLpM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-197-g60XxIbpPYSa2USJpgUMWw-1; Fri, 08 Apr 2022 07:52:01 -0400
X-MC-Unique: g60XxIbpPYSa2USJpgUMWw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4C4051066559;
	Fri,  8 Apr 2022 11:51:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6017EC27E90;
	Fri,  8 Apr 2022 11:51:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8D5501940348;
	Fri,  8 Apr 2022 11:51:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 8 Apr 2022 14:51:50 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Good Orca friendly terminal file manager?
References: <mailman.7330.1649379323.111201.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.7330.1649379323.111201.blinux-list@redhat.com>
User-Agent: NeoMutt/20220408
Message-ID: <mailman.7070.1649418717.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Apr 08, 2022 at 01:55:15AM +0100, Linux for blind general discussion wrote:
> I thought I asked this before, but...
> 
> Is there a good, Orca friendly file manager laying around? I can live
> with Caja or pcmanfm, but I'm wondering if there's a good terminal based
> file manager that works with Orca?

I am using nnn and very happy with it.

-- 
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

