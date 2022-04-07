Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4AB4F8200
	for <lists+blinux-list@lfdr.de>; Thu,  7 Apr 2022 16:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649342527;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=N/Tv5FbeFTNL0vi1rw9Mda0deGnkG+NzH8WN4bE4YX0=;
	b=YjXWc34/ifTV3IpbqZQJbslRUvb1Pnn9wGg55UYzhSiE8JFQkArknuuu9Z9XtJ2M11vlhi
	+T8lwerZs604TeLmC4U6kgKCJEZjo8lUL+McfSEVoDWlT6nJj0VvjdOGxhle4P78DzJ5BM
	oLHkrmlONxy9n/OIoh+vXwyJ66rJIN8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-189-INH2NZ_2OBGgcKRteUEzZQ-1; Thu, 07 Apr 2022 10:42:04 -0400
X-MC-Unique: INH2NZ_2OBGgcKRteUEzZQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 820D1833974;
	Thu,  7 Apr 2022 14:42:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 29E244229B0;
	Thu,  7 Apr 2022 14:41:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 987241940342;
	Thu,  7 Apr 2022 14:41:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: different desktops
Date: Thu, 7 Apr 2022 09:41:50 -0500
References: <mailman.6893.1649230241.111206.blinux-list@redhat.com>
 <mailman.6722.1649237413.111209.blinux-list@redhat.com>
 <mailman.6967.1649240845.111210.blinux-list@redhat.com>
 <mailman.6938.1649249456.111201.blinux-list@redhat.com>
 <ca820abb-dbb3-60c5-39c3-5e316b483ecf@free2.ml>
 <mailman.7030.1649299107.111208.blinux-list@redhat.com>
 <mailman.6987.1649330214.111207.blinux-list@redhat.com>
 <mailman.7068.1649332372.111209.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.7068.1649332372.111209.blinux-list@redhat.com>
Message-ID: <mailman.7274.1649342516.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I added the Cinnamon to my Fedora mate, then logged in.
I could not figure how to get to applications, or the shutdown, but got to terminal with control alt t.
Then typed halt to shutdown.
I do like the sounds.

> On Apr 7, 2022, at 6:52 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Was it workable to install cinnamon fedora out of the box with orca?
> 
> 
> Unfortunately I didn't try this. I just installed the cinnamon package and that pulled in everything I needed to get a session going. If I have time I'll take the spin for a spin and kick the tires.
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

