Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 451373ED9BB
	for <lists+blinux-list@lfdr.de>; Mon, 16 Aug 2021 17:17:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629127034;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZPDfyVSVZ7346ApEtgZraZd/e/UPy/34OpkR3NSlY80=;
	b=ZgjzIlDEsIXtqiNYAWTa88XT/AqptQ/pdHE1aX+04YMG3ZepH4whxU2OwGZmtd4ZHXw7JT
	D/hKNndpCoHNEE2V+vgosgRrMhqSbTEugRC2CtPSKNiS15RCX/6X1jM0eKJG/gBhKgmq+Z
	5vA0Q/6Th8FnBj5fKjPQ/OKZVEgAcBg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-500-HhOaoKPUPcCUV7m75qqLjg-1; Mon, 16 Aug 2021 11:17:12 -0400
X-MC-Unique: HhOaoKPUPcCUV7m75qqLjg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BB554801B3D;
	Mon, 16 Aug 2021 15:17:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5677F19C46;
	Mon, 16 Aug 2021 15:17:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F38AE181A0F8;
	Mon, 16 Aug 2021 15:17:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17GFGKWY019786 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 16 Aug 2021 11:16:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8E95C2023A18; Mon, 16 Aug 2021 15:16:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A4E0200C0EC
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 15:16:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7ED4D18A01A9
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 15:16:17 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-215-ViXPPRQLNmaJ5QSwXYA2eg-1; Mon, 16 Aug 2021 11:16:16 -0400
X-MC-Unique: ViXPPRQLNmaJ5QSwXYA2eg-1
Received: by mail-qk1-f174.google.com with SMTP id y144so6365688qkb.6
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 08:16:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
	b=TmfPIqruSMSi0MH5eoLVE39fFg8BUbtFD78+w1QFqnVbCL7vhPRpiafFDh9pumOXxl
	x+409JiU/wm7CgqBLFbiyzbU+YPUOsI7h32Ry/SSOXXmm4mLdnJeHhJVyZBOyXfOxi5l
	o95hWbJr84PGezi8WPaOhR14hq7foIIhCZucO0J1a7KcUR8sEaWhLsnF0vwj/4RPIwvq
	niDK6yMW4Nyf9Ji4pG8Ex2jvxzvYLlhnICZrPxRAdZUak6xSXA0fDLSNczc41kNFUpY3
	AJwM0ffqw7arFWHSKPUIfAbpS/vgWrG0Sj9Lvhbu4WZmxql3NgXRRd/Cu81aYz/8HCug
	7+6A==
X-Gm-Message-State: AOAM531Yhio4mX54n7logdISwMii9kC8szfiYR5n+70sgVY8SgjAP4XV
	CFVWP/Al6HeDuS6z+0/ucnzBJ+jflDj5T+DwWffzoOFKUfU=
X-Google-Smtp-Source: ABdhPJzDzKvNd0PTRyP6L8H0QJFvMBl8WZspmaB9h7Ax2Z3XznxKzuJJRDpn1+BTxiAvRrZ3S3i6oEjA4TnGz1oAZrg=
X-Received: by 2002:a37:9b92:: with SMTP id
	d140mr15957278qke.401.1629126975449; 
	Mon, 16 Aug 2021 08:16:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:b07:0:0:0:0 with HTTP; Mon, 16 Aug 2021 08:16:15
	-0700 (PDT)
In-Reply-To: <17f6f79e-2927-3ad4-7915-42053461d773@protonmail.com>
References: <17f6f79e-2927-3ad4-7915-42053461d773@protonmail.com>
Date: Mon, 16 Aug 2021 15:16:15 +0000
Message-ID: <CAO2sX30xaswpT1vxCzem_jxckXVdRBW38NGuJMc9ODsmYMrsUw@mail.gmail.com>
Subject: Re: Anyone else experiencing Firefox 91 crashes?
To: blinux-list@redhat.com
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


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

