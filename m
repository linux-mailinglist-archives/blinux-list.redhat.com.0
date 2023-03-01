Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3DE6A657A
	for <lists+blinux-list@lfdr.de>; Wed,  1 Mar 2023 03:29:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677637757;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jW2JrMfBaVdn1I+fCHTBkfD4/NB2eVrwDIgtRWs8HNc=;
	b=g7IEzseoIoU1jFKieKLnN+2WzspH9PpUv5i/Vw6A9bR26ZdOqFylql7M1LcTq+wEvizZnz
	hZ7e2/yRLVCQw/a8kmBEqoeK0UwJhpThxHirFI9/I/yV0HoDg6MJVYZqGaqjP0BJIS0nwz
	5RrJkFX5o353fJA2SCOaKOH+U+3uh3s=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-119-MGAxREz7OeykZzDoZgUXzw-1; Tue, 28 Feb 2023 21:29:13 -0500
X-MC-Unique: MGAxREz7OeykZzDoZgUXzw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8DE06882820;
	Wed,  1 Mar 2023 02:29:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9E95440C6EC4;
	Wed,  1 Mar 2023 02:29:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4802E19465A8;
	Wed,  1 Mar 2023 02:29:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Tue, 28 Feb 2023 18:29:02 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Looking for a podcast player
In-Reply-To: <mailman.1067.1677637392.3183648.blinux-list@redhat.com>
References: <mailman.999.1677627794.3183649.blinux-list@redhat.com>
 <mailman.976.1677633132.3183645.blinux-list@redhat.com>
 <mailman.1067.1677637392.3183648.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1037.1677637749.3183650.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

One of the inconsistancies I notice, as an example, an MSNBC podcast seems to 
only store 5 eppesodes, so we would probably want a cron job to grab them 
before they expire.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

