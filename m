Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D406346DC60
	for <lists+blinux-list@lfdr.de>; Wed,  8 Dec 2021 20:35:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638992143;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RZV/GjPR7JUbq5mMhPRcdUuxY1wWa7yb8JYOAlXGzok=;
	b=DWbb9GQGqoWp7hD17q2WsrO5m12hK0vhl6RUwmAcjYVC0oeWaSJpgyws00Sv2fUPP6Po//
	KbbgzBDgL2piPqOf+NHVnZ8GF/zwV5hPpxfVMiMRqvN7WOXSMLwQzD4PrJaQlEOEYOedJP
	hFOxZWMgds4mhK+hpzVpNG3uWB1u7b8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-200-jxJphhhbOr6cLEQw3srXQw-1; Wed, 08 Dec 2021 14:35:40 -0500
X-MC-Unique: jxJphhhbOr6cLEQw3srXQw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB64F1006AA0;
	Wed,  8 Dec 2021 19:35:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B13E41002390;
	Wed,  8 Dec 2021 19:35:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EFCD41809CB8;
	Wed,  8 Dec 2021 19:35:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B8JZWa1021886 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 8 Dec 2021 14:35:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 34E9C492CA4; Wed,  8 Dec 2021 19:35:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F91D492CA3
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 19:35:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0052D811E76
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 19:35:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-472-uhVVD4lFO5GoAjISQLsueg-1; Wed, 08 Dec 2021 14:35:30 -0500
X-MC-Unique: uhVVD4lFO5GoAjISQLsueg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J8S7N6P0dz40kH
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 14:35:28 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J8S7N5XR2zcbc; Wed,  8 Dec 2021 14:35:28 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J8S7N5CVhzcbP
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 14:35:28 -0500 (EST)
Date: Wed, 8 Dec 2021 14:35:28 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Switching to a Different email Client
In-Reply-To: <a1c65317-0273-7198-6473-2db4aa1d4845@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2112081428520.11457@panix1.panix.com>
References: <E1mv1D9-0001mn-Hw@wb5agz.lan>
	<eb106688-8ce3-d826-70f5-775df84385a6@gmail.com>
	<a1c65317-0273-7198-6473-2db4aa1d4845@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The hassle with fleacollar.sh will be with creating a proper gpg2 key and
writing it to the correct filename that the mutt script fleacollar.sh
makes expects.  Hasn't happened so far.
One of the reasons it hasn't happened and likely cannot happen is that
gpg2 when creating a key expects events to take time to generate random
entropy and fleacollar.sh simply goes along to the next command before
gpg2 has finished.  Probably tearing the gpg2 stuff out of fleacollar.sh
would help if an additional script were packaged with it to optionally
create a gpg2 key and write it where the fleacollar.sh script creates
expects in the user .mutt directory tree.
 On Wed, 8 Dec 2021, Linux for blind general discussion wrote:

> I second Alpine. If you can get Fleacollar to work, that could help with Mutt
> and take the hassle out of setting it up as much, but...Alpine, I've not found
> a similar utility
>
> Linux for blind general discussion wrote:
> > Maybe Alpine could work. It is rather difficult to read HTML mail without a
> > desktop, but I think Alpine can do at least some of this.
> >
> > ~Kyle
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

