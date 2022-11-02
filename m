Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C49756162C0
	for <lists+blinux-list@lfdr.de>; Wed,  2 Nov 2022 13:34:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667392489;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mndpDBz38/mv9Z/Ew83SYpPfPto3fh7IQP5OQF/uqLY=;
	b=E6hw71l+cstVaxq5CDz4/Azf83wmIM1Uz6QbtqWQOYrin1kzsa08Bxr89s+vtAifwwFmZF
	uPm7xuYewYZjbUYg0qTwfBD1RF6Sm+TCF/u+mnFWz+DkNVsbng0oRIIOQsLqroUGGag9Gc
	RO/sEstvjlT5ed8AE0UIw/lQ5GhcPYY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-100-31CkrOUYOn-BEGL-RffHmA-1; Wed, 02 Nov 2022 08:34:48 -0400
X-MC-Unique: 31CkrOUYOn-BEGL-RffHmA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E84462A2AD4A;
	Wed,  2 Nov 2022 12:34:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3BA40111D795;
	Wed,  2 Nov 2022 12:34:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F2F3C1946A42;
	Wed,  2 Nov 2022 12:34:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.3888.1667389910.3008.blinux-list@redhat.com>
References: <mailman.3888.1667389910.3008.blinux-list@redhat.com>
Date: Wed, 2 Nov 2022 12:34:41 +0000
Subject: Re: Console/other login managers other than GDM/lightdm that work
 with Orca?
To: blinux-list@redhat.com
Message-ID: <mailman.4137.1667392485.3011.blinux-list@redhat.com>
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

Never used CDM(or even heard of it before today), but since it runs in
the console and doesn't use X, it almost certainly doesn't work with
Orca and would require you to have a console screen reader that
launches prior to log-in.

Beyond that, I can't really help as the last time I used a DM was
before I started using Orca and my standard practice for the last
decade is to boot into the console and then launch X as needed(and if
I ever find a console web browser that gives me a experience
comparable to Firefox, I'd probably ditch the GUI altogether).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

