Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 142971CFAD1
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 18:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589301298;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gwYRjPTBYykrqV/NZ6d8iVyV5a2ku4D6jII+glzs6O4=;
	b=GEqBIQJx9dTu8mR5i6TyD+CA6EKuLHhJJ/PHvHNsc+VgH3CxVGx+nhwDe+wXF1RFIga4xt
	6vbVIHHXiXuQS2rW7bbHI+F24oEOdRwsAwPevHolHmwBMDHR9B9000VT3df7bfqiBDe0yF
	QR1e+i++tGmg/YUPnM3nFapz539hcKE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-493-CRSKyNeEP3a5GsYCSFuIZQ-1; Tue, 12 May 2020 12:34:56 -0400
X-MC-Unique: CRSKyNeEP3a5GsYCSFuIZQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2843C872FEC;
	Tue, 12 May 2020 16:34:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 66C836084C;
	Tue, 12 May 2020 16:34:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9526E4CAA0;
	Tue, 12 May 2020 16:34:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CGYkLR029427 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 12:34:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1E3DD2166BA2; Tue, 12 May 2020 16:34:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A80E2166BA0
	for <blinux-list@redhat.com>; Tue, 12 May 2020 16:34:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 072B2800294
	for <blinux-list@redhat.com>; Tue, 12 May 2020 16:34:44 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
	[209.85.219.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-8-qHClfuSANzGQNwgDuzZRQg-1; Tue, 12 May 2020 12:34:41 -0400
X-MC-Unique: qHClfuSANzGQNwgDuzZRQg-1
Received: by mail-qv1-f50.google.com with SMTP id 59so6712467qva.13
	for <blinux-list@redhat.com>; Tue, 12 May 2020 09:34:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=dNHg1oDsNSfFozS8v+3FjzPVC4alXdkMnx7eV9mjUEU=;
	b=F0nZ0ci25Nz+eDPlofvyfVV5TS60vwTZ+ZESvZxrttlKf5gWfTNtm7N+25Daqn7PzY
	psPvWGp/Y/n44qiq2ciyXHsf1dyfxP6vWn0QMreH0qrReWc96M/IMYPnVx86c5ruWcEW
	7FQP5ymoTHL+P8vXfoqNLGlRvwDrs3rcwK1oIlhMu3UL1tDq2/A/p7mr4b53DGnX1RBz
	Jrroirr03fR7oXSUAMJOhB/z6kPjJ7dXPjl/pfc71AWwuHzGwOfg2Un1HXYhkwzfTeTn
	/8L/BBnPhNucvMii/gyghhvURdWQMw+asQwFvWLUJ9vsNvNYxpqWQu79uBoMFL49lAWP
	jMsA==
X-Gm-Message-State: AGi0Pub0moyWqSJFkLX1fZr0do4Fyg7NjSYqGUNxQFYnrBQc8v0amLMm
	EBeNY0ZpP76KCfFF3eMCgeu0HDgzVnjGMjb4lR8TkazZ
X-Google-Smtp-Source: APiQypJiwPVXkygO8hRfWHpsKehxGMtnE0Z4eF3+8nzxd+T59Zog2KsTADCd+liDvvl0E0xmnLiFR9xLsiSHwq3LzgY=
X-Received: by 2002:ad4:45ac:: with SMTP id y12mr21431965qvu.227.1589301280755;
	Tue, 12 May 2020 09:34:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:932:0:0:0:0 with HTTP; Tue, 12 May 2020 09:34:40
	-0700 (PDT)
In-Reply-To: <alpine.NEB.2.21.2005121221430.13470@panix1.panix.com>
References: <E811AB13-AE96-4C85-93CB-894ED5675931@gmail.com>
	<alpine.NEB.2.21.2005121221430.13470@panix1.panix.com>
Date: Tue, 12 May 2020 16:34:40 +0000
Message-ID: <CAO2sX32dVWnC1F8EQuQef1_SPStF0=r1c-k+JSz4M+Jm7z82PQ@mail.gmail.com>
Subject: Re: Manjaro linux
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I think it depends on what you mean by "in its installer".

Orca is part of the Gnome Desktop, and as such, I would expect the
vast majority of distros that install Gnome by default to include Orca
among their default selection of installed packages whether or not
their installer is accessible or thaey make it easy to configure Orca
to launch automatically upon graphical log-in.

On the other hand, to my knowledge, there is no distro that uses Orca
to make a graphical installer accessible and that all distros that
have accessible installers utilize either a text-mode screen reader or
brltty to make a text-based installer accessible.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

