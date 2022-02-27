Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 855604C5FB5
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 00:07:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646003256;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ziz5VoWe9+GqjzihdKOXtBIMO/2rIQzg1t+wUBIbJic=;
	b=EIPMw/BNQScDmDLzCH82YMwwkrfE04yY+FIEvM7O3P9tzTUy8jEfwgZvT5Kw0NRSm7puFf
	VXxaguKfCKTbsfOEDZncfNN5O8/NX0U4bICi1xS6tsJWyutZE5ky6eAo3W3Gj/FZOCerHz
	QAnkVXH4kxxdTSSpAm7Ak0SWJuHATAU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-195-sZVrRyfyOE-cQbRvlipGDw-1; Sun, 27 Feb 2022 18:07:33 -0500
X-MC-Unique: sZVrRyfyOE-cQbRvlipGDw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DF4911006AA5;
	Sun, 27 Feb 2022 23:07:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3928F45CA2;
	Sun, 27 Feb 2022 23:07:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 746AA1809C98;
	Sun, 27 Feb 2022 23:07:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21RN7AuR017188 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 18:07:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id ECB66C07F51; Sun, 27 Feb 2022 23:07:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E79F4C07F48
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 23:07:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE53D80088A
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 23:07:09 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com
	[209.85.128.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-572-3N0F2oqOPcOStc2vh_g3mw-1; Sun, 27 Feb 2022 18:07:07 -0500
X-MC-Unique: 3N0F2oqOPcOStc2vh_g3mw-1
Received: by mail-yw1-f173.google.com with SMTP id
	00721157ae682-2d6923bca1aso88989167b3.9
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 15:07:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=LXWGyiPGMYzQmIcwwd82WrAu/9z/+y/dTKl19lJVEXU=;
	b=r2LAsTdyan3goEPAz+nj3IS4V8CDgNFXProiCMJaX+h4E01GdzXQDB/LqrUlHySC1d
	gYqaYBQcAxKeBvCqxNLcEpOzkho4G5qyoF0lMwwU9WZnP8EeFP6YuHelj/wCAGEbw8oq
	8gJ+OTksiLze0f7c8l0TX9W8Iaooy5M+u9JnutIpqSN96csSfBdO7k3L9JEmQPwOdxBr
	v5xXVVHHW/GZp87MlOiSZ8Vc07RjEyo5BhGOYHSA+OToncE5nflV7HnrKynMlmteeraD
	XWHs1cbLkJXlYdEKgJQ5eZAMb8rOjEzpo4UlNu2i10LaOsqbMD6CynCP9I3mSYGfOoa0
	xI+Q==
X-Gm-Message-State: AOAM532UM5B0c8hmfCxYir74i3uBGdDd4pcNC3B4zO3vwWowzUxGZgV8
	uSaBG46fgVB/oY8Vv17ou+VjuAd8xUYRQ1siUC4UWL0sgRc=
X-Google-Smtp-Source: ABdhPJwgNhH1EAiAF6Pj2hqpgnUNWTgtzn2CbXwgxjr+uKCydtBPA+C43fg8jmVDUP+igjwOs3PjHSxGgWosY37GS8s=
X-Received: by 2002:a81:4e49:0:b0:2d6:ef98:f882 with SMTP id
	c70-20020a814e49000000b002d6ef98f882mr17335089ywb.26.1646003226477;
	Sun, 27 Feb 2022 15:07:06 -0800 (PST)
MIME-Version: 1.0
References: <34339ff7-af34-775-fd30-fd75f6878d4@gmail.com>
In-Reply-To: <34339ff7-af34-775-fd30-fd75f6878d4@gmail.com>
Date: Sun, 27 Feb 2022 17:06:54 -0600
Message-ID: <CAGJxbF6DEJG5_SEtveQhe8Ruv_oCZZ2-dXkyJ0UM19ydPa7aXg@mail.gmail.com>
Subject: Re: Use alexa on linux
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This, unfortunately, is an old article.
Devin Prater
r.d.t.prater@gmail.com




On Sat, Feb 26, 2022 at 10:58 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

>
> Amazon's Alexa Can Now Run on Your Windows, Mac, or Linux Machine
>
>
> https://gadgets360.com/internet/news/amazons-alexa-can-now-run-on-your-windows-mac-or-linux-machine-1472377--
> ent-
> XR
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

