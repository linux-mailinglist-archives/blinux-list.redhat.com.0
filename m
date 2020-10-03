Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 91521282557
	for <lists+blinux-list@lfdr.de>; Sat,  3 Oct 2020 18:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601742438;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=K1eVunsKzFM9YDJSDMD5qxPtKYhddvu3NSCEEG8xaLg=;
	b=OxfI3xqgxkqnTxIow5sfk/Z1JZRIoY1kp8izKL9eG/g2xAXqZvxwW3XNWA63eltXiBTBsz
	v3lUQtucHTAKWdgLsOahvF6vdWXvJfCj3dJaJj4JsvDjwPWPBNxhEUlFJlc+3wHZvHFXsY
	HcSl4QJDsqgUpDSeh4zskIDFCSrNeb8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-317-Luf_cQamN7mNef8QqW7KJQ-1; Sat, 03 Oct 2020 12:27:16 -0400
X-MC-Unique: Luf_cQamN7mNef8QqW7KJQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A6256802B7F;
	Sat,  3 Oct 2020 16:27:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E5F1A5578C;
	Sat,  3 Oct 2020 16:27:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BA53944A46;
	Sat,  3 Oct 2020 16:27:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 093GR2uP009735 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 3 Oct 2020 12:27:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BD19E1003330; Sat,  3 Oct 2020 16:27:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B940A100335C
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 16:27:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6A10858290
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 16:27:00 +0000 (UTC)
Received: from hurricane.the-brannons.com (hurricane.the-brannons.com
	[71.19.155.94]) by relay.mimecast.com with ESMTP id
	us-mta-244-TzhCw-u6OJaJ3dVMlwKk_w-1; Sat, 03 Oct 2020 12:26:58 -0400
X-MC-Unique: TzhCw-u6OJaJ3dVMlwKk_w-1
Received: from localhost (unknown [63.224.249.220])
	by hurricane.the-brannons.com (Postfix) with ESMTPSA id A152421DE04
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 09:26:57 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<87tuvf2km3.fsf@cmbmachine.messageid.invalid>
	<20201003130430.GA2173@rednote.net>
	<alpine.DEB.2.23.453.2010030632540.2247242@chime>
	<20201003100234.4f71a96d@bigbox.attlocal.net>
Date: Sat, 03 Oct 2020 09:26:57 -0700
In-Reply-To: <20201003100234.4f71a96d@bigbox.attlocal.net> (Linux for blind
	general discussion's message of "Sat, 3 Oct 2020 10:02:34 -0500")
Message-ID: <87y2knjmwe.fsf@cmbmachine.messageid.invalid>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Linux for blind general discussion <blinux-list@redhat.com> writes:

> Tim here.  If you need a larger cut-and-paste buffer, I strongly
> suggest tinkering with a terminal multiplexer like either tmux or GNU
> screen.  I use tmux primarily for the multiplexing, split windows,
> the ability to detach & reattach, and the silence/activity monitoring.
> But as an added benefit, I can set my scroll-back buffer-size to
> thousands of lines letting me copy/paste from it, even if my actual
> terminal is only 80 by 25.

When I've tried tmux, I've found oddities that made it slightly less
pleasant to use with a console screen reader.  I know in my case the
split windows and status bars etc are not wanted.  I wonder if anyone
has tried to work out screen-reader-friendly configurations.  I haven't;
GNU Screen has been good enough for me, and I've used it for many years.

-- Chris

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

