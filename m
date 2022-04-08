Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3503F4F8BD6
	for <lists+blinux-list@lfdr.de>; Fri,  8 Apr 2022 03:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649381536;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8KWy85vC4ea/26UgtgE09vjd38G8VLP7EJb6Ez/amPc=;
	b=HvrIg7FnO5EDmoBTdI0acKAmkNU/CYon/fjBuTQ9Zb3sKbYAdXMLWCt9Exp+XGMaNZDjCX
	dmdUa1lIj2E1B6iAtjEh33bOq+HjDSFuSDRVeufAb6Ye/mhTdtVSwPCqo6UhUfrO3pjyGE
	16XJpOj/zyPrP3kJFXo7E/WFKjLjINI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-157-IzVQbxpeM3G1lT-BGPWnJQ-1; Thu, 07 Apr 2022 21:32:15 -0400
X-MC-Unique: IzVQbxpeM3G1lT-BGPWnJQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A34FA811E7A;
	Fri,  8 Apr 2022 01:32:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4636D407E1C3;
	Fri,  8 Apr 2022 01:32:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AE05C1940345;
	Fri,  8 Apr 2022 01:32:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 7 Apr 2022 20:07:39 -0500
To: blinux-list@redhat.com
Subject: Re: Good Orca friendly terminal file manager?
In-Reply-To: <mailman.7330.1649379323.111201.blinux-list@redhat.com>
References: <mailman.7330.1649379323.111201.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.7202.1649381532.111209.blinux-list@redhat.com>
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I've tried several (mc, ranger, and "nnn"), and while mc &
ranger are powerful, I suspect the simplicity of "nnn"
(https://github.com/jarun/nnn) will work better with a terminal
screen-reader.  It has grown a lot of features since when I first
tried it, so it might be a bit heavier and less screen-reader
friendly now.

That said, I tend to just use the standard command-line to manage
my files most of the time, and that is exceptionally accessible.
(grins)

-Tim




On April  8, 2022, Linux for blind general discussion wrote:
> I thought I asked this before, but...
> 
> Is there a good, Orca friendly file manager laying around? I can
> live with Caja or pcmanfm, but I'm wondering if there's a good
> terminal based file manager that works with Orca?
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

