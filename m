Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6A9680760
	for <lists+blinux-list@lfdr.de>; Mon, 30 Jan 2023 09:28:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675067285;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=N7q1fuYhCWGbwVWjgYMU+55TzWENzsWMywtP548ZAW0=;
	b=iksI/lPbdrmkZxrUWf3xnUxTGs4oKm9wIzBgaOT0i7v8qUFuXsbtbOzpzxlBnlhXNqr7ZY
	nEQCqHj1tCm0S63PGb1qrVJUWGXFCYazh/6FGNT9j2MMgyTUagZW97UnsgIFOC9n4C4Sai
	vrhckVFhr2uVGJ/27ulqmKJzs/lwGTY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-632-sm93pvT7NfCqWNdcM3uWRQ-1; Mon, 30 Jan 2023 03:28:02 -0500
X-MC-Unique: sm93pvT7NfCqWNdcM3uWRQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 977C7830D45;
	Mon, 30 Jan 2023 08:28:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 76DCF140EBF5;
	Mon, 30 Jan 2023 08:27:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CB1411946595;
	Mon, 30 Jan 2023 08:27:54 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: twitter alternatives for blind users
In-Reply-To: <mailman.2357.1675059714.8175.blinux-list@redhat.com>
Date: Mon, 30 Jan 2023 00:27:41 -0800
References: <mailman.2375.1675057992.8177.blinux-list@redhat.com>
 <mailman.2159.1675059096.8172.blinux-list@redhat.com>
 <mailman.2357.1675059714.8175.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.2190.1675067274.8172.blinux-list@redhat.com>
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

Some Mastodon alternatives (e.g., Bonfire, Pleroma) are based on Elixir and Phoenix.  Chris McCord, the main author of Phoenix, has said that a11y will be a major focus of his current efforts.  So, if anyone is using one of these platforms and encounters a11y issues, be sure to report them!

- Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

