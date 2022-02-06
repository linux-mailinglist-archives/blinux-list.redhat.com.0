Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E004AAD91
	for <lists+blinux-list@lfdr.de>; Sun,  6 Feb 2022 03:57:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644116245;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HsEEmbpNhHV6p2/AlgEuC9z1quAGAPNHHjvv6XWxZOo=;
	b=RoDd/Dbbyk0PRP/UGKyv7koetGB3ReOLUysVwtvfbHXm1wlu1HKAtnwFXUssCGSAZjp+xs
	j7iHb/uqdSpsCGVcsYzejUN6mokGPyO+YQP612UWkQqs/1kPpo2eYuOGwxGYXtMsKLTBCE
	oENnw03NQQP2zBZTS4ozEpEt8BlgFuE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-333-rTTOaj-ZMRCPdIzYgFHGLw-1; Sat, 05 Feb 2022 21:57:23 -0500
X-MC-Unique: rTTOaj-ZMRCPdIzYgFHGLw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D41D01091DA3;
	Sun,  6 Feb 2022 02:57:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B67C556F6B;
	Sun,  6 Feb 2022 02:57:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 578AD1809CB8;
	Sun,  6 Feb 2022 02:57:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2162rLA3031461 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 5 Feb 2022 21:53:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 250ED776C; Sun,  6 Feb 2022 02:53:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2082B76CC
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 02:53:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 284E81C04B57
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 02:53:18 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-245-YnDgWc7UM3-AFAW5zj1D_g-1; Sat, 05 Feb 2022 21:53:16 -0500
X-MC-Unique: YnDgWc7UM3-AFAW5zj1D_g-1
Received: by mail-qk1-f171.google.com with SMTP id g145so8218722qke.3
	for <blinux-list@redhat.com>; Sat, 05 Feb 2022 18:53:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=XRNEiQyMEQ7p2SCKUa/nd+AjH2rrV5DbbEnRGBlICwE=;
	b=71zSkG3BcSXy4vXvYPfA1yYNFog//XVYrBtpopqZtBzCfiJ64E0rwhHVm2QQHMJy38
	HvIrBfQRygCcrRezHCi39TNFrxsQoQEBmIFeAExbta6uVYdSZueCqHaDrs2csCK4dhkf
	m/ZUJBcgjB8Iee4DSaEeFbkHesr+8V41BmUaYZVBh5ChSSJqZUooF1LYcRTLzTDu8c/5
	YYEDgMbiFLYQdWK3stKaez+8uGLWVVqJljYpmXFqGkZogM4NtKXiyUzokYZxse8c6TCE
	E1EonrV6Bj+t81SS3FPJyi0XHL+PtceWnbkSQSGOTV5JuGjAz/YeuEkVlsADt1erq5T4
	SA0A==
X-Gm-Message-State: AOAM533q8qLL/jzq9mnvID3UuoI8KFQ6VTccZ7NwA1Vs3oyNwXwZx5dn
	25szdhzNVbHyhAqzG6dLBPyzEEBVbtlqavD4tdm/O5R2
X-Google-Smtp-Source: ABdhPJxPCeAzEzx5vJLvQdw7XMB1dnfdtEIL5pRQc806F5jSldkV1ffp3xLOPSuL037yzf/oqKIVhlcWYj08EYU5tN8=
X-Received: by 2002:a05:620a:31a7:: with SMTP id
	bi39mr3301462qkb.124.1644115995850; 
	Sat, 05 Feb 2022 18:53:15 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:518d:0:0:0:0 with HTTP; Sat, 5 Feb 2022 18:53:15
	-0800 (PST)
In-Reply-To: <9806e258-e16a-8d36-6e2f-463b9b9613f6@gmail.com>
References: <9806e258-e16a-8d36-6e2f-463b9b9613f6@gmail.com>
Date: Sun, 6 Feb 2022 02:53:15 +0000
Message-ID: <CAO2sX33yfEAf+OBizwFG9iifoUNwHvUqY6EAxVsiiKAVLJCKRg@mail.gmail.com>
Subject: Re: Firefox inaccessible in Ubuntu-GNOME 22.04
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

Was Firefox installed via a Snapt package or a .deb? I haven't tried
Ubuntu in years, I remember hearing reports that snapt packages often
break accessibility for some reason.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

