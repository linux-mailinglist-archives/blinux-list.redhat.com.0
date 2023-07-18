Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4847588CF
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jul 2023 00:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689721190;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gxYqYqfAe21wDhVoA+xcMFfFx63JNeH8igEMIMrjIdk=;
	b=SPUaLKvzrxoKQ0Cc4M3jidYX17xLi7k/8KfgKgi7dx6DCwZ3Oh8Ztv51f10DOGnA9vXvv0
	lDbi32c+/r2bkYSH8fLOACB5CQXXjrGDgEfaEemEwEIjtckYJ7sdITSPtzr8m97LE1f8zh
	BP41JLN4hLK5J8ZbGaSC+tLseAfmwxA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-543-jlm7YF-iPw2zzp6qPPApcg-1; Tue, 18 Jul 2023 18:59:46 -0400
X-MC-Unique: jlm7YF-iPw2zzp6qPPApcg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 288B6800CB1;
	Tue, 18 Jul 2023 22:59:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2B6642166B25;
	Tue, 18 Jul 2023 22:59:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6712319465A3;
	Tue, 18 Jul 2023 22:59:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 18 Jul 2023 19:59:01 -0300
MIME-Version: 1.0
Subject: Re: Console E-mail client for my need
To: blinux-list@redhat.com
References: <mailman.489.1689716021.687810.blinux-list@redhat.com>
 <mailman.489.1689716584.687812.blinux-list@redhat.com>
 <mailman.482.1689717546.687817.blinux-list@redhat.com>
In-Reply-To: <mailman.482.1689717546.687817.blinux-list@redhat.com>
Message-ID: <mailman.441.1689721179.687819.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: pt-BR
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks all for answering. As for Alpine, earlier today I stumbled upon a 
dead URL which was suposed to be its official web page, but now I went 
to Gentoo package database and there is a reference to an active page at 
alpineapp.email, so It's still alive. Seems a good option indeed, as it 
has a wizard to help set up the program. The only potential disadvantage 
is it appears to have a single guy maintaining it, but since e-mail 
related protocols don't change much over time, then there won't probably 
be a need to upgrade my e-mail client as well.

AERC seems a good client, but the developer claims it is still 
experimental or at least work in progress. NMH seems stable, but 
strangely it wasn't yet packaged for Gentoo...

Lets see. thanks all again,
Cleverson

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

