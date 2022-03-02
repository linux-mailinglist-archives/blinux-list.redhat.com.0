Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 588834CA8F0
	for <lists+blinux-list@lfdr.de>; Wed,  2 Mar 2022 16:20:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646234421;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qBbKPntujulIzeJHo8OUX0eEsBUIqHU0yLRFw52TeNU=;
	b=W4y6kAN9PPGJBwHAm81qaOin3wRocPpo5nfYfNzH6O+zcj3IMN8njuMZqQiO6/UYthXXID
	UirpWCwXhDJRYypjicl4xsTGyAWU9+x9qvrw/B0rQn5sGB+2pZ+dOMS4PTQeqmIZWvhaKM
	/ItE/ZS7hCcHIKj4Xlw3Hf7/AWjvyhM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-179-3iqOp15MPieZZahx_aKoEQ-1; Wed, 02 Mar 2022 10:20:15 -0500
X-MC-Unique: 3iqOp15MPieZZahx_aKoEQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 237AD185A0C0;
	Wed,  2 Mar 2022 15:20:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7DD608379C;
	Wed,  2 Mar 2022 15:20:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2DC5F1809C98;
	Wed,  2 Mar 2022 15:20:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 222FJmFO009882 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 2 Mar 2022 10:19:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9C7DCC50943; Wed,  2 Mar 2022 15:19:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 98A61C5094D
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 15:19:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7FAAE3C153AE
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 15:19:48 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-591-y0_G4TgrP5-xf-1_HAEFFw-1; Wed, 02 Mar 2022 10:19:44 -0500
X-MC-Unique: y0_G4TgrP5-xf-1_HAEFFw-1
Received: by mail-qk1-f175.google.com with SMTP id j78so1515728qke.2
	for <blinux-list@redhat.com>; Wed, 02 Mar 2022 07:19:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Z/C0r+Kv8wbui7LKc6uCcwF4Vf6Kp00nL7Zq3cp59dQ=;
	b=wBdFvY3FeUm/BiclkHG9f1Bb9+A+2paYqq+39VW8NwdkwOZoNrnxl65Y3H8ZYGqPHw
	KorSGKQ8WJlZYIPQE5S08FFEreaTb0PuocbJTs1HnfD2LPvYuPuJaqfWfY6zKcIbulDj
	Pr5eIuKNGrP+uNwcCIrxf3jZLD5nVAQMFVHhSBBWlt02lB/3pFpwfXKGFvptZVgz0SFw
	w6yNWTGDaFVUzj7D6Xr0vnHpqZFJTe2fqVlh7fh2jso4Jhq6JYbgl5t+SCkSzygQRa6q
	ZU12bR7nk5Q28rfX5wtO35ebolz4cQlH8EdC7XJQ81yHUhuUyOounWkgfn11jBUaBl2M
	U5ig==
X-Gm-Message-State: AOAM530yWx53R4iwFCEH3NtfrydzDt75YldS4g+NzqKaJzAihK/F1ze/
	Xsft3qFCIkKDhudlNoO797gpe4qFt/YYHjjl+0Cz1t+MloU=
X-Google-Smtp-Source: ABdhPJwE7LeUaBe+FGq4i6YKyinjkKTRBZndyeJJtJKbpEjJe7xdIgktrAuGt4zSTBOJ/0rAgapAtRl9k24s3irZQaU=
X-Received: by 2002:ae9:e209:0:b0:47d:ecd8:6054 with SMTP id
	c9-20020ae9e209000000b0047decd86054mr16511120qkc.192.1646234383607;
	Wed, 02 Mar 2022 07:19:43 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5f08:0:0:0:0:0 with HTTP;
	Wed, 2 Mar 2022 07:19:43 -0800 (PST)
In-Reply-To: <6eaae389-1b23-4276-5f2-91a678ef8682@panix.com>
References: <Yh9aEWNufoEE0Bvp@waffles>
	<a35cb12d-cced-b826-a18b-715945c92717@free2.ml>
	<6eaae389-1b23-4276-5f2-91a678ef8682@panix.com>
Date: Wed, 2 Mar 2022 15:19:43 +0000
Message-ID: <CAO2sX30TQo0iAOJGSZEbZAjfKxduTbteTP5mssZGcqJ3+Em9Qw@mail.gmail.com>
Subject: Re: Any progress on .pdf viewing?
To: blinux-list@redhat.com
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

As far as I know, there are no terminal pdf viewers, and last I tried,
Firefox's built-in viewer was slow as cold molasses.

I'd second the suggestion to just convert to plain text with pdftotext
even if my experience is that there's usually fancy formatting that
doesn't translate to plain text well and there often being tons of
cruft that would be useful in a physical book but just destroys
reading flow in a text file.

There's also pdftohtml, also from poppler-utils, and pdfimages, which
might be useful as a first step to extracting content from scanned
book PDFs.

Though, I'm curious what the -raw flag does in pdftotext since my
experience is based mainly on its default behavior.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

