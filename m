Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3267AC611
	for <lists+blinux-list@lfdr.de>; Sun, 24 Sep 2023 03:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695518289;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=W59yGR6dRAiyE1EMM7tUOiWaKjAY1Im2bEgFB7pOqX8=;
	b=ENWnR0z0RVls4aSJe6gHZ8ieALG0QPoxQq9iQJ/TVAdDcPpY6YOWygZ875AKVrjdZaT7do
	sQP1y4l4B1b8VLRqDacbSg9PPcoJ2AJqN7WXN3w1n3fk4xCy9a80N2IUghL0vm9ReXf1Cg
	8GOkHCZICeM6osuMO4QBIOL+4GWqHv4=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-338-ITBmDWdHOFGo5h1UJQdiSw-1; Sat, 23 Sep 2023 21:18:06 -0400
X-MC-Unique: ITBmDWdHOFGo5h1UJQdiSw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 87E613C025B5;
	Sun, 24 Sep 2023 01:18:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DC4F840C2064;
	Sun, 24 Sep 2023 01:17:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7F6A019466EC;
	Sun, 24 Sep 2023 01:17:59 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.46.1695515721.4021071.blinux-list@redhat.com>
References: <mailman.54.1695511852.4021078.blinux-list@redhat.com>
 <mailman.39.1695513933.4021070.blinux-list@redhat.com>
 <mailman.46.1695515721.4021071.blinux-list@redhat.com>
Date: Sat, 23 Sep 2023 21:17:50 -0400
Subject: Re: Can I Translate Audio Among Languages?
To: blinux-list@redhat.com
Message-ID: <mailman.53.1695518278.4021071.blinux-list@redhat.com>
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

I suspect there's nothing readily available in terms of  direct
automated audio-to-audio translation, even in the paid realm and that
the best that can currently be done is speech-to-text on the input
stream, machine translation on the outputted text, and then
text-to-speech on the translated text.

Though passable real-time translation of audio would be pretty darn cool.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

