Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 976713D25A6
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 16:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626963870;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LpOwbVDWSufW9x+DhZlexfJ40otyCcl75m9P+0OlH0I=;
	b=E0+zgzlaPW89fnM2ZUPlOA8UQqac6hWqLvJmkfn465oA9X9FPzDFl1WWLXACFAvdkLTQrE
	scn3Pt6OTcynmdUMm72NvMWNpTBTG9d1u/iL7xM+TS4Emw0bcqBb+gNrP44ZoGGaAxWjF3
	RtM/JRmxoVWuVzzuwzC7Al8D2cq0oJM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-354-Vxz5wbrjOdKO17yVK1ZU0A-1; Thu, 22 Jul 2021 10:24:29 -0400
X-MC-Unique: Vxz5wbrjOdKO17yVK1ZU0A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7BCB081C85E;
	Thu, 22 Jul 2021 14:24:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 440B55D9C6;
	Thu, 22 Jul 2021 14:24:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6F1E5180BAB1;
	Thu, 22 Jul 2021 14:24:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MEOJWd012768 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 10:24:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4E8DD2095BA1; Thu, 22 Jul 2021 14:24:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 49A462094D3A
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 14:24:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1009185A794
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 14:24:15 +0000 (UTC)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-537-XgISpjk5MRCn26lUooTZ3w-1; Thu, 22 Jul 2021 10:24:12 -0400
X-MC-Unique: XgISpjk5MRCn26lUooTZ3w-1
Received: by mail-io1-f50.google.com with SMTP id d9so6537272ioo.2
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 07:24:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=qWNxHoMX2IKzssEKMCgynJ4V4/+rs8pNlW8qbkqIsss=;
	b=E9/Z3+rvH4hX3JG7JQwahIko4ocA5zpuRTs1FVYcL7GRr8n8k/Mj2M7mC8M/HRYH1l
	XAHo9ge4Kdtu4nAFwdzPUFwT38F8ZeWmt4iSCqZJyvUK3ubaVTK3uHQgdn0LiNQYfVjk
	hEKn2KY4awfMzG85Pr7nNC4JyKPLizb9dTlv/uiN1SuEiA4sXzxn7RrhpXwgaWUc85T7
	J8wF0bwryQBAj9xJhcpueGTIJ2J+QZBHXbDgXEYJw60ixgdDtHt04CY2Yw/iZ9ZTOo2I
	UjV9sIdf8PNgFDzrt2yscABXuMuL2LhUXC4Uz3OT0UaexU3Ps9BkBquT+jLyGle61Sdw
	MoeQ==
X-Gm-Message-State: AOAM530g4mubznHzqKZZCO3IvThF6kPtuiChX2nzgdP33zMo6GJhvjRn
	d/LwtpjwEfaUsrrtuowxYsHYTIb1PDQZltYpB+vxh8xP
X-Google-Smtp-Source: ABdhPJzAJiJ/1ZxNMuxyzP+n5to5ycJJpyTlFNOALM4ywF4My9CuVly9dWqFe2lfYU+pJ35E6nOE8u0M+uBn714bV+s=
X-Received: by 2002:a05:6602:2099:: with SMTP id
	a25mr12360ioa.143.1626963851366; 
	Thu, 22 Jul 2021 07:24:11 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.NEB.2.23.451.2107212158050.3910@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2107212158050.3910@panix1.panix.com>
Date: Thu, 22 Jul 2021 09:24:00 -0500
Message-ID: <CAGJxbF5A9iGSsFjyZJCWbSkfN=O2EQnLcAmvQ9wtuo+Np9nBaw@mail.gmail.com>
Subject: Re: archwiki could probably use an update
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yeah, I think all accessibility wikis, especially the Fedora one, could use
updates.
Devin Prater
r.d.t.prater@gmail.com
gemini://tilde.pink/~devinprater/



On Wed, Jul 21, 2021 at 9:02 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> espeak-ng has no mention and if espeak-ng is trying to replace espeak
> espeak-ng could use pacstrap install instructions and a note that it's
> recommended over espeak.
> I'm back burnering espeak-ng since I need archlinux talking when I run it
> since I want to transfer some org files onto my phone and need a google
> drive client on archlinux that works to do that.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

