Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 312DF69994E
	for <lists+blinux-list@lfdr.de>; Thu, 16 Feb 2023 16:55:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676562928;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OLixw3Szzq9sfsevw4PNrZzZ6GZ16R+tYt7OmE15w/c=;
	b=iu7TgQeyC5eYqf37CGwgYNWFOuPsx6OeDB/SEdwFWnZQDqBhO4ToPPP9dDpf0P0mFP/ABA
	7+BJ3aMxfcKB2ZSRIO+r40lzwAnOr6tJZ1SBqcudcA+/YAvCGLEiNaytDjTGdCb8dr3Wzm
	Wxk3++9S2OWEMJ7UOGT287OPZJTzgyc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-262-F3NQuMwSOpCHa6f7KMa-DQ-1; Thu, 16 Feb 2023 10:55:26 -0500
X-MC-Unique: F3NQuMwSOpCHa6f7KMa-DQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 44CE918E6C4B;
	Thu, 16 Feb 2023 15:55:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1D059140EBF6;
	Thu, 16 Feb 2023 15:55:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 972241946597;
	Thu, 16 Feb 2023 15:55:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 16 Feb 2023 16:49:52 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: audacity
References: <mailman.72.1676559958.3521.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.72.1676559958.3521.blinux-list@redhat.com>
Message-ID: <mailman.75.1676562907.3521.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Am Thu, Feb 16, 2023 at 08:29:01AM -0600 schrieb Linux for blind general discussion:
> Anyone ever used audacity before?
> All I want to do with an audio file is to raise its volume and then save it again.

If you only want to change the volume I wouldn't use audacity, imo that's
over-featured. I would use a commandline tool for example sox:

sox input-file output-file vol x

Hth,

Iris

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

