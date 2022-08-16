Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1092E5960F3
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 19:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660670462;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=a2+F1tNNUb9rQjM6o753NWyB0UDR5J3IB2UfV9A35yI=;
	b=JbxX2FqDP4fYP+1A+6yUePeKev1EPoOly3Ewrpmp4/sNI0Yx0Xok0AW7R5snv+XmxpqmYs
	EK+DC7ZYFYvkqs/V+e06vif/388dwrbPG7LNaMc9dnJcKe0GLMLXFT1ORVDp+nZZB4awkp
	fKtF+1hvDsJ/r5xYqp2vPMhtBZ9dcEE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-247-3Foea6uKPZ2yuGB9mgKfsw-1; Tue, 16 Aug 2022 13:20:58 -0400
X-MC-Unique: 3Foea6uKPZ2yuGB9mgKfsw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA3FD803301;
	Tue, 16 Aug 2022 17:20:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D5F6B2026D4C;
	Tue, 16 Aug 2022 17:20:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 41E40193F6E8;
	Tue, 16 Aug 2022 17:20:54 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
X-Spam-Flag: NO
X-Spam-Score: -1.01
X-Spam-Level: 
X-Spam-Status: No, score=-1.01 tagged_above=-999 required=6.2
 tests=[ALL_TRUSTED=-1, T_SCC_BODY_TEXT_LINE=-0.01] autolearn=disabled
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: Impossible to know sender info
Date: Tue, 16 Aug 2022 19:20:48 +0200
References: <mailman.708.1660592109.10505.blinux-list@redhat.com>
 <mailman.703.1660592414.10507.blinux-list@redhat.com>
 <mailman.770.1660603181.10501.blinux-list@redhat.com>
 <mailman.731.1660603954.10502.blinux-list@redhat.com>
 <mailman.750.1660608876.10499.blinux-list@redhat.com>
 <mailman.792.1660609999.10506.blinux-list@redhat.com>
 <mailman.848.1660651179.10499.blinux-list@redhat.com>
 <mailman.1113.1660659487.10506.blinux-list@redhat.com>
 <mailman.1161.1660661117.10498.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.1161.1660661117.10498.blinux-list@redhat.com>
Message-ID: <mailman.1243.1660670454.10500.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi!
I am actually not disturbed about this issue either.
I mostly just read what interests me and skip the rest.
/Anders Holmberg.

> 16 aug. 2022 kl. 16:45 skrev Linux for blind general discussion <blinux-list@redhat.com>:
> 
> For what its worth, Kyle's signature is still read  "tilde Kyle" on my end...
> 
> Also, I can't say I've ever had much trouble following conversations
> since the list was anonymized... Then again, maybe its because I often
> don't pay attention to screen names even on the mailing lists I'm on
> that aren't anonymized and because I'm used to meatspace conversations
> where I have no idea who most of the people I'm talking to are(e.g.
> class discussions in college where I don't know any of my classmates
> names or one of my housemates having friends/neighbors over whose
> names I can't remember if they were ever introduced to me, or striking
> up a conversation with strangers at a social function).
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

