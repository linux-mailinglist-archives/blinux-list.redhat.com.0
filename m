Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D97CD4BBC0B
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 16:25:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645197927;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iCpqgx6Y6hwhtQWAJ077qS9WSTE9d9ce89ZLozBvMSk=;
	b=ag6Bman87QxMNLGavl6l05nM8EW6eOp933dpVY33XoKUh423nh3HVmS4btr8J3bXHv2qfP
	XqD9UhuGs551+y2BoCjGyZMmZl02Jt9oTDwoWgR8vsnKctm2uuY9gbNKencktgo6gKNTwp
	lwTZvXsuBWggJlY6n53iZ+Pi0afeAzI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-426-6ModGO0BP1aub1p2n5bAzA-1; Fri, 18 Feb 2022 10:25:24 -0500
X-MC-Unique: 6ModGO0BP1aub1p2n5bAzA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75C8B814243;
	Fri, 18 Feb 2022 15:25:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 19DFF753D6;
	Fri, 18 Feb 2022 15:25:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A834F1832DBD;
	Fri, 18 Feb 2022 15:25:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IFKIkD015305 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 10:20:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F40CC778B; Fri, 18 Feb 2022 15:20:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF629776C
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 15:20:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B0071066558
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 15:20:12 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
	[209.85.219.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-82-PH-RHp5LOSunSW7IGJtIYQ-1; Fri, 18 Feb 2022 10:20:10 -0500
X-MC-Unique: PH-RHp5LOSunSW7IGJtIYQ-1
Received: by mail-qv1-f45.google.com with SMTP id x3so15301530qvd.8
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 07:20:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=jgOnTsCww3N9MgPhD9Hz3nuNisCkK/Gh+Wydg4tXeo0=;
	b=S+FKyMNySiIEvNDG8WgCs5pNDxbjK357UDlE1i1guXM9hWy32YSurute3YxyTB3CUQ
	NyVuLkU8+t+s9bXTHo0bu9XF5qVkJyE6JgHU8gSfHKTBw7BRIktnKqS7o5xsR75VQU/X
	CBtVY/VhzMC6rjD3lKhd7l9Cyh0/xHnJRjyUAaMORVrbfSeGy3FvonsT26AOm0epSJ8a
	8LE7iqBJhDeSedwNocb7ghN58dY5rTNMO+KIa7jqw5OgQEzNdpgzzGdbyKTRu5O78wAV
	kS+R8Re0xdHzqn2jVUhnLExV1OD8/dtk60osqNr+BQs7QSlUVBFrEgcTzEsJKlRiXtXU
	eJow==
X-Gm-Message-State: AOAM533Yhl8HbkliUkskwPc1WwLWU5zeBQf4qLCk4dEMn1AYIczG+5Dx
	ZPJbTlBElLmC/Pf0HOgHUUDL6r+vRNx5dK8Kkr30q8VCklk=
X-Google-Smtp-Source: ABdhPJxzCh+j+sSeix2NmjBNDaGyZDb7F9OQnl4wwV6/Scsf2Xp1i/yj8CWIiZwO66wZTmC73MgR7qzgp+ElnY0Wsfw=
X-Received: by 2002:a05:622a:1186:b0:2d0:5c73:3518 with SMTP id
	m6-20020a05622a118600b002d05c733518mr7035910qtk.367.1645197610074;
	Fri, 18 Feb 2022 07:20:10 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:d06:0:0:0:0 with HTTP; Fri, 18 Feb 2022 07:20:09
	-0800 (PST)
In-Reply-To: <138b6fd3-6277-11e-1b9b-70ff1e6f37eb@panix.com>
References: <a8d11184-d0f8-b1fa-91b8-1f30a5945e22@panix.com>
	<9aff1288-b3de-f927-a3c1-ac1f9a18fa46@slint.fr>
	<138b6fd3-6277-11e-1b9b-70ff1e6f37eb@panix.com>
Date: Fri, 18 Feb 2022 15:20:09 +0000
Message-ID: <CAO2sX32GzSy1Fq0gb2B+4b7-GABdM8UHbN95YWsPqBURLYxmeQ@mail.gmail.com>
Subject: Re: debuan getting web suppression
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Honestly, I had to read  Didier's post character-by-character to
figure out the typo being corrected... I know Devuan is just Debian
without systemd set as default init system, and some would argue that
isn't enough to justify it having its own name, but Devuan is arguably
too similar to Debian to stick out as a distincct proper noun... and
it doesn't help that b and v are so similar phonetically.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

