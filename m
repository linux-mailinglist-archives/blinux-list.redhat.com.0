Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A194E1C3A
	for <lists+blinux-list@lfdr.de>; Sun, 20 Mar 2022 16:22:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647789723;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0prLdmBbvzTzQgrjH1kuushJgafFgF3NS2FPCiEl/SY=;
	b=TE6VUMfx+K6a+clgtLzZTYETGti00DMeMtYVycgvLRTr1/ay1Qpm5DJuDzWeZRt82DIMw3
	rPuQMhbxbjec0eTQ4Ai11rLwYiIYltz3bi1MxlTDBD7qz/+tEBbMObxRHVW6q56Ft/q9pm
	411iLJMjZAlgGO7AynCsgPz+foDk1xA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-385-rEijdVi7Ob6Cl1AccoxGMQ-1; Sun, 20 Mar 2022 11:21:59 -0400
X-MC-Unique: rEijdVi7Ob6Cl1AccoxGMQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 43152380452B;
	Sun, 20 Mar 2022 15:21:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EE3341410F35;
	Sun, 20 Mar 2022 15:21:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 38C061953560;
	Sun, 20 Mar 2022 15:21:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: OT: alexandria.org
In-Reply-To: <mailman.3111.1647789229.111210.blinux-list@redhat.com>
Date: Sun, 20 Mar 2022 08:21:49 -0700
References: <mailman.2881.1647623735.111207.blinux-list@redhat.com>
 <mailman.2947.1647624813.111203.blinux-list@redhat.com>
 <mailman.2978.1647627242.111208.blinux-list@redhat.com>
 <mailman.3111.1647789229.111210.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.3027.1647789716.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Mar 20, 2022, at 08:13, Al wrote:
> 
> Thanks for suggesting that.  I still need to get used to the way alexandria.org works, but this helped.

It sounds like the site is promising, but has some a11y issues.  Given that it's a pretty new project, this would be an ideal time for folks to send them feedback.

- Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

