Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 692CC6D7CDE
	for <lists+blinux-list@lfdr.de>; Wed,  5 Apr 2023 14:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680698628;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=trQXBYnAneIzhbAJapFvPTJNiYIiVpCpikpHu5m5/jo=;
	b=CUmsqi9E8I//7E6KYWuRGksKdTQ9hg23Aj4+ksOLjoONa32SHjwM2eOKnEknUo0ZaikFnQ
	aFDYHmtHSGhN19OUlAhsp1ero/2oIq9OJ+IZ7HeQRWyf+YunVeMsJic2D+CGvjhmXvHbZ+
	47RIJp2ipgz9DGG/snMdRS5pdSlXg44=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-155-Pf1htP4vOVWv4nvlD-sbnw-1; Wed, 05 Apr 2023 08:43:44 -0400
X-MC-Unique: Pf1htP4vOVWv4nvlD-sbnw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 819DD88B7A1;
	Wed,  5 Apr 2023 12:43:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7B8B2492C14;
	Wed,  5 Apr 2023 12:43:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C472A19465A4;
	Wed,  5 Apr 2023 12:43:35 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.500.231\))
Subject: Re: Debian beginner questions/looking for a good rolling distro
Date: Wed, 5 Apr 2023 05:55:34 -0500
References: <mailman.1235.1680685726.558769.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.1235.1680685726.558769.blinux-list@redhat.com>
Message-ID: <mailman.1912.1680698615.558774.blinux-list@redhat.com>
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

Did not know Solus is gone.

> On Apr 5, 2023, at 04:08, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> So, given Solus's apparent sudden demise...which pains me since I like the distro. I'm on the hunt for a decent, rolling distro
> 
> 
> I've got Debian tessting atop my list.
> 
> 
> So here's my questions
> 
> 
> 1. Is Debian testing as close to a rolling release as I'll get?
> 
> 
> 2. How easy is it to migrate from Solus to Debian, I want to reproduce my setup and workflow on Debian, i.e. i3, text editor, same terminal, et al
> 
> 
> 3. Besides Arch, is there another good distro I can use? My laptop doesn't get constant use however so I'm looking for something that is...
> 
> 
> a. Stable
> 
> 
> b. Can easily build orca-master and use it or has the latest Orca in its repos
> 
> 
> c. Can be installed offline (because no ethernet port)
> 
> 
> So any ideas on the above questions?
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

