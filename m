Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C4A7BC44D
	for <lists+blinux-list@lfdr.de>; Sat,  7 Oct 2023 05:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696648161;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=51FV3kWQTbaCa/ZTHj7rnzFAkO5KnaW7eEozCXjmfi8=;
	b=Pvsj23X+sgxwQFOxUOXU3p+pghHfCB4CzrByLGRa6UZudV5a2BgxBtluIx8GrB/aBsYdSl
	6w5yyx5oWJLpoLnyJwjd/OLX4DLBPYV8imwSLlvRRfcA1EeUm6ioCQEdEFDTzHLB6V9lVB
	H/iTVqXeeNUGuO7a2DpPOd5+w0qL5N8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-581-1UW89ytaNXeeV96KgxivFg-1; Fri, 06 Oct 2023 23:09:18 -0400
X-MC-Unique: 1UW89ytaNXeeV96KgxivFg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C954C811E7E;
	Sat,  7 Oct 2023 03:09:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 27A9510CD658;
	Sat,  7 Oct 2023 03:09:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 61C4219465B1;
	Sat,  7 Oct 2023 03:09:15 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.1943.1696647005.2981447.blinux-list@redhat.com>
References: <mailman.1823.1696646293.2981450.blinux-list@redhat.com>
 <mailman.1943.1696647005.2981447.blinux-list@redhat.com>
Date: Fri, 6 Oct 2023 23:08:54 -0400
Subject: Re: opensuse tumbleweed
To: blinux-list@redhat.com
Message-ID: <mailman.1857.1696648155.2981441.blinux-list@redhat.com>
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

And really, is space really that much of a premium on install media?

I mean, flash storage is so cheap that it's hard to find anything
smaller than 32GB these days, and you have to go back like 20 years to
find machines that are limited to CD... and worse come to worse, you
can just put extra software on a second disc for those offline
machines.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

