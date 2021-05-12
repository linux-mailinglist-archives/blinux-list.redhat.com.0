Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6D69837BF19
	for <lists+blinux-list@lfdr.de>; Wed, 12 May 2021 16:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620828026;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vfXPmcl8U0IQ/FSxUa0thnJ/Gj3AtDhwPyPoCwCMGrc=;
	b=hGE+mYSJyImRd5eryEb12euuUdl2egNPnYGgHXYBE1tUwThdLXf1JKEHrQSxlvv8pXp9eM
	8RlJoo/q190r5HxB0IfYOq8v/0cfn3O86fA5Pbt7SoE3QfvhobIP1hCe6+PXzpTig9UX0m
	PAwL6hLdO4I3LXK0lhriFLFAV9beks4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-460-kJ8sDXrfPUe7QEkwFxJhXA-1; Wed, 12 May 2021 10:00:24 -0400
X-MC-Unique: kJ8sDXrfPUe7QEkwFxJhXA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 51EAF1020C38;
	Wed, 12 May 2021 14:00:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1EF2760C5E;
	Wed, 12 May 2021 14:00:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 26AEF1800BB0;
	Wed, 12 May 2021 14:00:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14CDxuHv002142 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 May 2021 09:59:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CA4D210E60FE; Wed, 12 May 2021 13:59:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C54921054FC2
	for <blinux-list@redhat.com>; Wed, 12 May 2021 13:59:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3DEAA10504AD
	for <blinux-list@redhat.com>; Wed, 12 May 2021 13:59:54 +0000 (UTC)
Received: from gateway2.unifiedlayer.com (gateway2.unifiedlayer.com
	[69.89.23.92]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-582-RDlfcyedMzOGu-f5J_7KJg-1; Wed, 12 May 2021 09:59:51 -0400
X-MC-Unique: RDlfcyedMzOGu-f5J_7KJg-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway2.unifiedlayer.com (Postfix) with ESMTP id 7387620098548
	for <blinux-list@redhat.com>; Wed, 12 May 2021 08:10:27 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id god9lnS25Q7HCgod9lzFqp; Wed, 12 May 2021 08:10:27 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:19418 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1lgod9-000eUa-46
	for blinux-list@redhat.com; Wed, 12 May 2021 08:10:27 -0500
Date: Wed, 12 May 2021 08:10:25 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Batch convert ebooks qustion
Message-ID: <20210512081025.71e38103@bigbox.attlocal.net>
In-Reply-To: <3f911846-3ba1-131e-14fe-c41694c55c9a@gmail.com>
References: <3f911846-3ba1-131e-14fe-c41694c55c9a@gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1lgod9-000eUa-46
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:19418
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.

> Can I use ebook-convert, I can't do ebook-convert *.epub *.txt

If they're all in the same directory you can use

$ for f in *.epub ; do ebook-convert "$f" "${f%.epub}.txt" ; done

which will iterate over all the *.epub files and convert each
individually, changing the output-name to the .txt extension.


-Tim

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

