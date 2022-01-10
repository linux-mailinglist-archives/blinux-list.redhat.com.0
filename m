Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0B0489FB8
	for <lists+blinux-list@lfdr.de>; Mon, 10 Jan 2022 19:57:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641841054;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cWM8LQf0EbHcUSV3f6vUBOOtNl3Lyv3f9XcQJTOw/Hg=;
	b=R6iLXBzhhO2RfAbb/0pSOhIVPEvzCR4RMm/kPgDJcX99IRpXoI/KHDzMz80cG5Lr4VPXcK
	5fkRQ3p7A+foyAfKj/1QzPr/sWwRL3qg/eZIQfOUocFeyWdHtyn+wMVjiMDGl//rFv9PMN
	wsmC3aFF8cJUljZ8ruDHN2Zt6+8rwec=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-205-Lehz1N1IOg-V6aX0H4PWZg-1; Mon, 10 Jan 2022 13:57:29 -0500
X-MC-Unique: Lehz1N1IOg-V6aX0H4PWZg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 98587835E20;
	Mon, 10 Jan 2022 18:57:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C8A534D5D;
	Mon, 10 Jan 2022 18:57:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 118444BB7C;
	Mon, 10 Jan 2022 18:57:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20AIvL86001144 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 10 Jan 2022 13:57:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E3F2E40CFD02; Mon, 10 Jan 2022 18:57:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE8F540CFD01
	for <blinux-list@redhat.com>; Mon, 10 Jan 2022 18:57:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B410F2A59555
	for <blinux-list@redhat.com>; Mon, 10 Jan 2022 18:57:20 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
	[209.85.219.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-456-8BncCyn2MFGaEptctAipWA-1; Mon, 10 Jan 2022 13:57:18 -0500
X-MC-Unique: 8BncCyn2MFGaEptctAipWA-1
Received: by mail-yb1-f181.google.com with SMTP id d7so7717842ybo.5
	for <blinux-list@redhat.com>; Mon, 10 Jan 2022 10:57:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=xATq458Hbw4AYnSq90d2Rho7WhtvsDwshQrcD69KqHg=;
	b=B2j8MmpJETCnxzNfUbouTS0EfsdDvpdEEp9QhZYfBUJLogayQmHu15W/cUL3uaa+A8
	XncE0jN8DpEX5n8HF4Cvfhgi3Rok21Mi3EIgwYi+LkvvjIP1fZU0Op2px97/BC3IrA8Z
	d1yi9S2NJyoTvv8MeYeJ+++qcPO8xhtXDCHeeCEZn7rBQ9vXZT+u09FRUjCoqj4jcPS4
	/B7xwsuuc9ByJnL+Q44owXRUoW7JnXs/qQ+//4kBMtKj+/hCgP1LdVLl+TwaXJzUohp2
	wq8Xzr+MKUziSlc2f4T2fFsqFEhSsNsRav3ejpVWiA6qvrF/VMBdGQXO1BEPZfhwI+mm
	0Olg==
X-Gm-Message-State: AOAM530SytnCjM2X7QZubsOv3w7NtNvJX6SlPXPxujhdijSc4HoReUTV
	Znx6pD2gKGFWFPfpu1CnMDA9EY9+4Jr+ag57VbYkc6rm
X-Google-Smtp-Source: ABdhPJy+N5DJPtUaUaHLwWPF/3hBUM2EB6oRFPQAwj9VnDOWJlEdjpaWgDfX7O5CBBMMve+dSBcJx7pOOb/aIvyDwPI=
X-Received: by 2002:a05:6902:70b:: with SMTP id
	k11mr1402059ybt.643.1641841038062; 
	Mon, 10 Jan 2022 10:57:18 -0800 (PST)
MIME-Version: 1.0
References: <324d87f3-44a0-e226-be6d-ee7a57d76755@seznam.cz>
In-Reply-To: <324d87f3-44a0-e226-be6d-ee7a57d76755@seznam.cz>
Date: Mon, 10 Jan 2022 12:57:07 -0600
Message-ID: <CAGJxbF5orGAfvJTV9r3VKnKqoEHcMMDvkZX8Z4f_xgwY-Gte4A@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

It should work as of like a year ago when Voxin's creator made it work
better with distro updates, less dependent on a specific distro version
number.
Devin Prater
r.d.t.prater@gmail.com




On Mon, Jan 10, 2022 at 12:54 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Hello,
>
> is Voxin usable now in Arch or is needed a new version of it?
>
> Thanks a lot.
>
> Best regards
>
> Vojta.
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

