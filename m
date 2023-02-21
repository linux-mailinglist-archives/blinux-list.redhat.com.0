Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0809569E97F
	for <lists+blinux-list@lfdr.de>; Tue, 21 Feb 2023 22:28:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677014926;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hjYiAW3cD+sL/g3Bvnzr1BZBVdlIHVGw+RE5kJVMPIo=;
	b=S/fa2opSKcggBhTJPiV6m6estwISNw2fwE9SD4Id9XG79iFG5i7KVHONAu3DtDNvsqCNQ5
	vyocz7ry73cT0/ZaoXKm1Ak7lXoWBdyxP2e8yJKfQ11DcdtVGxUltb+5MHW4CKHrvwFw6F
	3c6BlfTd1rKQr8CPUgFx7a/fW6/w+G8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-73-I9C1i-DGPDmyqgCU-Oxieg-1; Tue, 21 Feb 2023 16:28:43 -0500
X-MC-Unique: I9C1i-DGPDmyqgCU-Oxieg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3A8FA848D92;
	Tue, 21 Feb 2023 21:28:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 14A672026D4B;
	Tue, 21 Feb 2023 21:28:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C44FC1946597;
	Tue, 21 Feb 2023 21:28:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: brave with fedora
Date: Tue, 21 Feb 2023 15:27:38 -0600
References: <mailman.73.1676547223.3517.blinux-list@redhat.com>
 <mailman.111.1676561327.3517.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.111.1676561327.3517.blinux-list@redhat.com>
Message-ID: <mailman.877.1677014920.686539.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Did you mean /etc in my profile, or at root?

> On Feb 16, 2023, at 09:28, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I think you need an environment variable set.
> 
> ACCESSIBILITY_ENABLED=1
> 
> You can put this in any file ending with a .sh extention, we can call it accessibility.sh, in /etc/profile.d. At this point, Brave should work without issues. I have it running on Fedora 37. Hope this helps.
> 
> ~Kyle
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

