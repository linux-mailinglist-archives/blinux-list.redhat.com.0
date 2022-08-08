Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C975E58CB2D
	for <lists+blinux-list@lfdr.de>; Mon,  8 Aug 2022 17:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1659971934;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mCzK9exPKief4t1N6a+hRlB4swxnSOkleSVYG4IfgBE=;
	b=NtBvY4M4XR8K4y7V0pPJcyJNDj40L4sGg33UjgCPBD08rtO2kY7PK0NMyRA80GMrY9WEtX
	MQWwPEk3lP7+OMrp/vxjVAkP3gX/gJM5BXJLqJqhVFuFKL8avRLbHm1Qjg53G9BgStHWsr
	GO/zhHw0kzTCw3Mvykdq9oneg4UqDPI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-21-nbgK-lnVNvuuvHWgRuTEwQ-1; Mon, 08 Aug 2022 11:18:52 -0400
X-MC-Unique: nbgK-lnVNvuuvHWgRuTEwQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BAAD9801585;
	Mon,  8 Aug 2022 15:18:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 829E640CF8F2;
	Mon,  8 Aug 2022 15:18:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9B3861946A5A;
	Mon,  8 Aug 2022 15:18:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 8 Aug 2022 11:18:41 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console based email and Gmail, any luck?
In-Reply-To: <mailman.1449.1659962856.3159725.blinux-list@redhat.com>
References: <mailman.40282.1659945837.111210.blinux-list@redhat.com>
 <mailman.1449.1659962856.3159725.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.40705.1659971926.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Jude DaShiell here.  This thread has been on mutt-users list too.  Likely
the best advice that came out of that was to have gmail forward all
inbound email to an account on another provider then handle that mail on
that other provider.  When I had an app-specific password in use, I got
sms messages on my phone every time I tried to use it.  Something else to
consider is that app-specific passwords have already been bypassed by
d.p.r.k. state malefactors and they're reading all the email traffic of
selected targets on gmail.  The best option ultimately will be to no
longer use gmail and disable those gmail accounts so you don't get charged
when your inbox exceeds google's limits.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

