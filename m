Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 953783CC7FC
	for <lists+blinux-list@lfdr.de>; Sun, 18 Jul 2021 08:43:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626590591;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oCuIeSH+FXUi/aPfsadraXAQFrWVUycoqZN+BpfPW2g=;
	b=Z+4UC8UwJ4AUl9FNbtqrlz0km5RchTEvacrdjWA3eIzAPHLiXLkgeziwglpmC4jsBEFe8w
	GUVUNZAzWHETuoxn3AekizakN7MIRnfpVXl3ROxGSyGs9YFxpRFjqjCLLSo4CGECqlsGWH
	nUO5MvH7IpASIvkh7fwlVdN4/xwRYp0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-398-Ed6WyPNcOaKte7DUdE9aXw-1; Sun, 18 Jul 2021 02:43:09 -0400
X-MC-Unique: Ed6WyPNcOaKte7DUdE9aXw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4FB7C801107;
	Sun, 18 Jul 2021 06:43:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B3D5019C46;
	Sun, 18 Jul 2021 06:43:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A8B84EA29;
	Sun, 18 Jul 2021 06:42:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16I6gmbS011167 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Jul 2021 02:42:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 932E32167819; Sun, 18 Jul 2021 06:42:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C7382167818
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 06:42:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B1BE1064E69
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 06:42:46 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-28-QMUWwJGsMVefLJQKmHNnKQ-1; Sun, 18 Jul 2021 02:42:42 -0400
X-MC-Unique: QMUWwJGsMVefLJQKmHNnKQ-1
Received: by mail-qt1-f171.google.com with SMTP id c9so10590340qte.6
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 23:42:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=Nb4UmjnQLMnK9M8yCC5AD/9dErn0mmsHmYQ7ukUVDjo=;
	b=jaZ/sA86sKMy6LYcWVDyiFjJ2Rvkx2/lbYhbzrAdPo35hiCVNUoLPzybj4Gjk0wbrl
	VGeNYFa1WY6gdLKszNqzjiRNawN5JVEXUNw2iTCbjtpM91Sz1nZg3xhMRRu9xmgVb6t4
	q1jwiKL+8mZzP6/ShcwdFxlftpLC+Szs7R3ks9rY8NWmfKSChGz4tpGs7tlxWZJw2I0e
	a1SDQlLVPHNzkYkvk9C2Z5XxguHGZRr+HdK9D+T96LHvVPU7nGwxsYYF0xET5TWaMJG7
	0rWJ2hvle0hkA1kOmnpQES9UcEd4rbXpvo+Zp+sA/MK6Z6yqn/kITJjPrOjY81xlS1MA
	8clg==
X-Gm-Message-State: AOAM533oV0kkui2CdUbawKh7/Pp0Wpr7DLZsk1hpd9rLxvqeCRaJQ6hc
	sGA4RWkVGxUoX1x+O/6F97yVw1H0LixJOZ1XC+XgqKXw
X-Google-Smtp-Source: ABdhPJzfCKqO7BQJZROjcQucR/gHYdpJSLm8vy4WEjelP9SH0rqAgm+LuK4W5I/jQtyRejvyy9uPvi2VmH2T2mTKw2s=
X-Received: by 2002:a05:622a:138d:: with SMTP id
	o13mr16858913qtk.245.1626590561278; 
	Sat, 17 Jul 2021 23:42:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_4ddS4g1jpYPKc_35ziy700JXbS+W2P95XYToAyULNeAAmpg@mail.gmail.com>
	<0671f3ab-3695-f330-5261-3f45531a4a9a@slint.fr>
	<CAD_4ddR+NxQ5Tjd4c0Kpiwk=2m2bRfBO+Mio2KDswbKmxv_aVQ@mail.gmail.com>
	<c5b8b31c-5b2d-e90e-9903-f054b9127a50@slint.fr>
	<CAD_4ddQJnm6Bfj_FJWdYF8-8pZCobkevOwbAPZ-X6s1jPMeBfg@mail.gmail.com>
	<119b96d1-0167-ee36-cdfb-eae9532804b8@gmail.com>
In-Reply-To: <119b96d1-0167-ee36-cdfb-eae9532804b8@gmail.com>
Date: Sun, 18 Jul 2021 08:42:29 +0000
Message-ID: <CAD_4ddQMPQAiNi938CZM5Pex=FaHgJBRvfgfcGnoggL4NibQ7g@mail.gmail.com>
Subject: Re: recommended OCR solutions on Arch Linux
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello there,

Thanks for the suggestion.
Last night I installed both pidgin and the purple-plugin-pack, but when I
tried to add an IRC account with it, it asked me for a username, password
and local alias.
When I clicked on the link Didier gave the list, a page opened up saying
that there was nothing there.
So how am I supposed to get a username and pass for any IRC server? Is it
the same for every server?
These might be dum questions, but IRC is something I've heard about, but
never dove into.
Thanks for any pointers/answers/articles/whatever.
Best regards.
Francisco.

On Sat, Jul 17, 2021 at 7:40 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Pidgin is very much usable with Orca, although you will also want to
> install the package called purple-plugin-pack. It gives you a few extras
> that you can enable to make your IRC experience even better. It also
> includes a hotkey plugin that will toggle your buddy list and bring up
> the accounts and plugins windows from any workspace.
>
> ~Kyle
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

