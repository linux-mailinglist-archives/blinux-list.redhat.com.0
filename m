Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 874FB68168D
	for <lists+blinux-list@lfdr.de>; Mon, 30 Jan 2023 17:38:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675096738;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8AaCk2C+ETYi3lGdRWRyr80aajGinObIwNnssJGXSvw=;
	b=K9o2tfLcl1+bt3M/S8Jf/fFfBQl7VfuJRPzTH6HRSNskrppjNhW8ahai0r9veUKBmMtaPT
	8J3UTETLsgxui6KL7j6baIJH+oQbyZYagZThUe2XFmum9MLiU2ivWJ3FR5uAMhO8z9ca4A
	5FtaRYVMO9sqtUUNaZkZOaon9TE4f3M=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-192-vLXaXA2mPMe2mtHT7tgcaQ-1; Mon, 30 Jan 2023 11:38:55 -0500
X-MC-Unique: vLXaXA2mPMe2mtHT7tgcaQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F723101A52E;
	Mon, 30 Jan 2023 16:38:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8C343140EBF5;
	Mon, 30 Jan 2023 16:38:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F3DB119465BA;
	Mon, 30 Jan 2023 16:38:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: twitter alternatives for blind users
In-Reply-To: <mailman.2382.1675094600.8169.blinux-list@redhat.com>
Date: Mon, 30 Jan 2023 08:38:33 -0800
References: <mailman.2375.1675057992.8177.blinux-list@redhat.com>
 <mailman.2159.1675059096.8172.blinux-list@redhat.com>
 <mailman.2357.1675059714.8175.blinux-list@redhat.com>
 <mailman.2190.1675067274.8172.blinux-list@redhat.com>
 <mailman.2382.1675094600.8169.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.2462.1675096724.8177.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Jan 30, 2023, at 08:02, Kyle wrote:
> 
> Not sure about Bonfire, but I know Pleroma runs its own Gitlab, so I find it absolutely awesome that I won't have to get an account on a Microsoft website to report such issues, unless Phoenix itself is hosted on Github or similar. ...

Both Elixir and Phoenix are hosted on GitHub.  If you have specific, detailed issues to report, these are the preferred places to do so:

https://github.com/elixir-lang/elixir/issues
https://github.com/phoenixframework/phoenix/issues

However, if you simply want to _discuss_ a11y issues you've discovered in Phoenix, you could start a topic on Elixir Forum. The Phoenix "chat/discussion" area (https://elixirforum.com/c/phoenix-forum/chat/30) might be a good place to do this.  FYI, Elixir Forum runs on Discourse (https://www.discourse.org).

- Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

