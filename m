Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E09565DEF6
	for <lists+blinux-list@lfdr.de>; Wed,  4 Jan 2023 22:17:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672867052;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BPeXncPFekNgXrttJuHz5eCaTPiN5ooQwjFGlo/jBv0=;
	b=iuEdvxE+49xczcPUUwE6WY+j8FQlY2PANiDRVyDkbn8sOc1zjxvypLr40FgFs1WjIEaYLW
	rUh+6vV/u0U9Y67YeeZDeU0CReqCGK2eGjmDEZLHQbvxJLt6NT21ycWl/acyu7bvkPm87m
	+F35Sr/raX/5T0ZptJeDh+CMEfYCCnM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-139-RBierkW5MXKZAW418QwUYg-1; Wed, 04 Jan 2023 16:17:30 -0500
X-MC-Unique: RBierkW5MXKZAW418QwUYg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 485A0280BCA5;
	Wed,  4 Jan 2023 21:17:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 231EA40C2064;
	Wed,  4 Jan 2023 21:17:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id ACF071946597;
	Wed,  4 Jan 2023 21:17:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Java & Orca
In-Reply-To: <mailman.3059.1672865639.2515682.blinux-list@redhat.com>
Date: Wed, 4 Jan 2023 13:17:06 -0800
References: <mailman.2948.1672861418.2515658.blinux-list@redhat.com>
 <mailman.2827.1672864702.2515671.blinux-list@redhat.com>
 <mailman.3059.1672865639.2515682.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.2900.1672867046.2515669.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Jan 4, 2023, at 12:53,Jackie McBride wrote:
> 
> Thanks, Rich. What I need, though, is whether Orca can access the
> various screen elements in order for blind folks to be able to use a
> program written in Java. Sorry for not making that entirely clear. I
> knew what I meant. opcode: ReadMyMind

No problem, but I think there's still a bit of ambiguity to resolve.
Is the program interacting with the user via a window system such as
X11, a web interface, or what?  How are the screen elements displayed?

Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

