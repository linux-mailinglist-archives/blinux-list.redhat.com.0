Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 544ED593606
	for <lists+blinux-list@lfdr.de>; Mon, 15 Aug 2022 21:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660590546;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rfUg9V5plYgA9g2q/6mgHsbFF3DGB1wfkws0mtKqYik=;
	b=T7UlPMrEEnjt5iZTQTD12V5b0oPz9lo/wkcdSGHLxjaCkfm9EL0MF0Y0EGcPkrbxuKAO7h
	Unc/A9jOSpisovh4/UY1gH9sHZ0v+flqTi8V/OobOE5dEkhPwMyjrRO8f+r6Dt+qofcYLZ
	e1ZH1Of52K0d4x1s5eX95xVwxRuEfTQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-183-0Qh1VzM_PcqkK2eyaobJVA-1; Mon, 15 Aug 2022 15:09:04 -0400
X-MC-Unique: 0Qh1VzM_PcqkK2eyaobJVA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 60BFB85A584;
	Mon, 15 Aug 2022 19:09:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B455FC15BAD;
	Mon, 15 Aug 2022 19:09:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EE5581940352;
	Mon, 15 Aug 2022 19:09:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 15 Aug 2022 20:59:01 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>, 
 Matt Campbell <mattcampbell@pobox.com>,
 blind_linux_users <discuss@blvuug.org>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com>
 <mailman.285.1660322331.10507.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.285.1660322331.10507.blinux-list@redhat.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Message-ID: <mailman.717.1660590540.10502.blinux-list@redhat.com>
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
Cc: blind_linux_users <discuss@blvuug.org>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Somebody wrote:
>  Is he correct that speakup default installs to a hardware synthesizer?

It is correct that by itself, speakup (i.e. the piece inside the kernel)
can only driver hardware synthesizers. To get software synthesizers
working, one need to run them in userland and plug to speakup with
espeakup or speechd-up.

For information, he does very much welcome pointers and hints, so feel
free to send him anything you believe could help him, he'll be glad to
have a look.

Samuel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

