Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9B74C6273
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 06:24:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646025863;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=g77MT7bsQK5CyFAbmpRvvNAh/xx3OPqEkI3MDH+EeMg=;
	b=cjpYK7jJCTJuFxJJBTe7mTBf+GDEDJVnYqswbW6tZw/Z7wJYjHJ3DOqVkmNqUjrhR5X3/6
	YQsP0LykAnVcfC16NVtaulduA+brNz1nZVRbArQM4fN3GBQqAd6zRuxttQJjQ/sXcKV88T
	oHCVFxZF80vx4sOu8BuQibvHTexgqy8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-362-nkQmZbVUNgSpf3CHvUGBew-1; Mon, 28 Feb 2022 00:24:16 -0500
X-MC-Unique: nkQmZbVUNgSpf3CHvUGBew-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D5A8E800422;
	Mon, 28 Feb 2022 05:24:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 873834CEF8;
	Mon, 28 Feb 2022 05:24:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 87F601809C83;
	Mon, 28 Feb 2022 05:23:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21S5NoE1007834 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Feb 2022 00:23:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D2C482026D6A; Mon, 28 Feb 2022 05:23:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE2292026D69
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 05:23:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A52423C02B7A
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 05:23:47 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com
	[209.85.128.179]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-464-4Rq1aFxeMS6-F2BOIhqKlw-1; Mon, 28 Feb 2022 00:23:44 -0500
X-MC-Unique: 4Rq1aFxeMS6-F2BOIhqKlw-1
Received: by mail-yw1-f179.google.com with SMTP id
	00721157ae682-2db2add4516so62199997b3.1
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 21:23:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=/3SwTD5AB0lMORtm+mMIB7rROTVbSCWU45QjfIM1HBY=;
	b=MYBqdb1amezmRxjeWKx1JUVEapGVyrKGZBISt95FP27XKqOvpBsaaWMtSsTGD/PVQa
	0Xci8bZJ9snSUc6+PsPbel4GHUsjRqHqxp85rWtiWC0h7sw9qR0FFciT5YI3dgtW7dej
	J9m53PQYgv/DJPvu4F458nIWfZ0C2T9yljG9PlBhKU5lLh8O8LMDwlKHZo/P86wwG9hG
	8dE3PLMcsRMS46Q7W8R0tgpbMb6GZKTrGVwFK4fLSK3rwwgq4HWDbJY7edjFq1FYA/0l
	nt6YQvrjbiMguvsL4Y1N/WtRu4NF6hcn+YHAEbKrW2YUkWFi2pBLOYtFj+lak06KRJ8v
	tF/g==
X-Gm-Message-State: AOAM530Kg24odjwd5uYUc+efs1gexWLT5l7EcC8ScDEGifo4H30gdT7C
	kZkxWk//x2Rnd1nxABBkrYdjsx3DwcPiWd/ruRY++AF2B6c=
X-Google-Smtp-Source: ABdhPJya26bX3ZZys4ebmQ6ZFo1Qs4PIWrPwzSaBThb6ezHlXOKoY8VMT/SkfI3rKIAO5wK4nJG3hJDnhe9ug/AIrGo=
X-Received: by 2002:a81:5dd6:0:b0:2d6:3041:12e0 with SMTP id
	r205-20020a815dd6000000b002d6304112e0mr18573840ywb.331.1646025824103;
	Sun, 27 Feb 2022 21:23:44 -0800 (PST)
MIME-Version: 1.0
References: <34339ff7-af34-775-fd30-fd75f6878d4@gmail.com>
	<CAGJxbF6DEJG5_SEtveQhe8Ruv_oCZZ2-dXkyJ0UM19ydPa7aXg@mail.gmail.com>
	<576cde22-17c2-56d9-6ca4-0887d397fc18@free2.ml>
In-Reply-To: <576cde22-17c2-56d9-6ca4-0887d397fc18@free2.ml>
Date: Sun, 27 Feb 2022 23:23:32 -0600
Message-ID: <CAGJxbF6HvSESRtSOyDOYU4fj5ob+uU62af5PVRzyr7CAMd89Wg@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yep. I've been looking for a way to run Alexa on Linux, since her
book-reading voice is just amazing. Of course you have to have books in
Kindle but she sounds so good, it's worth it to me. Oh and everything else
of course.
Devin Prater
r.d.t.prater@gmail.com




On Sun, Feb 27, 2022 at 5:26 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> This, unfortunately, is an old article.
>
>
> By unfortunately, I take it you mean that the hopes and changes expected
> in the article have not been realized. Sad really, since Alexa really is
> a good app, and it would be nice to be able to run it on the desktop,
> since it does allow muting the mic fairly easily, and it already
> interfaces with my music services and my thermostat. I would like to get
> that going through Home Assistant or similar, but it seems to require a
> masters in computer science just to get it going, and I can't seem to
> get Mycroft working with home automation skills ... I don't think they
> exist yet. I guess it is still a bit too new for that. I get errors when
> trying to interface Mycroft with music services as well. It does pretty
> nice stuff with the weather and timers and alarms though.
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

