Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9996067F33A
	for <lists+blinux-list@lfdr.de>; Sat, 28 Jan 2023 01:38:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674866322;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FEw8wgFQkuvW7yHULveaHD+bPv0GofQx4Pxl2Rqvtzw=;
	b=UMgRLmo9THm1ioNwWps/u/qF5McQzq+QO8635qFZmUyRkYmTbCA5z9tkM51DpPMUnrWO5k
	rzUXY23fOjM9QBoXCv0UxWGHRVeZ0jMKhGnIFPIBiY9cjJTyeVLAFBXuDug4zGYvfbxNNM
	bDV+K4kbrtD8qMOR6DAAML8aehvs55Y=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-346-OZEJBk5bPDiL5oNsFmnFAQ-1; Fri, 27 Jan 2023 19:38:40 -0500
X-MC-Unique: OZEJBk5bPDiL5oNsFmnFAQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4FB558533DC;
	Sat, 28 Jan 2023 00:38:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9F4AC492C18;
	Sat, 28 Jan 2023 00:38:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3383019465A2;
	Sat, 28 Jan 2023 00:38:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: Twitter alternatives for the blind community?
In-Reply-To: <mailman.2120.1674865746.8168.blinux-list@redhat.com>
Date: Fri, 27 Jan 2023 16:38:30 -0800
References: <mailman.2126.1674833824.8175.blinux-list@redhat.com>
 <mailman.2028.1674835913.8171.blinux-list@redhat.com>
 <mailman.2120.1674865746.8168.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.2121.1674866317.8168.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm delighted to hear that Pleroma is working on improving a11y.  I'm already a big fan of the Elixir language (which Pleroma is based on), so that's a double win for me...

- Rich Morin

> On Jan 27, 2023, at 16:28, Kyle wrote:
> 
> ... [Pleroma](https://pleroma.social) is another that is already usable with Orca, and is actively developed and is specifically working to improve the accessibility of its default web interface, though other web interfaces exist, along with API's that allow applications of all kinds to access accounts and public timelines. Both Pleroma and Friendica are largely Mastodon compatible, so many third-party clients will work with either.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

