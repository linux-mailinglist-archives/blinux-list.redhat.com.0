Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8772665F140
	for <lists+blinux-list@lfdr.de>; Thu,  5 Jan 2023 17:34:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672936486;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qvBAHLI7Q9VoUP7YzhoADiwA/caUdIsMvkreAC/+i6Q=;
	b=Wlzt0mfLl6tZ39SFFrYAwWEFHePkLHkgtqmD2Up1WrOOfzVGUYYnXDQSxOmtBustqiyijD
	IYrknq6knVT+P6Hk+M5zUzUFpGMuZFBd9Dz6EcBhJIbztg+dZ7cIUeda9/BIpPk3WJ9KRu
	A9Ib89X26qUzkjqtWS29Ycaq31y+Ciw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-668-4ft2oi0oMfKfkLdKnp8fTw-1; Thu, 05 Jan 2023 11:34:44 -0500
X-MC-Unique: 4ft2oi0oMfKfkLdKnp8fTw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C17D4882822;
	Thu,  5 Jan 2023 16:34:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2048D40C115E;
	Thu,  5 Jan 2023 16:34:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 629B51947053;
	Thu,  5 Jan 2023 16:34:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Reducing redundancy in a collection of text files.
In-Reply-To: <mailman.3001.1672931870.2515669.blinux-list@redhat.com>
Date: Thu, 5 Jan 2023 08:34:30 -0800
References: <mailman.1402.1672189247.2515662.blinux-list@redhat.com>
 <mailman.3121.1672914251.2515682.blinux-list@redhat.com>
 <mailman.3001.1672931870.2515669.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.3080.1672936478.2515658.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Jan 5, 2023, at 07:17, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Original Poster here,

It would be convenient to have some sort of name to use in referring to you.  It doesn't have to be your Real Name (TM), but "Original Poster" is rather ambiguous...

On the topic in question, I'd suggest that you look into awk(1) as a useful Swiss Army knife for text munging.  You could, for example, use it to preprocess the files to clean up paragraph boundaries, etc.  If you want a slightly more powerful tool, a scripting language such as Ruby might serve.

Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

