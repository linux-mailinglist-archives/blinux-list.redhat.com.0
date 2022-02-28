Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8184C6FD5
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 15:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646059554;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YNqSgn53Rc4pks2Eb5rGYkAKoDqM9Bo8GwXTRd17B6A=;
	b=UgAMmjRlKQqjXb/vR9EdpJjvgXHZWg5FwKTrwaXGWJpYPyLjuuXjfymAG2GyTZRds3MBcQ
	mOYGMeFjgfmfjglxASis/hBRUd/OllpHkVrKwUBaiavAo/OjRejLJsl4iW3IQF+m2hAutd
	IeXHCpMZWzgK5vZAFT/QJrHrwtIJ940=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-327-iCC5EgoYMpiIWQhzPD5Juw-1; Mon, 28 Feb 2022 09:45:49 -0500
X-MC-Unique: iCC5EgoYMpiIWQhzPD5Juw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 09616835DE0;
	Mon, 28 Feb 2022 14:45:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 65E0B7C0FE;
	Mon, 28 Feb 2022 14:45:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 72DF91809C98;
	Mon, 28 Feb 2022 14:45:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21SEjIRg013614 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Feb 2022 09:45:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 16D54401E37; Mon, 28 Feb 2022 14:45:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 13408401E31
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 14:45:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EEB17811E80
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 14:45:17 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-256-cVW5zrxOMJWQY7E4ztuESg-2; Mon, 28 Feb 2022 09:45:16 -0500
X-MC-Unique: cVW5zrxOMJWQY7E4ztuESg-2
Received: by mail-qk1-f179.google.com with SMTP id c7so10436639qka.7
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 06:45:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=YhbdlUF1uWZ7kLzRas0SEfx/20SQ1E0OSkpF96NNU5s=;
	b=NixXddVYT0lBgn6ZVCIj6jw5/qlz00mabOEFgnSEj0D5XWyaTnCo3cR5kPSecgAn5o
	meaFTQyhdl+cTXwZBDYezZ5jw3sdqYisygy+FijXFEGnyJP6ODcus9RMdMyiOwV8pvCO
	MBLXbPfw7W64BILAkn3WwN6zHlWnQiW9FKem2vbT9IxQFRjsNGypqgXI3AB4zMqtZcXz
	m5/v+VichVl2eRYe/jbZwHedOLGTxBCO3KeB6PfljDnjLOd6+VTx/uwr6q6DE6CTAbMr
	r/Ap2nL4TmcrS7HuqfsPqE9F48HVAnEVq1m9VJQFJZVYZmS3qWsvV2RQZAHr7Fb+8p6+
	szsg==
X-Gm-Message-State: AOAM530t00amjNDmRYbadSJCBFotoA5L0chWhbTsofpUOk72ojAfmXX0
	nRfCiixkgnLk3Hxg2+e4s0cjDOjw/tU=
X-Google-Smtp-Source: ABdhPJwvpyMAvyIDfC/q5lx1bzErFj8gf6BgQkRRK2lahR+D+xElEA/iM8LJA8uTETh4yVADhqmy3A==
X-Received: by 2002:a37:5881:0:b0:649:10c4:60c2 with SMTP id
	m123-20020a375881000000b0064910c460c2mr11228581qkb.615.1646059515774;
	Mon, 28 Feb 2022 06:45:15 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	z3-20020ac87f83000000b002deae661c08sm6961839qtj.33.2022.02.28.06.45.15
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 28 Feb 2022 06:45:15 -0800 (PST)
Date: Mon, 28 Feb 2022 09:45:13 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Use alexa on linux
Message-ID: <b58188d0-6477-4bd2-1f6-3e9115dafb5a@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Here is a 2020 article:

How to Add Alexa to a Raspberry Pi (Or Any Linux Device)

https://www.iotforall.com/how-add-alexa-raspberry-pi

On Sun, 27 Feb 2022, Linux for blind general discussion wrote:

> This, unfortunately, is an old article.
> Devin Prater
> r.d.t.prater@gmail.com
>
>
>
>
> On Sat, Feb 26, 2022 at 10:58 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> >
> > Amazon's Alexa Can Now Run on Your Windows, Mac, or Linux Machine
> >
> >
> > https://gadgets360.com/internet/news/amazons-alexa-can-now-run-on-your-windows-mac-or-linux-machine-1472377--
> > ent-
> > XR
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

