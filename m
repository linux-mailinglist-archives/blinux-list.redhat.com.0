Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AC82265BA08
	for <lists+blinux-list@lfdr.de>; Tue,  3 Jan 2023 05:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672720055;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6X2ib8YVQSMREJ+EIn1ZCqMw2Y1drUJo8+Kaaju8u5M=;
	b=JiqqR8QhVLjuyWXVw50bm2uvmGJPcEBC5aPSPrrAFE1/t+PGtPJgwpXoSBtiG1wJtgsdI+
	sP8mgAxBT3QwhwzB5WFHpM5G9VlPgUPYkPXIYjIZipnPv4yPV70HOhReA6HKB/x1RACVxz
	sLkCNVxKk7df4r8jZZqQL1+4Ic2fjUo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-92-pLCV5ZUXMNWH2jzGsMS-WQ-1; Mon, 02 Jan 2023 23:27:31 -0500
X-MC-Unique: pLCV5ZUXMNWH2jzGsMS-WQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7B2993802B83;
	Tue,  3 Jan 2023 04:27:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B70541121314;
	Tue,  3 Jan 2023 04:27:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5B78F194658F;
	Tue,  3 Jan 2023 04:27:29 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 3 Jan 2023 04:20:35 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick pandoc question?
References: <mailman.2289.1672718761.2515665.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.2289.1672718761.2515665.blinux-list@redhat.com>
Message-ID: <mailman.2319.1672720048.2515658.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 2023-01-02 22:56, Linux for blind general discussion wrote:
> I was surprised that I could not do the same for .rtf...suspecting that
> there is a different option command, -o is what I use for epub.

It should take it via the -f/--from option, such as

  $ pandoc --from rtf --to html -o mydocument.html mydocument.rtf

I don't know if it can be built modularly with/without support for
particular document formats, but my build here has RTF support.

-tim



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

