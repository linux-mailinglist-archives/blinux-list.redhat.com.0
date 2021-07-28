Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 176153D8823
	for <lists+blinux-list@lfdr.de>; Wed, 28 Jul 2021 08:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627454789;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LOvSNKF1CW8G0KIihgq8lh01tEK0sdhnOS7VCd139F8=;
	b=c5pT/9SYTEv7wGhOn21TAw9LqmZNaJz20iwIl/GczOE0bT2hMjw5SA4KhR5aWq1rnOiRwg
	+aD2rEwnau5Ql847a5lktFstoeMbo7/mfnisuf5y/sFq8HdQQXHuFWpy9+MhDkHGRyVAfU
	2ebEsM2PIK5X4ssVyE9LXYf9UA+NQSI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-549-SboNjylkNVeHrW8P8LbfJQ-1; Wed, 28 Jul 2021 02:46:27 -0400
X-MC-Unique: SboNjylkNVeHrW8P8LbfJQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 80FEB100E427;
	Wed, 28 Jul 2021 06:46:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF6435C1B4;
	Wed, 28 Jul 2021 06:46:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 37CFE180BAB2;
	Wed, 28 Jul 2021 06:46:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16S6k19G002852 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 28 Jul 2021 02:46:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 48E57112D414; Wed, 28 Jul 2021 06:46:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 43CD5112D412
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 06:45:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51ADB800883
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 06:45:58 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-578-yPkNS68fPyWzrK__PIM24g-1; Wed, 28 Jul 2021 02:45:55 -0400
X-MC-Unique: yPkNS68fPyWzrK__PIM24g-1
Received: by mail-qk1-f172.google.com with SMTP id f22so1244326qke.10
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 23:45:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=eqj4YlNydfCcgjX3O+Tsvg0tHaeHhzBhwmiZfeb6Z+k=;
	b=Cx0KArDLKvxBUrjHwQ4VGr2LMpY0CRNQ2XpFIrz34m+nb6jjgA/DA2+tE01Kku4Asu
	OXwSNQmpMNwAvSwpCTcrKK480NtDzeygtdobcFSBbdVSmXYVgmXePdrFIWwlf00i5lIW
	ach+vAnoF40uNOzLw706VoPbsq0pWrY9/pwytaLkB9/K5oLxwErTPBxZlsXvhWLxb0oR
	hdzI4yqlA/LHg9WalUSKq8kBHMh5F1vWc/8ZyTsn/mUp8X+TnZP/jiQ9s3+HlvP6TB8w
	Bm14JMP1s7y2XAdRghKm68Uov30821YTtuy7XWABoV+VU71PQeixuudfjW1NU7P08lbz
	ez2A==
X-Gm-Message-State: AOAM530oK3qj3WV4NxX565KVv0x+Uyo/75CzqY2n3qkc5JMO9H24pvwY
	ZErALKiDLEC+suO8QgAdeXB35KltMtIJT7NxlPNTpLL8Oak=
X-Google-Smtp-Source: ABdhPJwdfSCgAEjzpQ23a9YQPZ3pB4SgczKUK/jU9Axbz9gc2RZMyKzEKjy+i38QQ7j5kvV2ob1tMNrY+Fjm/gsWSEo=
X-Received: by 2002:a05:620a:2408:: with SMTP id
	d8mr18110672qkn.233.1627454754745; 
	Tue, 27 Jul 2021 23:45:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_4ddR69ScTQ-vSeHDKi+zsFsMgU7WuV37otQQcw1ObGC9wNg@mail.gmail.com>
	<0B5B1D7B-CDA1-4A04-9BC9-0AEF80D6EA74@linux-a11y.org>
	<CAD_4ddS20gMoDDxspfdKDxrm=U7qxFNd+yWL=3gT3gk4cd+YmQ@mail.gmail.com>
	<3ed10e36-6401-85c2-9da2-018dbe581195@gmail.com>
In-Reply-To: <3ed10e36-6401-85c2-9da2-018dbe581195@gmail.com>
Date: Wed, 28 Jul 2021 02:45:27 -0400
Message-ID: <CAD_4ddTjvr0v4FaHyGR533wYRfEYNxb+QfAg4Y0PSmOhKQX=uQ@mail.gmail.com>
Subject: Re: A question about adding keyboard shortcuts in mate
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello there Kyle and all,

That's exactly what I was looking for! I'll do this as soon as I have some
time on my hands.
Thanks again.
Best regards.
Francisco.

On Tue, Jul 27, 2021 at 8:05 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> There is no need to browse applications when adding a keyboard shortcut
> in MATE. Just fill in the name and the command as you have done for
> ocrdesktop, then click the Apply button. Your custom shortcut then shows
> up at the bottom under a grouping called custom, where you can bind the
> key just as you would for any of the previously existing shortcuts. You
> can add as many ocrdesktop or any other commands as you like in this
> way, then you bind them to their keys all at once from the bottom of the
> list of shortcuts. Note that this method does not allow piping or any
> form of complex scripting, but for just running ocrdesktop with various
> flags as you're trying to do, it's perfect. Hope this helps.
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

