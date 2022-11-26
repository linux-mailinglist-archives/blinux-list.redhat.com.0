Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E658639829
	for <lists+blinux-list@lfdr.de>; Sat, 26 Nov 2022 20:32:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669491165;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EAHLouaUkBNCJanND4cDdzyqP43vaMXvZ1IcncgUu3E=;
	b=QhFwqnlZ5mWTQUsfTqkjLlrvoVW/J4kdN/YQUONvIK7wkAQIZDxOBzwGuxRygmKnsBXfHD
	R0S+GDQ0h2sv1hwLDprWFi0vGX3pNrjWZXJHkiZfC9hMS3nhjOUA3InuKi4qg39A2m67xX
	U0TTg6eBn0bjOWWqCjs2W5HiHj+dXbQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-646-r43JD55YMdq8Gr5PbAlX2g-1; Sat, 26 Nov 2022 14:32:41 -0500
X-MC-Unique: r43JD55YMdq8Gr5PbAlX2g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 359AA85A59D;
	Sat, 26 Nov 2022 19:32:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BE2C2FD48;
	Sat, 26 Nov 2022 19:32:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3B80E1946597;
	Sat, 26 Nov 2022 19:32:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Accessible front ends for Pleroma?
In-Reply-To: <mailman.2026.1669474706.6925.blinux-list@redhat.com>
Date: Sat, 26 Nov 2022 11:32:26 -0800
References: <mailman.1920.1669425887.6932.blinux-list@redhat.com>
 <mailman.1994.1669440416.6925.blinux-list@redhat.com>
 <mailman.1917.1669441933.6934.blinux-list@redhat.com>
 <mailman.2026.1669474706.6925.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.2033.1669491155.6925.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Nov 26, 2022, at 06:58, Jude wrote:
> 
> it's possible to locate and join existing servers but those need
> researching so if you're not a maga character and accidentally join a
> maga-oriented or maga-only server you'll be disappointed.  Different
> servers have different content and different moderation in place.

One of the peculiar things about the way the Fediverse is that the timelines are server-bound, rather than topic-bound.  So, if you want to read (and talk) about a given set of topics, it makes sense to get an account on a server where they are discussed.

However, I wasn't able to find a blind-related server that is currently accepting new accounts.  So, it might make sense for blind techies to find and colonize a substantial server that matches their tech interests (eg, mastodon.tech).

FWIW, I did a bit of Googling and found these links (YMMV):

Accessibility in the Fediverse (and Mastodon)
https://yatil.net/blog/accessibility-in-the-fediverse-and-mastodon

The Dragon's Cave (run by a blind person; not accepting new accounts)
https://dragonscave.space/about

Mastodon for writers/readers
https://blindjournalist.wordpress.com/2022/05/01/mastodon-for-writers-and-readers/

-r

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

