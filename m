Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1DA489FDA
	for <lists+blinux-list@lfdr.de>; Mon, 10 Jan 2022 20:07:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641841663;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pskK6Y8hcn07dWehvEy5yBUI5KOlcNseNYVWb+I67MU=;
	b=Upmp0lMbXIP9KaIm09qFesrh1cJZiGkS+Q4EPEafSJFVOkON2DhHvSRunaw73Xeq0N582t
	YsS0SrQQbLglifDKAc71B9FzSzRIRGUvngAB8S/yZwvPjjx30qdNw5EeUhw8bS4J4o4rlo
	8HfPJFgUzSSsxHaFs9fGSMTlwPbYXzU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-154-I-l3zWvjPM6mnq2pIFqNNw-1; Mon, 10 Jan 2022 14:07:39 -0500
X-MC-Unique: I-l3zWvjPM6mnq2pIFqNNw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AF5F285B665;
	Mon, 10 Jan 2022 19:07:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F7985D6B1;
	Mon, 10 Jan 2022 19:07:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1FEF41809CB8;
	Mon, 10 Jan 2022 19:07:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20AJ7Vmf001837 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 10 Jan 2022 14:07:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2EEA8112132D; Mon, 10 Jan 2022 19:07:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 29A681121322
	for <blinux-list@redhat.com>; Mon, 10 Jan 2022 19:07:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CC8A12A59550
	for <blinux-list@redhat.com>; Mon, 10 Jan 2022 19:07:27 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com
	[209.85.219.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-531-2ponmRHqMq2-zEModHcAOg-2; Mon, 10 Jan 2022 14:07:24 -0500
X-MC-Unique: 2ponmRHqMq2-zEModHcAOg-2
Received: by mail-yb1-f174.google.com with SMTP id d7so7793402ybo.5
	for <blinux-list@redhat.com>; Mon, 10 Jan 2022 11:07:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=yJ7mq1H+LUalQzNrhu1SmYNz4gJU9DJISapvKZKbrG8=;
	b=khq7q+77JLFJwFgIGBk0bz9xBonrP8T16gsWIbS3J5d/tL/c8ujx2drDn9c4vpEA/8
	Qu9D9248ClmoTgKu8wabhmyqBJJKT4UD3EeLtOJDdwLl4HdQBCYHd77jBVWa1WhUvysR
	CBLzDiAvk+tc28eYmb3V6kaSoah1AvhqbTB3Wh4NqFxmbhDs8kkKUEBaTkhUfVLvuPE3
	11m3FazTeHxMjLZiMcKddqKfFufgj999jXVAEl2iZwFCxShaKWFyLQwYtedrWyGxYYBA
	zRusXrB+THZP6SQ+0PpJSvjeBz+HjvG0nyz4XfjqonSGW2TE+uPTeS3zsgQcILYQmhgq
	dczg==
X-Gm-Message-State: AOAM531/87azSm8bsEk33JE/5BRwb52HuHNd74NyhHg+MF9Uz93Ssl+s
	AjK5G1GnKFcvsnJcctuRtxdomfyiWjff5ydaGYsQlNZw
X-Google-Smtp-Source: ABdhPJz0ZkvTf+H1ovlC/pwB3rOU3dk9PpqOQBccYzSsOGobaiHDBURyJHBzaKiugr6ODQ/1YMRkRWPWdEUXxTl22Zw=
X-Received: by 2002:a5b:845:: with SMTP id v5mr1495563ybq.84.1641841643948;
	Mon, 10 Jan 2022 11:07:23 -0800 (PST)
MIME-Version: 1.0
References: <324d87f3-44a0-e226-be6d-ee7a57d76755@seznam.cz>
	<CAGJxbF5orGAfvJTV9r3VKnKqoEHcMMDvkZX8Z4f_xgwY-Gte4A@mail.gmail.com>
	<85691fd7-5a56-9b95-4612-655e2a781281@seznam.cz>
In-Reply-To: <85691fd7-5a56-9b95-4612-655e2a781281@seznam.cz>
Date: Mon, 10 Jan 2022 13:07:13 -0600
Message-ID: <CAGJxbF7HR3gmiZUoKuhfTR+AqLfDNPMxdT7fc=yLEwNQQEMtkA@mail.gmail.com>
Subject: Re: Voxin in Arch
To: Linux for blind general discussion <blinux-list@redhat.com>
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

Try it and see.
Devin Prater
r.d.t.prater@gmail.com




On Mon, Jan 10, 2022 at 1:06 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Hello,
>
> and what about new Speech-dispatcher and Pipevire? Someone wrote in some
> list, Voxin doesn't work in Arch for him.
>
> Vojta.
>
> Dne 10. 01. 22 v 19:57 Linux for blind general discussion napsal(a):
> > It should work as of like a year ago when Voxin's creator made it work
> > better with distro updates, less dependent on a specific distro version
> > number.
> > Devin Prater
> > r.d.t.prater@gmail.com
> >
> >
> >
> >
> > On Mon, Jan 10, 2022 at 12:54 PM Linux for blind general discussion <
> > blinux-list@redhat.com> wrote:
> >
> >> Hello,
> >>
> >> is Voxin usable now in Arch or is needed a new version of it?
> >>
> >> Thanks a lot.
> >>
> >> Best regards
> >>
> >> Vojta.
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
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

