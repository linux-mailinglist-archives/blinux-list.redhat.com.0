Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9186209F8
	for <lists+blinux-list@lfdr.de>; Tue,  8 Nov 2022 08:18:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667891893;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3d+DVOUH8yQ0oq+hWUwIIrAbe1JJxYrjgl63jWuDGJ8=;
	b=AbYtAmSqxylr5ZxvLfHV3goh++fcdAS9W2lCi09XHHK5AvATcFKXdIFQw8xT4fp4UjWmjd
	unYTfg6M3VE/KXuk7WAvVnlTixvCglypbSaAqP4UykzAw1LJ7qdvZE0ff6a0sKiSwQpM0P
	fqt9k57501O8FaaKABpSs6vKWV3MJP0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-152-buzGeH3EPQaHauXllF2ANw-1; Tue, 08 Nov 2022 02:18:09 -0500
X-MC-Unique: buzGeH3EPQaHauXllF2ANw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3F4EE1C05134;
	Tue,  8 Nov 2022 07:18:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AF77E401D49;
	Tue,  8 Nov 2022 07:17:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DDB85194658F;
	Tue,  8 Nov 2022 07:17:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Date: Mon, 7 Nov 2022 23:17:50 -0800
Subject: FYI: accessibility prospects for LiveView 0.18
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.5155.1667891878.3009.blinux-list@redhat.com>
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

"And the big thing I'm focusing on in LiveView 18 is Accessibility ..."

Chris McCord, the prime mover behind the Phoenix web framework, says that a11y will be a major goal for the current version (0.18.x) of LiveView.  The intent is to make features such as focus handling Just Work, with little effort on the part of web developers.
 
# Some Background

A typical Phoenix app runs almost entirely on the server, exchanging very minimal data with the client (JavaScript) code.  Phoenix, which is written in Elixir, runs on the Erlang VM. This gives it a performant, failsoft foundation, built-in support for concurrency and distribution, etc.  LiveView takes advantage of this, providing highly interactive sessions with almost no client-side code.

# The Plan

Having tried to write accessible web code in the past, Chris knows that it isn't easy to do, let alone get right.  So, he wants to build ally support into the framework, so that developers are more likely to incorporate it.  As part of the basis for this, he plans to use predefined components from the Tailwind CSS framework.

Here are some useful links, for the curious:

- Elixir - https://en.wikipedia.org/wiki/Elixir_(programming_language)
- Erlang - https://en.wikipedia.org/wiki/Erlang_(programming_language)
- LiveView - https://hexdocs.pm/phoenix_live_view/Phoenix.LiveView.html
- Phoenix - https://en.wikipedia.org/wiki/Phoenix_(web_framework)
- Tailwind CSS - https://en.wikipedia.org/wiki/Tailwind_CSS

Chris discussed his goals and approach in a recent talk.  The part concerning a11y starts at 27:05, but be warned that the talk includes a lot of Elixir code and visual material:

ElixirConf 2022 - Chris McCord - Phoenix + LiveView Updates
https://www.youtube.com/watch?v=9-rqBLjr5Eo

However, I strongly suspect that Chris will be publishing blog posts on this topic as he proceeds.  I also expect a11y support to start showing up in various LiveView demo pages, etc.  So, interested parties should be able to follow along...

-r

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

